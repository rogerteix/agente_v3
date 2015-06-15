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
  Vcl.StdCtrls, StrUtils, VAXSIPUSERAGENTOCXLib_TLB, Rtti, DateUtils, ZDataSet,
  untLibrary, untPrincipal, untdm, Vcl.ExtCtrls, Vcl.Graphics, Vcl.Controls;
Var
  vLogCallStep: array of string;

// Declara��es
  // Le o arquivo ini
  function FncLeINI(Path:String;ChavePrincipal:String;ChaveSecundaria:String; Const Default:String=''):String;
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
  //Executa comando MSDOS
  procedure OpenSQL(Comando : String);



{Agente.dll }
  procedure GetIPInfo(Stream :TMemoryStream); stdcall; external 'Agente.dll';
  procedure GetAdaptadorInfo(AdapterName : WideString; Var AdapterType, Description, Physicaladdress, Gateway, DHCP, DHCPServer,
                           SecondaryWINS, PrimaryWINS : WideString; Var Device : Array of  TDevice); stdcall; external 'Agente.dll';

  function ConvertCharToFE(sTexto: String): String;

  procedure LogCallStep(tipo: String; arg: String);
  procedure GerarLogTmReconnect(Texto: String; SubItem: Boolean = False);

  // Data de cria��o de um arquivo
  function GetFileDate(Arquivo: String): String;

  function TxtPadraoLog(Const sTipo : String='') : String;

  procedure MSGAguarde(strTexto: String = ''; boolAguarde: Boolean = False);

  function dbDate : TDateTime;

implementation

function FncLeINI(Path:String;ChavePrincipal:String;ChaveSecundaria:String; Const Default:String=''):String;
var
   IniFile : TIniFile;
begin
  IniFile := TIniFile.Create(Path);
  Result :=  IniFile.ReadString(ChavePrincipal,ChaveSecundaria,'');

  if Length(Trim(Result)) <= 0 then
    Result := Default;
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
  if Not Assigned(Configuracao)    then Configuracao    := TConfiguracoes.Create;;
  if Not Assigned(Agente)          then Agente          := TAgente.Create();
end;

procedure PrcDestructorLibClass();
begin
  if Assigned(Configuracao)    then FreeAndNil(Configuracao);
  if Assigned(Agente)          then FreeAndNil(Agente);
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

//          LogCallStep('log_func_act', UpperCase(Prop.Name)+': '+Comando);
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

//procedure LogCallStep(tipo: String; arg: String);
//var
//  tf_Arquivo: TextFile;
//  sLogText: String;
//  sNomeArquivo: String;
//  ano,mes,dia,hora,minuto,segundo,mili: word;
//
//  {Sub}procedure PrcCriaArquivoLogStep;
//  begin
//    sLogText := TxtPadraoLog()+ tipo;
//    if Trim(arg) <> '' then
//      sLogText := sLogText + ' (' + arg + ')';
//
//    try
//      if not DirectoryExists(vLogCallStep[2]) then
//      begin
//        ForceDirectories(vLogCallStep[2]);
//      end;
//
//      sNomeArquivo := StringReplace(vLogCallStep[3],'${DATA}', IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano), [rfReplaceAll, rfIgnoreCase]);
//      AssignFile(tf_Arquivo, vLogCallStep[2] + '\' + sNomeArquivo);
//
//      if FileExists(vLogCallStep[2] + '\' + sNomeArquivo) then
//        Append(tf_Arquivo)
//      else
//        Rewrite(tf_Arquivo);
//
//      Writeln(tf_Arquivo, sLogText);
//    finally
//      CloseFile(tf_Arquivo);
//    end;
//
//  end;
//
//begin
//
//  if vLogCallStep[0] = 'True' then
//  begin
//    if((tipo = 'log_login_act'   ) and (vLogCallStep[4]  = 'True')) or
//      ((tipo = 'log_logout_act'  ) and (vLogCallStep[5]  = 'True')) or
//      ((tipo = 'log_pause_act'   ) and (vLogCallStep[6]  = 'True')) or
//      ((tipo = 'log_unpause_act' ) and (vLogCallStep[7]  = 'True')) or
//      ((tipo = 'log_answer_act'  ) and (vLogCallStep[8]  = 'True')) or
//      ((tipo = 'log_hangup_act'  ) and (vLogCallStep[9]  = 'True')) or
//      ((tipo = 'log_dnd_on_act'  ) and (vLogCallStep[10] = 'True')) or
//      ((tipo = 'log_dnd_off_act' ) and (vLogCallStep[11] = 'True')) or
//      ((tipo = 'log_registro_act') and (vLogCallStep[12] = 'True')) or
//      ((tipo = 'log_xfer_act'    ) and (vLogCallStep[13] = 'True')) or
//      ((tipo = 'log_sip_err'     ) and (vLogCallStep[14] = 'True')) or
//      ((tipo = 'log_sobre_act'   ) and (vLogCallStep[15] = 'True')) or
//      ((tipo = 'log_func_act'    ) and (vLogCallStep[16] = 'True')) then
//      PrcCriaArquivoLogStep;
//  end;
//
//end;

