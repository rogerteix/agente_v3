unit untFuncoes;
{
############################################################################
# Inclus�o ...... :
#  Autor   : Rog�rio Teixeira
#  Data    : 24.03.2015
#  Motivo  : Library dos Metodos Publicos (Globais)
############################################################################
# Manuten��o ...... :
#  Usuario :
#  Data    :
#  Motivo  :
#  Ref.    :
############################################################################
}
interface
Uses
  Registry, IniFiles, SysUtils, Messages, Dialogs, Winapi.Windows, Classes, Forms,
  mmsystem, NB30, iphlpapi, IpTypes, Winsock, Winapi.DirectShow9, Winapi.ActiveX,
  Vcl.StdCtrls, StrUtils, VAXSIPUSERAGENTOCXLib_TLB, Rtti,

  untLibrary, untPrincipal;

// Declara��es
  // Le o arquivo ini
  function FncLeINI(Path:String;ChavePrincipal:String;ChaveSecundaria:String):String;
  // Grava no arquivo ini
  procedure PrcGravaIni(Path:String;ChavePrincipal:String;ChaveSecundaria:String;Valor:String);
  // Executa e Retorna as mensagens do Prompt de comando do MSDOS
  function FncComandoMSDOS(Comando, DiretorioTrabalho: string): string;
  // Cria as Classes (Library�s do sistema)
  procedure PrcGenerateLibClass();
  // Destroi as Classes (Library�s do sistema)
  procedure PrcDestructorLibClass();
  //1. Modo de busca pelo nome do Sistema Operacional
  function GetSOComputer01: string;
  //2. Modo de busca pelo nome do Sistema Operacional
  function GetSOComputer02: string;
  //Retorna Lista de audio (Dispositivos de Saida)
  procedure PrcRetornaAudioIN(Const Lst : TStrings);
  //Retorna Lista de audio (Dispositivos de Entrada)
  procedure PrcRetornaAudioOUT(Var Lst : TStringList);
  //Verifica se � Windows 64 ou 32 Bits
  function IsWindows64: Boolean;
  //Executa comando MSDOS
  procedure ExecComandoMSDOS;

{Agente.dll }
  procedure GetIPInfo(Stream :TMemoryStream); stdcall; external 'Agente.dll';
  procedure GetAdaptadorInfo(AdapterName : WideString; Var AdapterType, Description, Physicaladdress, Gateway, DHCP, DHCPServer,
                           SecondaryWINS, PrimaryWINS : WideString; Var Device : Array of  TDevice); stdcall; external 'Agente.dll';

implementation

function FncLeINI(Path:String;ChavePrincipal:String;ChaveSecundaria:String):String;
var
   IniFile : TIniFile;
begin
  IniFile := TIniFile.Create(Path);
  Result :=  IniFile.ReadString(ChavePrincipal,ChaveSecundaria,'');
end;


procedure PrcGravaIni(Path:String;ChavePrincipal:String;ChaveSecundaria:String;Valor:String);
var
  Arq_Ini : TiniFile;
begin
  try
    if FileExists(Path) then
    Begin
      Arq_Ini := TIniFile.Create(Path);
      Arq_Ini.WriteString(ChavePrincipal,ChaveSecundaria,Valor);
      Arq_Ini.Free;
    End;
  Except On E: Exception Do
    Begin
      Try Arq_Ini.Free; Except End;
      MessageDlg('03 ERRO: '+QuotedStr(E.Message),mtError,[mbOk],0);
    End;
  End;
end;

function FncComandoMSDOS(Comando, DiretorioTrabalho: string): string;
var
  saSegunranca: TSecurityAttributes;
  siInformacoesInicializacao: TStartupInfo;
  piInformacaoDoProcesso: TProcessInformation;
  hLeitura, hEscrita: THandle;
  bOk, bHandle: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesLidos: Cardinal;
  Diretorio: string;
begin
  Result := '';
  with saSegunranca do
  begin
    nLength := SizeOf(saSegunranca);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(hLeitura, hEscrita, @saSegunranca, 0);
  try
    with siInformacoesInicializacao do
    begin
      FillChar(siInformacoesInicializacao, SizeOf(siInformacoesInicializacao), 0);
      cb := SizeOf(siInformacoesInicializacao);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_Hide;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE);
      hStdOutput := hEscrita;
      hStdError := hEscrita;
    end;
    Diretorio := DiretorioTrabalho;
    bHandle := CreateProcess(nil, PChar('cmd.exe /c ' + Comando), nil, nil, True, 0, nil,
    PChar(Diretorio), siInformacoesInicializacao, piInformacaoDoProcesso);
    CloseHandle(hEscrita);
    if bHandle then
    begin
      try
        repeat
          bOk := ReadFile(hLeitura, Buffer, 255, BytesLidos, nil);

          if BytesLidos > 0 then
          begin
            Buffer[BytesLidos] := #0;
            OemToAnsi(Buffer, Buffer);
            Result :=  Result + Buffer;
          end;
        until not bOk or (BytesLidos = 0);
        WaitForSingleObject(piInformacaoDoProcesso.hProcess, INFINITE);
      finally
        CloseHandle(piInformacaoDoProcesso.hThread);
        CloseHandle(piInformacaoDoProcesso.hProcess);
      end;
    end;
  finally
    CloseHandle(hLeitura);
  end;
end;

procedure PrcGenerateLibClass();
begin
  if Not Assigned(Configuracao) then Configuracao :=TConfiguracoes.Create;;
  if Not Assigned(Agente) then Agente :=TAgente.Create;
end;

procedure PrcDestructorLibClass();
begin
  if Assigned(Configuracao) then FreeAndNil(Configuracao);
  if Assigned(Agente) then FreeAndNil(Agente);
end;