procedure LogCallStep(tipo: String; arg: String);
var
  tf_Arquivo: TextFile;
  sLogText: String;
  sNomeArquivo: String;
  ano,mes,dia,hora,minuto,segundo,mili: word;
begin
  if vLogCallStep[0] = 'True' then
  begin
    if((tipo = 'log_login_act'   ) and (vLogCallStep[4]  = 'True')) or
      ((tipo = 'log_logout_act'  ) and (vLogCallStep[5]  = 'True')) or
      ((tipo = 'log_pause_act'   ) and (vLogCallStep[6]  = 'True')) or
      ((tipo = 'log_unpause_act' ) and (vLogCallStep[7]  = 'True')) or
      ((tipo = 'log_answer_act'  ) and (vLogCallStep[8]  = 'True')) or
      ((tipo = 'log_hangup_act'  ) and (vLogCallStep[9]  = 'True')) or
      ((tipo = 'log_dnd_on_act'  ) and (vLogCallStep[10] = 'True')) or
      ((tipo = 'log_dnd_off_act' ) and (vLogCallStep[11] = 'True')) or
      ((tipo = 'log_registro_act') and (vLogCallStep[12] = 'True')) or
      ((tipo = 'log_xfer_act'    ) and (vLogCallStep[13] = 'True')) or
      ((tipo = 'log_sip_err'     ) and (vLogCallStep[14] = 'True')) or
      ((tipo = 'log_sobre_act'   ) and (vLogCallStep[15] = 'True')) or
      ((tipo = 'log_func_act'    ) and (vLogCallStep[16] = 'True')) then
    begin
      decodedate(now,ano,mes,dia);
      decodetime(now,hora,minuto,segundo,mili);

      sLogText := IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano) + ' ';
      sLogText := sLogText + IntToStr(hora) + ':' + IntToStr(minuto) + ':' + IntToStr(segundo) + ' - ';
      sLogText := sLogText + TMyInfoLogin.sIDOperacao + ' >> ';
      sLogText := sLogText + tipo;
      if Trim(arg) <> '' then
        sLogText := sLogText + ' (' + arg + ')';

      try
        if not DirectoryExists(vLogCallStep[2]) then
        begin
          ForceDirectories(vLogCallStep[2]);
        end;
        sNomeArquivo := StringReplace(vLogCallStep[3],'${DATA}', IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano), [rfReplaceAll, rfIgnoreCase]);
        AssignFile(tf_Arquivo, vLogCallStep[2] + '\' + sNomeArquivo);

        if FileExists(vLogCallStep[2] + '\' + sNomeArquivo) then
          Append(tf_Arquivo)
        else
          Rewrite(tf_Arquivo);

        Writeln(tf_Arquivo, sLogText);
      finally
        CloseFile(tf_Arquivo);
      end;
    end;
  end;
end;


function ConvertCharToFE(sTexto: String): String;
var
  nFor: Integer;
  sNewText: String;
begin
  sNewText := sTexto;
  for nFor := 1 to MAX_CONVERT_CHARS do
    sNewText := StringReplace(sNewText, ConvertCharItems[nFor].DB, ConvertCharItems[nFor].FE, [rfReplaceAll]);
  Result := sNewText;
end;

procedure GerarLogTmReconnect(Texto: String; SubItem: Boolean = False);
Var Arq        : TextFile;
    Log_Dir    : String;
    LogName    : String;
    LogNameold : String;

  {Sub}Procedure ExcluiLogsAntigos;
  var
    SearchRec : TSearchRec;
    Data: string;
  begin
    try

      FindFirst(Log_Dir+'_SQL_Ping_*.log', faAnyFile, SearchRec);

      repeat
        if SearchRec.name <> '' then
          Data := GetFileDate(Log_Dir + SearchRec.name);
        if Data <> '' then
          if StrToDate(Data) <= StrToDate(DateToStr(Now - 10)) then
            SysUtils.DeleteFile(PWideChar(Log_Dir + SearchRec.name));
      until FindNext(SearchRec) <> 0;
    finally
      SysUtils.FindClose(SearchRec);
    end;
  end;

begin
  Try

    Log_Dir := IncludeTrailingBackslash(ExtractFilePath(Application.ExeName) + 'log');

    if not(DirectoryExists(Log_Dir)) then
      ForceDirectories(Log_Dir);

    LogName    := '_SQL_Ping_'+ FormatDateTime('yyyy_MM_dd',now)+'.log';
    LogNameold := '_SQL_Ping_'+ FormatDateTime('yyyy_MM_dd',now-10)+'.log';

    try
      // 1� Tentativa de excluir log�s antigos
      if FileExists(Log_Dir + LogNameold) then
        DeleteFile(Pchar(Log_Dir + LogNameold));

      // 2� Tentativa for�a a exclus�o delog�s antigos
      ExcluiLogsAntigos;
    except end;

//   Abre Arquivo
    AssignFile(Arq,Log_Dir+LogName);

    if not(FileExists(Log_Dir+LogName)) then
      ReWrite(Arq)
    else
      Append(Arq);

//   Grava Texto
    WriteLn(Arq, TxtPadraoLog+Texto);

//   Fecha Arquivo
    Flush(Arq);
    CloseFile(Arq);
  Except End;
end;

function GetFileDate(Arquivo: String): String;
var FHandle: integer;
begin
  FHandle := FileOpen(Arquivo, 0);
  try
    Result := DateToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;

function TxtPadraoLog(Const sTipo : String='') : String;
Var
  sTxtPadrao               : String;
  sDay ,sMonth ,sYear      : String;
  sHour ,sSec ,sMin ,sMili : String;
  DtAt                     : TDateTime;
  wYear,wMonth,wDay        : Word;
  wHour,wMin,wSec,wMili    : Word;
begin

//  decodedate(now,ano,mes,dia);
//  decodetime(now,hora,minuto,segundo,mili);

{  DtAt      := Now;
  sDay      := FloatToStr(DayOF(DtAt));
  sMonTh    := FloatToStr(MonthOF(DtAt));
  sYear     := FloatToStr(YearOF(DtAt));
  sHour     := FloatToStr(HourOF(DtAt));
  sMin      := FloatToStr(MinuteOF(DtAt));
  sSec      := FloatToStr(SecondOf(DtAt));}

  decodedate(now, wYear, wMonTh , wDay);
  decodetime(now, wHour, wMin, wSec, wMili);

  sDay      := FloatToStr(wDay);
  sMonTh    := FloatToStr(wMonTh);
  sYear     := FloatToStr(wYear);
  sHour     := FloatToStr(wHour);
  sMin      := FloatToStr(wMin);
  sSec      := FloatToStr(wSec);

  sTxtPadrao := '';
  sTxtPadrao := sDay+'-'+sMonth+'-'+sYear+' ';
  sTxtPadrao := sTxtPadrao + sHour + ':' + sMin + ':' + sSec + ' - ';
  sTxtPadrao := sTxtPadrao + IfThen(Length(Trim(sTipo)) > 0, sTipo, TMyInfoLogin.sIDOperacao) + ' >> ';
  Result := sTxtPadrao;
end;


procedure MSGAguarde(strTexto: String = ''; boolAguarde: Boolean = False);
var
  formAguarde  : TForm;
  bevelAguarde : TBevel;
  lblTexto     : TLabel;
  mmMemo       : TMemo;
  formMSG      : TForm;
begin
  formAguarde := TForm.Create(nil);
  formMSG     := formAguarde;

  with formMSG do
  begin
    Width       := 220;
    Height      := 50;
    BorderStyle := bsNone;
    Color       := clGradientInactiveCaption;
    Position    := poDesktopCenter;

    bevelAguarde := TBevel.Create(nil);
    with bevelAguarde do
    begin
      Parent := formAguarde;
      Align  := alClient;
      Shape  := bsFrame;
    end;
    if strTexto = '' then
    begin
      lblTexto := TLabel.Create(nil);
      with lblTexto do
      begin
        Caption    := 'Aguarde';
        Font.Size  := 16;
        Top        := 8;
        Left       := 70;
        Font.Style := [fsBold];
        Font.Name  := 'Segoe UI';
        Font.Color := clMaroon;
        Parent     := formAguarde;
      end;
    end else
    begin
      mmMemo := TMemo.Create(nil);
      with mmMemo do
      begin
        Text        := strTexto;
        Align       := alClient;
        Alignment   := taCenter;
        BorderStyle := bsNone;
        Color       := clGradientInactiveCaption;
        Font.Size   := 8;
        Font.Name   := 'Verdana';
        Parent      := formAguarde;
      end;
    end;

    Show;
    Repaint;

    if boolAguarde then
      Sleep(10000);

  end;

end;

function dbDate : TDateTime;
  Var Zquery : TZQuery;
begin
  Zquery := TZQuery.Create(Nil);
  Try
    Zquery.Connection := datam.con_connect;
    Zquery.SQL.Add('SELECT CURDATE() AS DTBD');
    Zquery.Open;
    Result := Zquery.Fields[0].AsDateTime;
    Zquery.Close;
  Finally
    FreeAndNil(ZQuery);
  End;


  ///
end;

procedure OpenSQL(Comando : String);
begin
  with datam.QryOpen do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    Open;
  end;
end;


{procedure Button3Click(Sender: TObject);
 var
  f: TForm;
begin
  f := Dialogs.CreateMessageDialog('Nova Mensagem               ', dialogs.mtInformation, dialogs.mbYesNoCancel);

  f.Color := clred;
  f.Font.Name := 'verdana';
  f.Font.Style := [fsBold,fsItalic];
  f.Font.Size:=8;
  f.Font.Color := clYellow;
  if f.ShowModal = mryes then

    close
  else

     Button3.Enabled:=false;
end;}




end.