function GetSOComputer01: string;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion', False) then
    begin
      Result := Reg.ReadString('ProductName');
      Reg.CloseKey;
    end;
  if Length(Trim(Result)) > 0 then
    Result := IfThen(IsWindows64, Result+' 64Bits', Result+' 32Bits');

  finally
    Reg.Free;
  end;
end;

// Fun��o Sistema Operacional
function GetSOComputer02: string;
var
  VersionInfo: TOSVersionInfo;
begin
  VersionInfo.dwOSVersionInfoSize:=SizeOf(VersionInfo);
  GetVersionEx(VersionInfo);
  Result:='';
  with VersionInfo do
  begin
    case dwPlatformId of
      1:  case dwMinorVersion of
            00: Result:='Microsoft Windows 95';
            10: Result:='Microsoft Windows 98';
            90: Result:='Microsoft Windows Me';
          end;
      2:  case dwMajorVersion of
          5: case dwMinorVersion of
               00: Result := 'Microsoft Windows 2000';
               01: Result := 'Microsoft Windows XP';
               02: Result := 'Microsoft Windows Server 2003';
             end;
          6: case dwMinorVersion of
               00: Result := 'Microsoft Windows Vista';
               01: Result := 'Microsoft Windows 7';
               02: Result := 'Microsoft Windows 8';
             end;
      end;
    end;
  end;
  if (Result='') then
    Result:='Sistema operacional desconhecido.ID: '+IntToStr(VersionInfo.dwPlatformId)+' Vers�o: '+IntToStr(VersionInfo.dwMinorVersion)
  else
    Result := IfThen(IsWindows64, Result+' 64Bits', Result+' 32Bits');
end;


procedure PrcRetornaAudioIN(Const Lst : TStrings);
var
  nDeviceIndex : Integer;
  sDeviceName : String;
  Total : Integer;
begin

  Lst.Clear;

  Total := frmPrincipal.vax.GetAudioInDevTotal;
  for nDeviceIndex := 0 to Total - 1 do
  begin
//    nDeviceId   := frmPrincipal.vax.GetAudioInDevId(nDeviceIndex);
    Try sDeviceName := frmPrincipal.vax.GetAudioInDevName(nDeviceIndex); Except End;
    Lst.Add(sDeviceName);
  end;

end;


procedure PrcRetornaAudioOUT(Var Lst : TStringList);
var
  nDeviceIndex : Integer;
  sDeviceName  : WideString;
  Total        : Integer;
begin
  Lst.Clear;

  Total := frmPrincipal.vax.GetAudioOutDevTotal();
  for nDeviceIndex := 0 to Total - 1 do
  begin
//    nDeviceId   := frmPrincipal.vax.GetAudioOutDevId(nDeviceIndex);
    Try sDeviceName := frmPrincipal.vax.GetAudioOutDevName(nDeviceIndex); Except End;
    Lst.Add(sDeviceName);
  end;
end;

function IsWindows64: Boolean;
type
  TIsWow64Process = function(AHandle:THandle; var AIsWow64: BOOL): BOOL; stdcall;
var
  vKernel32Handle: DWORD;
  vIsWow64Process: TIsWow64Process;
  vIsWow64       : BOOL;
begin
  // 1) assume that we are not running under Windows 64 bit
  Result := False;

  // 2) Load kernel32.dll library
  vKernel32Handle := LoadLibrary('kernel32.dll');
  if (vKernel32Handle = 0) then Exit; // Loading kernel32.dll was failed, just return

  try

    // 3) Load windows api IsWow64Process
    @vIsWow64Process := GetProcAddress(vKernel32Handle, 'IsWow64Process');
    if not Assigned(vIsWow64Process) then Exit; // Loading IsWow64Process was failed, just return

    // 4) Execute IsWow64Process against our own process
    vIsWow64 := False;
    if (vIsWow64Process(GetCurrentProcess, vIsWow64)) then
      Result := vIsWow64;   // use the returned value

  finally
    FreeLibrary(vKernel32Handle);  // unload the library
  end;
end;
// Fim da Fun��o SO

procedure ExecComandoMSDOS;
var
  StrCMD       : String;
  TypObj       : TRttiType;
  Prop         : TRttiProperty;
  ctxRtti      : TRttiContext;
  Comando      : String;
  Path         : String;
  Msg          : String;
begin
  Try Application.ProcessMessages; Except End;

  try
    // Manipulando as property�s das classe Configuracao
    ctxRtti := TRttiContext.Create;
    TypObj  := ctxRtti.GetType(TObject(Configuracao).ClassInfo);

    // PRIMEIRO PELO COMANDO DOS
    for Prop in TypObj.GetProperties do
    begin
      // Somente executa os comandos CMD0*
      if pos('CMD0',UpperCase(Prop.Name)) > 0 then
      begin
        // Verificar se tem algum comando no ini
        if Length(Trim(Prop.GetValue(Configuracao).AsString)) > 0 Then
        begin
          // enviando e Retornando as mensagens do comando MSDOS
          Comando := Prop.GetValue(Configuracao).AsString;
          if pos('.\',UpperCase(Comando)) > 0 then
          begin
            Comando := StringReplace(Comando, '.\', '', []);
            Path := ExtractFilePath(Application.ExeName);
            Comando := IncludeTrailingBackslash(Path)+Comando;
          end;

          StrCMD := FncComandoMSDOS(Comando, 'c:\');
          // se houve retorno mostra
          if Length(Trim(StrCMD)) > 0 then
            MessageDlg('Comando: '+UpperCase(Prop.Name)+#13+StrCMD, mtInformation, [mbOk],0);
        end;
      end;
    end;

  except
    on E : Exception do
      ShowMessage(E.ClassName+' Erro ao atribuir os comandos : '+E.Message);
  end;

end;



end.
