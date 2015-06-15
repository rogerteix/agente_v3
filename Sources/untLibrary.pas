unit untLibrary;
{
############################################################################
# Inclus�o ...... :
#  Autor   : Rog�rio Teixeira
#  Data    : 24.03.2015
#  Motivo  : Gera��o de Library (Class, Records)
############################################################################
# Manuten��o ...... :
#  Usuario :
#  Data    :
#  Motivo  :
#  Ref.    :
############################################################################
}
interface
  uses SysUtils, Forms, Windows, Classes, iphlpapi, IpTypes, Winsock, sPageControl, ZDataset,
       IdComponent, IdIPWatch, mmsystem, StrUtils, Menus, sComboBox, Vcl.ActnList, Dialogs,
       Data.DB, Math, Vcl.Graphics, Winapi.Messages, Vcl.ExtCtrls, DateUtils;

Type

// Record�s
  TMachineInfo = record
    sIP_Address: String;
    sMac_Address: String;
    sComputer_Name: array[0..255] of char;
  end;
  TConfigInfo = record
    sDatabaseIP  : String;
    sDatabaseName: String;
    sDatabaseUser: String;
    sDatabasePass: String;
    nDatabasePort: Integer;
  end;
  TAppStatus = record
    bPodeFechar: Boolean;
    bLogado: Boolean;
    bAtendido: Boolean;
    bSainte: Boolean;
    sTipoChamada: String;
    sTipoEvento: String;
    sNumero: String;

    dtvInicioChamada: TDateTime;
    dtvFimChamada: TDateTime;
    dtvInicioPausa: TDateTime;

    tTempoHoldTotal: TTime;
    tTempoHoldIni: TTime;
    tTempoHoldFim: TTime;

    sSipDialID: String;
    sSipDialStatus: String;
    sTipoDesconexao: String;

    nCallQuality: Integer;
  end;
  TInfoLogin = record
    sLoginUser                : String;
    sLoginSenha               : String;
    sNome                     : String;
    sUsuario                  : String;
    sEMail                    : String;
    sRamal                    : String;
    sIDUsuario                : String;
    sSenha                    : String;
    sIPPABX                   : String;
    sIDOperacao               : String;
    sIDEmpresa                : String;
    bConferencia              : Boolean;
    sIDSupervisor             : String;
    nTipo                     : Integer;
    sQualidadePLogin          : String;
    sPerfil                   : String;
    bRotaInteligente          : Boolean;
    nIdRotaInteligente        : Integer;
    nChatSalasQtd             : Integer;
    //Utilizado no integrador
    sCodigoExterno            : String;
    //Recupera dialpad
    bDialPad                  : Boolean;
    bFone_registro_act        : Boolean;
    sSec_fone_registro_tmp    : String;
    iEasy_work_equipe_conf_id : Integer;
    //Data/Hora BD
    sDataLogin                : String;
    sHoraLogin                : String;
    //Qualidade da Chamada
    bQualidadeChamada         : Boolean;
    tHr_Entrada               : TTime;
    tHr_Saida                 : TTime;
  end;
  TVaxIncomingCallParams = record
    bAutoAnswer: Boolean;
    bIncomingCall: Boolean;
    CallId: WideString;
    DisplayName: WideString;
    UserName: WideString;
    FromURI: WideString;
    ToURI: WideString;

    sProtocolo: String;
    sTipoOperacao: String;
    sTipoLigacao: String;
    sUniqueID: String;
    sFila: String;
    sFilaDSC: String;
    sCodTipo: String;
    sNomeLoja: String;
    sCampo: array[1..10] of String;

    //Audio parameters
    bSetAudioFromDB: Boolean;
    SetSpkVolume: Integer;
    SetMicVolume: Integer;

    //AudioRing Info
    sRingFile: String;
    nTotalDevices: Integer;
    nCurrentDevice: Integer;

    //Record
    bRecord: Boolean;
  end;
  TPausa = record
    bPausado       : Boolean;
    bDiscouPausa   : Boolean;
    bAtivoPausa    : Boolean;
    bTrocandoPausa : Boolean;
    bTravaRestricao: Boolean;
    bLastCallRedial: Boolean;

    sIDPausa       : String;
    sPausaTipo     : String;
    nPausaDurMinAct: Integer;
    tPausaDurMinVal: TTime;
    tTempoPausa    : TTime;
  end;
  TFaqClass = record
    bFaqAct: Boolean;
    nFaqIdConf: Integer;

    nQtdGrupoConf: Integer;
    matrizGrupoConf: array of array of string;

    nQtdRespostaConf: Integer;
    matrizRespostaConf: array of array of string;
  end;
  TConfCallClass = record
    bInConfCall: Boolean;
    bExterno: Boolean;
    sNum2Dial: String;
    nQtdConfCall: Integer;
    matrizConfCall: array of array of string;

    nQtdIntConfCall: Integer;
    matrizIntConfCall: array of array of string;

    nQtdExtConfCall: Integer;
    matrizExtConfCall: array of array of string;
  end;
  TConsultaCallClass = record
    bInConsCall  : Boolean;
    sLastAppState: String;
    nLastDest    : Integer;
  end;
  TAtxferCallClass = record
    bInAtxferCall: Boolean;
    nLastDest    : Integer;
    sLastState   : String;
  end;
  TClassificacao = record
    bAuto: Boolean;
    bClassificou: Boolean;
    bClassificando: Boolean;

    bAutoAgendouPausa: Boolean;
    sAutoAgendouPausaTipo: String;
    nAutoAgendouPausaIndex: Integer;
  end;
  TCoaching = record
    bCoaching: Boolean;
    sIdCoaching: String;
    nCboCoachingIndex: Integer;
  end;
  TXFer = record
    bXFerExec: Boolean;
    sXFerTipo: String;
    sXFerDest: String;
  end;
  TChat = record
    nChatAtivo: Integer;
    sDirBlobReceived: String;
    bAutoClassificacao: Boolean;
  end;
  TCaptureScreen = record
    bCapture: Boolean;
    bCapturing: Boolean;
    nCaptureMode: Integer;
    bCaptureAudio: Boolean;
    bCaptureCursor: Boolean;
    //sCapturePort: String;
    nSplitInterval: Integer;
    nSplitStep: Integer;
    sCaptureStorageSrc: String;
    sCaptureStorageFile: String;
    sCaptureFileFormat: String;
    sCaptureStorageDst: String;
    nThreadsRunning: Integer;

    //sCaptureCurrentDirRec: String;
    //sCaptureCurrentFileRec: String;
  end;

// Class
  TEquipeTrabalha=Class
  private
    FHr_Saida: TTime;
    FMsg: String;
    FHr_Entrada: TTime;
    FAvisaouNao: Boolean;
    FCount: Integer;
    FMsgAvisada: Boolean;
    FNaoFazNada: Boolean;
    FHr_MSG: TTime;
    FVerificaReg: Boolean;
    procedure SetAvisaouNao(const Value: Boolean);
    procedure SetHr_Entrada(const Value: TTime);
    procedure SetHr_Saida(const Value: TTime);
    procedure SetMsg(const Value: String);
    procedure SetCount(const Value: Integer);
    procedure SetMsgAvisada(const Value: Boolean);
    procedure SetNaoFazNada(const Value: Boolean);
    procedure SetHr_MSG(const Value: TTime);
    procedure SetVerificaReg(const Value: Boolean);
  public
    property Hr_Entrada : TTime read FHr_Entrada write SetHr_Entrada;
    property Hr_Saida   : TTime read FHr_Saida write SetHr_Saida;
    property Hr_MSG     : TTime read FHr_MSG write SetHr_MSG;
    property AvisaouNao : Boolean read FAvisaouNao write SetAvisaouNao;
    property Msg        : String read FMsg write SetMsg;
    property Count      : Integer read FCount write SetCount;
    property MsgAvisada : Boolean read FMsgAvisada write SetMsgAvisada;
    property NaoFazNada : Boolean read FNaoFazNada write SetNaoFazNada;
    property VerificaReg : Boolean read FVerificaReg write SetVerificaReg;

    function fncTempoTrabalho(bCarregaObjetos : Boolean = True) : Boolean;
  End;
  TProcesso = Class
  private
  public
    Procedure Conferencia;
    Procedure CentroCusto;
  End;
  TSQL = Class
  private
    FChatFilaIn : String;
    FsRespChatIn: String;
    FsVNumPausa: Integer;
    Fvnumcentrocusto: Integer;
    Fvnumemails: Integer;
    Fvnumfila: Integer;
    Fvnumclass_fila: Integer;
    Fvnumclasssub_fila: Integer;
    Fvnumsites: Integer;
    Fvnumloja: Integer;
    Fvnumxferfila: Integer;
    Fvnumxfervirtual: Integer;
    Fvnumxferura: Integer;
    Fvnumcoaching: Integer;
    Fvnumxferconsulta: Integer;
    Fvnumxferramal: Integer;
    Fvnumxferpesquisa: Integer;
    Fvnumchatrespgrupo: Integer;
    Fvnumchatresp: Integer;
    Fvnumchatclassificasub: Integer;
    Fvnumchatclassifica: Integer;
    FChatHistoricoSala: String;
    FChatHistoricoData: TDateTime;
    FChatHistoricoEMail: String;
    FChatHistoricoNome: String;
    FChatHistoricoTelefone: String;
    FChatHistoricoProtocolo: String;
    procedure SetChatFilaIn(const Value: String);
    procedure SetsRespChatIn(const Value: String);
    procedure SetsVNumPausa(const Value: Integer);
    procedure Setvnumcentrocusto(const Value: Integer);
    procedure Setvnumemails(const Value: Integer);
    procedure Setvnumfila(const Value: Integer);
    procedure Setvnumclass_fila(const Value: Integer);
    procedure Setvnumclasssub_fila(const Value: Integer);
    procedure Setvnumsites(const Value: Integer);
    procedure Setvnumloja(const Value: Integer);
    procedure Setvnumxferfila(const Value: Integer);
    procedure Setvnumcoaching(const Value: Integer);
    procedure Setvnumxferconsulta(const Value: Integer);
    procedure Setvnumxferpesquisa(const Value: Integer);
    procedure Setvnumxferramal(const Value: Integer);
    procedure Setvnumxferura(const Value: Integer);
    procedure Setvnumxfervirtual(const Value: Integer);
    procedure Setvnumchatclassifica(const Value: Integer);
    procedure Setvnumchatclassificasub(const Value: Integer);
    procedure Setvnumchatresp(const Value: Integer);
    procedure Setvnumchatrespgrupo(const Value: Integer);
    procedure SetChatHistoricoData(const Value: TDateTime);
    procedure SetChatHistoricoEMail(const Value: String);
    procedure SetChatHistoricoSala(const Value: String);
    procedure SetChatHistoricoNome(const Value: String);
    procedure SetChatHistoricoProtocolo(const Value: String);
    procedure SetChatHistoricoTelefone(const Value: String);
  ///
  public
    procedure CarregaFila;
    procedure CarregaFilaTransferencia;
    function CarregaChatConf : String;
    procedure CarregaChatSala; // procedure CarregaChatTrans(mitChatXFer: TMenuItem; mnuChatMoreOptions: TPopupMenu; OnClick : TNotifyEvent );
    procedure CarregaChatTrans;
    procedure CarregaChatResp;
    procedure CarregaChatRespGrupo;
    procedure CarregaClassFila;
    procedure CarregaClassFilaSub;
    procedure CarregaPausa;
    procedure CarregaCoaching;
    procedure CarregaLoja;
    procedure CarregaXFerURA;
    procedure CarregaXFerRamal;
    procedure CarregaXFerPesquisa;
    procedure CarregaXFerVirtual;
    procedure CarregaXFerConsulta;
    procedure CarregaOperHasParam;
    procedure CarregaSites(albrowser: TActionList; tabCliente: TsTabSheet);
    procedure CarregaIntegrador;
    procedure CarregaFacGrupoConf;
    procedure CarregaFaqRespConf;
    procedure Conferencia;
    procedure ConferenciaTipoNInterno;
    procedure ConferenciaTipoNExterno;
    procedure CentroCusto;
    procedure CarregaOperLog;
    procedure CarregaEmails;
    procedure AtualizaQualidade;

    procedure ChatRead01(nFor : Integer);
    procedure ChatRead02(nFor : Integer);
    procedure ChatRead03(nFor : Integer);
    procedure ChatRead04(nFor : Integer);

    procedure ChatDesconecta01(nSalaChat : Integer);
    procedure ChatDesconecta02(nSalaChat : Integer);
    procedure ChatDesconecta03(nSalaChat : Integer);
    procedure ChatDesconecta04(nSalaChat : Integer);

    procedure ChatBlobGet01(nSalaChat : Integer);
    procedure ChatBlobGet02(nSalaChat : Integer);

    procedure ChatXFer01(nSalaChat : Integer);
    procedure ChatXFer02(nSalaChat: Integer; sTag : String);

    procedure ChatSup01(nSalaChat: Integer);

    procedure ChatUpdateDash01;
    procedure ChatUpdateDash02(nSalaChat: Integer);
    procedure ChatUpdateDash03;

    procedure UpdateStatus;

    function FncVerificaLogin : Integer;
    function FncVerificaFila : Boolean;
    function FncVerificaClassUniv: Boolean;
    function FncVerificaPausa: Boolean;

    procedure ChatPesquisaHist;
    procedure EnviaMSGChat(nSalaChat: Integer; sMensagem: String; sMsgTo: String);

    property sChatFilaIn : String  read FChatFilaIn write SetChatFilaIn;
    property sRespChatIn : String  read FsRespChatIn write SetsRespChatIn;
    property sVNumPausa  : Integer read FsVNumPausa write SetsVNumPausa;
    property vnumcentrocusto : Integer read Fvnumcentrocusto write Setvnumcentrocusto;
    property vnumemails : Integer read Fvnumemails write Setvnumemails;
    property vnumfila : Integer read Fvnumfila write Setvnumfila;
    property vnumclass_fila : Integer read Fvnumclass_fila write Setvnumclass_fila;
    property vnumclasssub_fila : Integer  read Fvnumclasssub_fila write Setvnumclasssub_fila;
    property vnumsites : Integer read Fvnumsites write Setvnumsites;
    property vnumloja : Integer read Fvnumloja write Setvnumloja;
    property vnumxferfila : Integer read Fvnumxferfila write Setvnumxferfila;
    property vnumxferura: Integer read Fvnumxferura write Setvnumxferura;
    property vnumxferramal: Integer read Fvnumxferramal write Setvnumxferramal;
    property vnumxferpesquisa: Integer read Fvnumxferpesquisa write Setvnumxferpesquisa;
    property vnumxfervirtual: Integer read Fvnumxfervirtual write Setvnumxfervirtual;
    property vnumxferconsulta: Integer read Fvnumxferconsulta write Setvnumxferconsulta;
    property vnumcoaching: Integer read Fvnumcoaching write Setvnumcoaching;
    property vnumchatresp: Integer read Fvnumchatresp write Setvnumchatresp;
    property vnumchatrespgrupo: Integer read Fvnumchatrespgrupo write Setvnumchatrespgrupo;
    property vnumchatclassifica: Integer read Fvnumchatclassifica write Setvnumchatclassifica;
    property vnumchatclassificasub: Integer read Fvnumchatclassificasub write Setvnumchatclassificasub;

    property ChatHistoricoEMail     : String read FChatHistoricoEMail write SetChatHistoricoEMail;
    property ChatHistoricoSala      : String read FChatHistoricoSala write SetChatHistoricoSala;
    property ChatHistoricoData      : TDateTime read FChatHistoricoData write SetChatHistoricoData;
    property ChatHistoricoNome      : String read FChatHistoricoNome write SetChatHistoricoNome;
    property ChatHistoricoTelefone  : String read FChatHistoricoTelefone write SetChatHistoricoTelefone;
    property ChatHistoricoProtocolo : String read FChatHistoricoProtocolo write SetChatHistoricoProtocolo;

  End;
  TAgente = Class
    SQL             : TSQL;
    Processo        : TProcesso;
    EquipeHrTrab    : TEquipeTrabalha; //
  private
    function GetPathArqConf: string;
    function GetTotalAudio: Integer;
    function GetTotalMicrofone: Integer;
    function GetWinSYS_OPER: string;
    function GetWinUSER: string;
    function GetWinMOTHERBOARD: string;
    function GetWinPC_NAME: string;
    function GetWinMAC_ADDRES01: string;
    function GetWinMAC_ADDRES02: string;
    function GetListaAudios: TStringList;
    function GetListaMics: TStringList;
    function GetwinIP: string;
    function GetPathArqTxtSQL: string;
    function GetVersaoExe: string;

  public
    property PathArqConf     : string read GetPathArqConf;
    property PathArqTxtSQL   : string read GetPathArqTxtSQL;
    property TotalMicrofone  : Integer read GetTotalMicrofone;
    property TotalAudio      : Integer read GetTotalAudio;
    property ListaAudios     : TStringList read GetListaAudios;
    property ListaMics       : TStringList read GetListaMics;
    property WinUSER         : string read GetWinUSER;
    property WinPC_NAME      : string read GetWinPC_NAME;
    property WinMAC_ADDRES01 : string read GetWinMAC_ADDRES01;
    property WinMAC_ADDRES02 : string read GetWinMAC_ADDRES02;
    property WinSYS_OPER     : string read GetWinSYS_OPER;
    property WinMOTHERBOARD  : string read GetWinMOTHERBOARD;
    property WinIP           : string read GetWinIP;
    property VersaoExe       : string read GetVersaoExe;

    procedure InfLogConfPC;
    function VerificaVersao : Boolean;
    function VerificaLogado : Boolean;
    procedure AtivaFlashWindow(bAtiva: Boolean);

    procedure RecebeBlobChat(nSalaChat : Integer);
  published
    constructor Create; overload;
    Destructor  Destroy; override;
  end;
  TUserFila = Class
  private
    Feasy_work_equipe_conf_id: Integer;
    Ffone_transferencia_act: char;
    Fchat_atendimento_act: char;
    Fpenalty: Integer;
    Frecuperar_gravacao_act: char;
    Fxcrm_atendimento_act: char;
    Fmail_atendimento_act: char;
    Fid: Integer;
    Fchat_transferencia_act: char;
    Fvcrm_atendimento_act: char;
    Ffone_atendimento_act: char;
    Factive: char;
    Fmail_transferencia_act: char;
    Feasy_pabx_serv_fila_universal_ctr_id: Integer;
    procedure Setactive(const Value: char);
    procedure Setchat_atendimento_act(const Value: char);
    procedure Setchat_transferencia_act(const Value: char);
    procedure Seteasy_pabx_serv_fila_universal_ctr_id(const Value: Integer);
    procedure Seteasy_work_equipe_conf_id(const Value: Integer);
    procedure Setfone_atendimento_act(const Value: char);
    procedure Setfone_transferencia_act(const Value: char);
    procedure Setid(const Value: Integer);
    procedure Setmail_atendimento_act(const Value: char);
    procedure Setmail_transferencia_act(const Value: char);
    procedure Setpenalty(const Value: Integer);
    procedure Setrecuperar_gravacao_act(const Value: char);
    procedure Setvcrm_atendimento_act(const Value: char);
    procedure Setxcrm_atendimento_act(const Value: char);

  public
    property id  : Integer read Fid write Setid;
    property active  : char read Factive write Setactive;
    property penalty  : Integer read Fpenalty write Setpenalty;
    property fone_atendimento_act  : char read Ffone_atendimento_act write Setfone_atendimento_act;
    property fone_transferencia_act  : char read Ffone_transferencia_act write Setfone_transferencia_act;
    property chat_transferencia_act  : char read Fchat_transferencia_act write Setchat_transferencia_act;
    property chat_atendimento_act  : char read Fchat_atendimento_act write Setchat_atendimento_act;
    property mail_atendimento_act  : char read Fmail_atendimento_act write Setmail_atendimento_act;
    property mail_transferencia_act  : char read Fmail_transferencia_act write Setmail_transferencia_act;
    property recuperar_gravacao_act  : char read Frecuperar_gravacao_act write Setrecuperar_gravacao_act;
    property xcrm_atendimento_act  : char read Fxcrm_atendimento_act write Setxcrm_atendimento_act;
    property vcrm_atendimento_act  : char read Fvcrm_atendimento_act write Setvcrm_atendimento_act;
    property easy_work_equipe_conf_id  : Integer read Feasy_work_equipe_conf_id write Seteasy_work_equipe_conf_id;
    property easy_pabx_serv_fila_universal_ctr_id  : Integer read Feasy_pabx_serv_fila_universal_ctr_id write Seteasy_pabx_serv_fila_universal_ctr_id;
  End;
  TConfiguracoes = Class // Classe de Conf.ini
  private
    function Getcmd01: string;
    function Getcmd02: string;
    function Getcmd03: string;
    function Getcmd04: string;
    function Getcmd05: string;
  public
    property cmd01: string read Getcmd01;
    property cmd02: string read Getcmd02;
    property cmd03: string read Getcmd03;
    property cmd04: string read Getcmd04;
    property cmd05: string read Getcmd05;
  End;
  TDevice=class(TPersistent)
   // Classe de Devices Agente.dll
  private
    FIP   : WideString;
    FMask : WideString;
  public
    property IP  : WideString read FIP write FIP;
    property MASK: WideString read FMASK write FMASK;
  end;

  procedure TmrMsgTimer(Sender: TObject);
  procedure TmpEquipeHrTrabTimer(Sender: TObject);


  Const
    CnstNameArqConf = 'Config.INI';
    MAX_CHAT_ROOM   = 5;//like 6 chat rooms, because we count 0 to 5

  Var Configuracao            : TConfiguracoes;  // Conf.ini
      Agente                  : TAgente;         // HosannaAgente
      TMyInfoLogin            : TInfoLogin;
      TMyAppStatus            : TAppStatus;
      TMyVaxIncomingCallParam : TVaxIncomingCallParams;
      TMyConfCallClass        : TConfCallClass;
      TMyConsultaCallClass    : TConsultaCallClass;
      TMyAtxferCallClass      : TAtxferCallClass;
      TMyClassificacao        : TClassificacao;
      TMyCoaching             : TCoaching;
      TMyXFer                 : TXFer;
      TMyChat                 : TChat;
      TMyCaptureScreen        : TCaptureScreen;
      TMyPausa                : TPausa;
      TMyFaqClass             : TFaqClass;
      TMyMachineInfo          : TMachineInfo;
      TMyConfigInfo           : TConfigInfo;

      UserFile                : array of TUserFila;

      qryChatRead: array[0..MAX_CHAT_ROOM] of TZQuery;
      qryChatXFer: array[0..MAX_CHAT_ROOM] of TZQuery;

      //Arrays
      matrizpausa             : array of array of string;
      matrizcoaching          : array of array of string;
      matriz_fila             : array of array of string;
      matrizclassifica_fila   : array of array of string;
      matrizclassificasub_fila: array of array of string;
      matrizloja              : array of array of string;
      matrizxferfila          : array of array of string;
      matrizxferura           : array of array of string;
      matrizxferramal         : array of array of string;
      matrizxferpesquisa      : array of array of string;
      matrizxfervirtual       : array of array of string;
      matrizxferconsulta      : array of array of string;
      matrizparametros        : array of string;
      matrizurl               : array of array of string;
      vintegrador             : array [0..3] of string;
      vintegradorParams       : array [0..39] of string;
      vchat                   : array [0..3] of string;
      matrizchatassunto       : array of array of string;
      matrizchatresposta      : array of array of string;
      matrizchatrespostagrupo : array of array of string;
      matrizchatclassifica    : array of array of string;
      matrizchatclassificasub : array of array of string;
      matrizcentrocusto       : array of array of string;
      matrizdialednums        : array [0..9] of string;
      matrizemails            : array of array of string;
      matrizchatsala          : array of array of string;

      dtvChatTempoInativoAgenteIni : array[0..MAX_CHAT_ROOM] of TDateTime;
      dtvChatTempoInativoClienteIni: array[0..MAX_CHAT_ROOM] of TDateTime;
      dtvChatTempoPosAtendimento   : array[0..MAX_CHAT_ROOM] of TDateTime;


      nHasChatXFer            : Integer;
      nIdChatXFer             : Integer;
      sUpdateId               : String;
      vChatClassificandoSala  : Integer;
      vChatDesconexaoCliente  : Boolean;
      sNumAge                 : String;
      TmpEquipeHrTrab         : TTimer;
      TmrMsg                  : TTimer;

      procedure FormatTime(Hora : TTime; Var Hour, Min, Sec : Word );

implementation
  uses untFuncoes, untdm, untPrincipal, untTranslate, RotinasGerais;

{$I C:\DSD_Development\Apps\HosannaTecnologia\Agente2.0\Sources\Win32\Debug\Lang\defines.inc}

{ TConfiguracoes }
function TConfiguracoes.Getcmd01: string;
begin
  Result := FncLeINI(Agente.PathArqConf,'COMANDOS','CMD01');
end;

function TConfiguracoes.Getcmd02: string;
begin
  Result := FncLeINI(Agente.PathArqConf,'COMANDOS','CMD02');
end;

function TConfiguracoes.Getcmd03: string;
begin
  Result := FncLeINI(Agente.PathArqConf,'COMANDOS','CMD03');
end;

function TConfiguracoes.Getcmd04: string;
begin
  Result := FncLeINI(Agente.PathArqConf,'COMANDOS','CMD04');
end;

function TConfiguracoes.Getcmd05: string;
begin
  Result := FncLeINI(Agente.PathArqConf,'COMANDOS','CMD05');
end;

{ TAgente }
function TAgente.GetTotalAudio: Integer;
begin
//  result := WaveOutGetNumDevs > 0;
  result := WaveOutGetNumDevs;
end;

function TAgente.GetTotalMicrofone: integer;
begin
//  result := waveInGetNumDevs > 0;
  result := waveInGetNumDevs;
end;

function TAgente.GetVersaoExe: string;
type
  PFFI = ^vs_FixedFileInfo;

var
  F       : PFFI;
  Handle  : Dword;
  Len     : Longint;
  Data    : Pchar;
  Buffer  : Pointer;
  Tamanho : Dword;
  Parquivo: Pchar;
  Arquivo : String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
  begin
    Data:=StrAlloc(Len+1);
    if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
    begin
      VerQueryValue(Data, '\',Buffer,Tamanho);
      F := PFFI(Buffer);
      Result := Format('%d.%d.%d.%d',
      [HiWord(F^.dwFileVersionMs),
      LoWord(F^.dwFileVersionMs),
      HiWord(F^.dwFileVersionLs),
      Loword(F^.dwFileVersionLs)]
      );
    end;
    StrDispose(Data);
  end;
  StrDispose(Parquivo);

end;

function TAgente.GetwinIP: string;
var
  IPWatch : TIdIPWatch;
begin
 IPWatch := TIdIPWatch.Create(nil);
 Result := IPWatch.LocalIP;
 FreeAndNil(IPWatch);
end;

procedure TAgente.InfLogConfPC;
  var Lst  : TStringList;
      IntI : Integer;
begin
  //
  Lst := TStringList.Create;
  try
    LogCallStep('log_login_act', 'User SO: '+Agente.WinUSER);
    LogCallStep('log_login_act', 'IP: '     +Agente.WinIP);
    LogCallStep('log_login_act', 'MAC.: '   +Agente.WinMAC_ADDRES02);
    LogCallStep('log_login_act', 'S.O.: '   +Agente.WinSYS_OPER);

    // Audio
    Lst.Clear;
    Lst.Assign(Agente.ListaAudios);
    for IntI := 0 to Lst.Count-1 do
      LogCallStep('log_login_act', 'Audio(s).'+FormatFloat('00', IntI+1)+': '+Lst[IntI]);

    if Lst.Count > 0 then
      LogCallStep('log_login_act', 'Audio.Padrao.: '   +Lst[0]);

// Microfone
    Lst.Clear;
    Lst.Assign(Agente.ListaMics);
    for IntI := 0 to Lst.Count-1 do
      LogCallStep('log_login_act', 'Mic(s).'+FormatFloat('00', IntI+1)+': '+Lst[IntI]);

    if Lst.Count > 0 then
      LogCallStep('log_login_act', 'Mic.Padrao.: '   +Lst[0]);

  finally
    FreeAndNil(Lst);
  end;

end;

procedure TAgente.RecebeBlobChat(nSalaChat : Integer);
var
  sDirBlob: String;
  nIdBlob: Integer;
  sHoraBlob: String;
  sMensagem: String;
begin
  Agente.SQL.ChatBlobGet01(nSalaChat);

  if qryChatBlobGet[nSalaChat].RecordCount > 0 then
  begin
    try
      sDirBlob  := TMyChat.sDirBlobReceived + matrizchatsala[nSalaChat, 1] + '\';
      CreateDir(sDirBlob);
      sDirBlob  := sDirBlob + qryChatBlobGet[nSalaChat].FieldByName('arquivo_nome').AsString;
      nIdBlob   := qryChatBlobGet[nSalaChat].FieldByName('id').AsInteger;
      sHoraBlob := qryChatBlobGet[nSalaChat].FieldByName('data').AsString;
      TBlobField(qryChatBlobGet[nSalaChat].FieldByName('arquivo')).SaveToFile(sDirBlob);

      Agente.SQL.ChatBlobGet02(nSalaChat);

      sMensagem := APP_FRM_MAIN_CHAT_BLOB_RECEIVED_DIR[ID_LANG] + '"' + sDirBlob + '"';

      memChatHistory[nSalaChat].SelStart := memChatHistory[nSalaChat].GetTextLen;
      memChatHistory[nSalaChat].SelAttributes.Style := [fsBold];

      AtivaFlashWindow(True);
      if TMyChat.nChatAtivo <> nSalaChat then
        imgChatCabecalho[nSalaChat].Visible := True;

      memChatHistory[nSalaChat].SelAttributes.Color := clNavy;
      memChatHistory[nSalaChat].SelText := #13#10 + '(' + sHoraBlob + ') ' + matrizchatsala[nSalaChat, 2] + APP_FRM_MAIN_CHAT_BLOB_RECEIVED[ID_LANG] + #13#10;
      memChatHistory[nSalaChat].SelAttributes.Color := clNavy;

      dtvChatTempoInativoClienteIni[nSalaChat] := Now;

      memChatHistory[nSalaChat].SelAttributes.Style := [];
      memChatHistory[nSalaChat].SelText := sMensagem + #13#10;

      try
         if frmPrincipal.chkChatRolagem.Checked then
           SendMessage(memChatHistory[nSalaChat].Handle, WM_VSCROLL, SB_BOTTOM, 0);
      except
      end;
    except
    end;
  end;
  qryChatBlobGet[nSalaChat].Close;
end;

procedure TAgente.AtivaFlashWindow(bAtiva: Boolean);
begin
  if bAtiva = True then
  begin
    try
      FlashWindow(Application.Handle, True);
    Except end;
    vFlashWindowActive := 2;
  end else
  begin
    if vFlashWindowActive > 0 then
    begin
      try
        if IsIconic(Application.Handle) then
          Application.Restore;
      except
      end;

      Try
        SetForegroundWindow(Application.Handle);
      Except
        Try
          BringWindowToTop(Application.Handle);
        Except
        End;
      End;
    end;
    Dec(vFlashWindowActive);
  end;
end;

constructor TAgente.Create;
begin
  if Not Assigned(Self.SQL)      then Self.SQL      := TSQL.Create;
  if Not Assigned(Self.Processo) then Self.Processo := TProcesso.Create;
  if Not Assigned(EquipeHrTrab)    then EquipeHrTrab := TEquipeTrabalha.Create;
end;

destructor TAgente.Destroy;
begin
  if Assigned(Self.SQL)      then FreeAndNil(Self.SQL);
  if Assigned(Self.Processo) then FreeAndNil(Self.Processo);
  if Assigned(EquipeHrTrab)    then FreeAndNil(EquipeHrTrab);

  inherited;
end;

function TAgente.GetListaAudios: TStringList;
  var StrResultado : TStringList;
begin
{  StrResultado := TStringList.Create;
  if Assigned(StrResultado) then
    StrResultado := FncRetornaAudio('DirectSound:');
  Result := StrResultado;}

  Result := TStringList.Create;

  if Assigned(Result) then
    PrcRetornaAudioOUT(Result);

  if Result.Count <= 0 then
    Result.Add('Dispositivo desconhecido.');

end;

function TAgente.GetListaMics: TStringList;
begin
  Result := TStringList.Create;

  if Assigned(Result) then
    PrcRetornaAudioIN(Result);

  if Result.Count <= 0 then
    Result.Add('Dispositivo desconhecido.');
end;

function TAgente.GetPathArqConf: string;
begin
  Result := IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))+CnstNameArqConf;
end;

function TAgente.GetPathArqTxtSQL: string;
begin
  Result:= IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))+'Txt';
end;

function TAgente.GetWinMAC_ADDRES01: string;
{var pAdapterInfo:PIP_ADAPTER_INFO;
    BufLen,Status:cardinal; i:Integer;}
begin
{  result:='';
  BufLen:= sizeof(IP_ADAPTER_INFO);
  GetAdaptersInfo(nil, BufLen);
  pAdapterInfo:= AllocMem(BufLen);
  try
    Status:= GetAdaptersInfo(pAdapterInfo,BufLen);
    if (Status <> ERROR_SUCCESS) then
    begin
      case Status of
        ERROR_NOT_SUPPORTED: raise exception.create('O(s) Adaptador(es)("MAC Address") deste computador n�o s�o/� suportado pelo sistema operacional em execu��o.');
        ERROR_NO_DATA: raise exception.create('Nenhum adaptador de rede no computador.');
      else
        raiselastOSerror;
      end;
      Exit;
    end;
    while (pAdapterInfo^.AddressLength=0) and (pAdapterInfo^.next<>nil) do
     pAdapterInfo:=pAdapterInfo.next;
    if pAdapterInfo^.AddressLength>0 then
    for i := 0 to pAdapterInfo^.AddressLength - 1 do
      result := result + IntToHex(pAdapterInfo^.Address[I], 2);
  finally
    Freemem(pAdapterInfo);
  end;}
end;

function TAgente.GetWinMAC_ADDRES02: string;
var
  ID1, ID2: TGUID;
  apiFunc: Function(GUID: PGUID): Longint; stdcall;
  dll:cardinal;
begin
  Result := '';
  dll := LoadLibrary('rpcrt4.dll');
  if dll <> 0 then
  begin
    @apiFunc := GetProcAddress(dll, 'UuidCreateSequential');
    if Assigned(apiFunc) then
    begin
      if (apiFunc(@ID1) = 0) and
      (apiFunc(@ID2) = 0) and
      (ID1.D4[2] = ID2.D4[2]) and
      (ID1.D4[3] = ID2.D4[3]) and
      (ID1.D4[4] = ID2.D4[4]) and
      (ID1.D4[5] = ID2.D4[5]) and
      (ID1.D4[6] = ID2.D4[6]) and
      (ID1.D4[7] = ID2.D4[7]) then
      begin
        Result :=
        IntToHex(ID1.D4[2], 2) +'.'+
        IntToHex(ID1.D4[3], 2) +'.'+
        IntToHex(ID1.D4[4], 2) +'.'+
        IntToHex(ID1.D4[5], 2) +'.'+
        IntToHex(ID1.D4[6], 2) +'.'+
        IntToHex(ID1.D4[7], 2);
      end;
    end;
  end;
end;

function TAgente.GetWinMOTHERBOARD: string;
var a, b, c, d: LongWord;
begin
  asm
    push EAX
    push EBX
    push ECX
    push EDX

    mov eax, 1
    db $0F, $A2
    mov a, EAX
    mov b, EBX
    mov c, ECX
    mov d, EDX
    pop EDX
    pop ECX
    pop EBX
    pop EAX
  end;
  result := inttohex(a, 8) +
            '-' + inttohex(b, 8) +
            '-' + inttohex(c, 8) +
            '-' + inttohex(d, 8);
end;

function TAgente.GetWinPC_NAME: string;
var
  PC: Pchar;
  Tamanho: Cardinal;
begin
  Result := '';
  Tamanho := 100;
  Getmem(PC, Tamanho);
  GetComputerName(PC, Tamanho);
  Result := PC;
  FreeMem(PC);
end;

function TAgente.GetWinSYS_OPER: string;
  Var SysOper : String;
begin
  SysOper := GetSOComputer01;
  if Length(Trim(SysOper)) <= 0 then
    SysOper := GetSOComputer02;
  Result := SysOper;
end;

function TAgente.GetWinUSER: string;
var
  BufSize: DWord;
  Buffer: PWideChar;
begin
 BufSize:= 1024;
 Buffer:= AllocMem(BufSize);
 try
  if GetUserName(Buffer, BufSize) then
      SetString(result, Buffer, BufSize)
 else
  RaiseLastOSError;
 finally
  FreeMem(Buffer);
 end;
end;

procedure TSQL.CarregaChatResp;
begin

// Agente.SQL.CarregaChatResp(cboChatGroup);
  with frmPrincipal do
  begin
    with datam.qryChatCarregaResp do
    begin

      // Verifica se esta ativo e fecha se sim
      If Active then Close;
      Open;

      LogCallStep('log_login_act', 'carregaoperacao :: Step 10.7');

      cboChatGroup.Items.Clear;
      cboChatGroup.ItemIndex := -1;
      cboChatGroup.Text      := APP_FRM_MAIN_CHAT_SELECT_GROUP[ID_LANG];

      Agente.SQL.vnumchatresp := RecordCount;
      SetLength(matrizchatresposta,2,RecordCount);

      Agente.SQL.sRespChatIn := '';

      First;
      while not Eof do
      begin
        matrizchatresposta[0, RecNo-1] := Fields[0].AsString;
        matrizchatresposta[1, RecNo-1] := Fields[1].AsString;

        if not datam.qryChatCarregaResp.Bof then
          Agente.SQL.sRespChatIn := Agente.SQL.sRespChatIn + ',';
        Agente.SQL.sRespChatIn := Agente.SQL.sRespChatIn + matrizchatresposta[0, RecNo-1];

        cboChatGroup.Items.Add(matrizchatresposta[1, RecNo-1]);
        Next;
      end; //while not datam.qryChatCarregaResp.Eof do

      Close;
    end;
  end;


end;

procedure TSQL.CarregaChatRespGrupo;
begin

  with datam.qryChatCarregaRespGrupo do
  begin

    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    Open;

    LogCallStep('log_login_act', 'carregaoperacao :: Step 10.9');

    Agente.SQL.vnumchatrespgrupo := RecordCount;
    SetLength(matrizchatrespostagrupo, 4, RecordCount);

    First;
    while not Eof do
    begin

      matrizchatrespostagrupo[0, RecNo-1] := Fields[0].AsString;
      matrizchatrespostagrupo[1, RecNo-1] := Fields[1].AsString;
      matrizchatrespostagrupo[2, RecNo-1] := Fields[2].AsString;
      matrizchatrespostagrupo[3, RecNo-1] := Fields[3].AsString;

      Next;
    end;

    Close;
  end;


end;

procedure TSQL.CarregaChatSala;
begin

  with datam.qryChatCarregaSala do
  begin

    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    Open;

    LogCallStep('log_login_act', 'carregaoperacao :: Step 10.3');

    SetLength(matrizchatassunto,2,RecordCount);

    First;
    while not Eof do
    begin
      matrizchatassunto[0, RecNo-1] := Fields[0].AsString;//id
      matrizchatassunto[1, RecNo-1] := ConvertCharToFE(Fields[1].AsString);//descricao

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.AtualizaQualidade;
begin

  with datam.qryAtualizaQualidade do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    BeforeOpen(TZQuery(datam.qryAtualizaQualidade));
    ExecSQL;
    Close;
  end;

end;

Function TSQL.CarregaChatConf : String;
  Var sChatFilaIn : String;
begin

  Result      := '';
  sChatFilaIn := '';

  with datam.qryChatCarregaConf do
  begin

    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    Open;

    if datam.qryChatCarregaConf.RecordCount > 0 then
    begin

      LogCallStep('log_login_act', 'carregaoperacao :: Step 10.1');

      vchat[1] := '60';//desconexao_auto_tmp
      vchat[3] := '1';//wrapuptime

      First;
      while not Eof do
      begin
        vchat[0] := Fields[2].AsString;//desconexao_auto_act
        vchat[1] := IfThen(Fields[3].AsInteger > StrToInt(vchat[1]), Fields[3].AsString, vchat[1]);
        vchat[2] := Fields[4].AsString;//desconexao_msg_txt
        vchat[3] := IfThen(Fields[1].AsInteger > StrToInt(vchat[3]), Fields[1].AsString, vchat[3]);

        sChatFilaIn := sChatFilaIn + Fields[0].AsString;
        if RecNo-1 < RecordCount-1 then
          sChatFilaIn := sChatFilaIn + ',';

        Next;
      end;
      Result := sChatFilaIn;
    end;
    Close;
  end;

end;

procedure TSQL.CarregaFacGrupoConf;
begin

  with datam.qryFaqGrupoConf do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    Open;
  //  vnumfila := RecordCount;
    TMyFaqClass.nQtdGrupoConf := RecordCount;
    SetLength(TMyFaqClass.matrizGrupoConf, RecordCount, 2);

    if RecordCount > 0 then
    begin

      First;
      While not Eof do
      begin
        TMyFaqClass.matrizGrupoConf[RecNo-1, 0] := Fields[0].AsString;
        TMyFaqClass.matrizGrupoConf[RecNo-1, 1] := Fields[1].AsString;

        Next;
      end;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaFaqRespConf;
begin

  with datam.qryFaqRespConf do
  begin

    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    Open;

    TMyFaqClass.nQtdRespostaConf := RecordCount;
    SetLength(TMyFaqClass.matrizRespostaConf, RecordCount, 4);

    if TMyFaqClass.nQtdRespostaConf > 0 then
    begin
      First;
      while not Eof do
      begin

        TMyFaqClass.matrizRespostaConf[RecNo-1, 0] := Fields[0].AsString;
        TMyFaqClass.matrizRespostaConf[RecNo-1, 1] := Fields[1].AsString;
        TMyFaqClass.matrizRespostaConf[RecNo-1, 2] := Fields[2].AsString;
        TMyFaqClass.matrizRespostaConf[RecNo-1, 3] := Fields[3].AsString;

        Next;
      end;
    end;

    Close;
  end;
end;

procedure TSQL.CarregaFila;
begin

  with datam.qryCarregaFilas do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;

    Open;
    Agente.SQL.vnumfila := RecordCount;
    SetLength(matriz_fila, 2, RecordCount);

    First;
    while not Eof do
    begin
      matriz_fila[0, RecNo-1] := Fields[0].AsString;
      matriz_fila[1, RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;

{ TUserFila }

procedure TUserFila.Setactive(const Value: char);
begin
  Factive := Value;
end;

procedure TUserFila.Setchat_atendimento_act(const Value: char);
begin
  Fchat_atendimento_act := Value;
end;

procedure TUserFila.Setchat_transferencia_act(const Value: char);
begin
  Fchat_transferencia_act := Value;
end;

procedure TUserFila.Seteasy_pabx_serv_fila_universal_ctr_id(
  const Value: Integer);
begin
  Feasy_pabx_serv_fila_universal_ctr_id := Value;
end;

procedure TUserFila.Seteasy_work_equipe_conf_id(const Value: Integer);
begin
  Feasy_work_equipe_conf_id := Value;
end;

procedure TUserFila.Setfone_atendimento_act(const Value: char);
begin
  Ffone_atendimento_act := Value;
end;

procedure TUserFila.Setfone_transferencia_act(const Value: char);
begin
  Ffone_transferencia_act := Value;
end;

procedure TUserFila.Setid(const Value: Integer);
begin
  Fid := Value;
end;

procedure TUserFila.Setmail_atendimento_act(const Value: char);
begin
  Fmail_atendimento_act := Value;
end;

procedure TUserFila.Setmail_transferencia_act(const Value: char);
begin
  Fmail_transferencia_act := Value;
end;

procedure TUserFila.Setpenalty(const Value: Integer);
begin
  Fpenalty := Value;
end;

procedure TUserFila.Setrecuperar_gravacao_act(const Value: char);
begin
  Frecuperar_gravacao_act := Value;
end;

procedure TUserFila.Setvcrm_atendimento_act(const Value: char);
begin
  Fvcrm_atendimento_act := Value;
end;

procedure TUserFila.Setxcrm_atendimento_act(const Value: char);
begin
  Fxcrm_atendimento_act := Value;
end;

procedure TSQL.CarregaFilaTransferencia;
begin
  with datam.qryCarregaXFerFila do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumxferfila := RecordCount;
    SetLength(matrizxferfila,2, RecordCount);

    First;
    while not Eof do
    begin
      matrizxferfila[0,RecNo-1] := Fields[0].AsString;
      matrizxferfila[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;
end;

procedure TSQL.CarregaIntegrador;
  Var nForIntegrador : Integer;
begin

  with datam.qr_carrega_integrador do
  begin
    if Active then Close;
    Open;

    if RecordCount > 0 then
    begin
      vintegrador[0] := Fields[1].AsString; //Ativo
      vintegrador[1] := IntToStr(Fields[3].AsInteger - 1); //Tipo
      vintegrador[2] := Fields[4].AsString; //destino
      vintegrador[3] := Fields[5].AsString; //separador

      for nForIntegrador := 0 to 9 do
      begin
        vintegradorParams[nForIntegrador     ] := Fields[6 + nForIntegrador     ].AsString; //param x act
        vintegradorParams[nForIntegrador + 10] := Fields[6 + nForIntegrador + 10].AsString; //param x val
        vintegradorParams[nForIntegrador + 20] := Fields[6 + nForIntegrador + 20].AsString; //param x nome_act
        vintegradorParams[nForIntegrador + 30] := Fields[6 + nForIntegrador + 30].AsString; //param x nome_txt
      end;
    end
    else
    begin
      vintegrador[0] := 'False';
    end;


    Close;
  end;

end;

procedure TSQL.CarregaLoja;
begin

  with datam.qryCarregaLoja do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumloja := RecordCount;
    SetLength(matrizloja,2,RecordCount);

    First;
    while not Eof do
    begin
      matrizloja[0,RecNo-1] := Fields[0].AsString;
      matrizloja[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaOperHasParam;
begin

  with datam.qry_operacao_has_parametros do
  begin
    if Active then Close;
    Open;

    SetLength(matrizparametros, 19);

    matrizparametros[00] := Fields[00].AsString;
    matrizparametros[01] := Fields[01].AsString;

    //pausa pos atendimento
    matrizparametros[02] := Fields[02].AsString;
    matrizparametros[03] := Fields[03].AsString;
    matrizparametros[04] := Fields[04].AsString;
    matrizparametros[05] := Fields[05].AsString;
    matrizparametros[06] := Fields[06].AsString;

    //pausa login
    matrizparametros[07] := Fields[07].AsString;
    matrizparametros[08] := Fields[08].AsString;
    matrizparametros[09] := Fields[09].AsString;
    matrizparametros[10] := Fields[10].AsString;
    matrizparametros[11] := Fields[11].AsString;

    //tempos para notificacao de TMA
    matrizparametros[12] := Fields[12].AsString;//act
    matrizparametros[13] := Fields[13].AsString;//tmp1
    matrizparametros[14] := Fields[14].AsString;//msg1
    matrizparametros[15] := Fields[15].AsString;//tmp2
    matrizparametros[16] := Fields[16].AsString;//msg2
    matrizparametros[17] := Fields[17].AsString;//tmp3
    matrizparametros[18] := Fields[18].AsString;//msg3

    Close;
  end;


end;

procedure TSQL.CarregaOperLog;
  Var IntFieldCount : Integer;
begin

  with datam.qry_carrega_LogCallStep do
  begin
    if Active then Close;
    Open;

    IntFieldCount := Fields.Count+2;
    SetLength(vLogCallStep, IntFieldCount);

    First;

    if Not IsEmpty then
    begin
      vLogCallStep[00] := Fields[00].AsString;
      vLogCallStep[01] := Fields[01].AsString;
      vLogCallStep[02] := Fields[02].AsString;
      vLogCallStep[03] := Fields[03].AsString;
      vLogCallStep[04] := Fields[04].AsString;
      vLogCallStep[05] := Fields[05].AsString;
      vLogCallStep[06] := Fields[06].AsString;
      vLogCallStep[07] := Fields[07].AsString;
      vLogCallStep[08] := Fields[08].AsString;
      vLogCallStep[09] := Fields[09].AsString;
      vLogCallStep[10] := Fields[10].AsString;
      vLogCallStep[11] := Fields[11].AsString;
      vLogCallStep[12] := Fields[12].AsString;
      vLogCallStep[13] := Fields[13].AsString;
      vLogCallStep[14] := Fields[14].AsString;
      vLogCallStep[15] := 'True';
      vLogCallStep[16] := 'True';
    end
    else
      vLogCallStep[00] := 'False';

    Close;
  end;


end;

procedure TSQL.CarregaPausa;
begin


  with datam.qr_carrega_pausa do
  begin
    if Active then Close;
    Open;

    Agente.SQL.sVNumPausa := RecordCount;
    SetLength(matrizpausa, 18, RecordCount);

    First;
    while not Eof do
    begin
      matrizpausa[0,RecNo-1] := Fields[0].AsString;   //id
      matrizpausa[1,RecNo-1] := Fields[1].AsString;   //descricao
      matrizpausa[2,RecNo-1] := Fields[2].AsString;   // tipo
      matrizpausa[3,RecNo-1] := Fields[8].AsString;   //oper ativo
      matrizpausa[4,RecNo-1] := Fields[9].AsString;   //transfer act
      matrizpausa[5,RecNo-1] := Fields[10].AsString;  //restritiva duracao act
      matrizpausa[6,RecNo-1] := Fields[11].AsString;  //restritiva duracao tempo
      matrizpausa[7,RecNo-1] := Fields[12].AsString;  // restritiva qtd act
      matrizpausa[8,RecNo-1] := Fields[13].AsString;  // restritiva qtd
      matrizpausa[9,RecNo-1] := Fields[14].AsString;  //pausa conf id
      matrizpausa[10,RecNo-1] := Fields[15].AsString; //operacao conf id
      //matrizpausa[11,RecNo-1] := Fields[3].AsString;  //paus pos
      //matrizpausa[12,RecNo-1] := Fields[4].AsString;  //tempo pos (sec)
      //matrizpausa[13,RecNo-1] := Fields[5].AsString;  // tempo pos
      matrizpausa[14,RecNo-1] := Fields[6].AsString;  //ativo em pausa
      matrizpausa[15,RecNo-1] := Fields[16].AsString;  //duracao_min_act
      matrizpausa[16,RecNo-1] := Fields[17].AsString;  //duracao_min_valor
      matrizpausa[17,RecNo-1] := Fields[18].AsString;  //bloqueio_act

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaSites(albrowser: TActionList; tabCliente: TsTabSheet);
begin

  with datam.qr_carrega_sites do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumsites := RecordCount;
    SetLength(matrizurl, 3, RecordCount);

    First;
    while not Eof do
    begin
      matrizurl[0, Recno-1] := Fields[1].AsString;
      matrizurl[1, Recno-1] := Fields[3].AsString;
      matrizurl[2, Recno-1] := Fields[4].AsString;

      if Fields[1].AsString = 'True' then
      begin
        TAction(albrowser.Actions[Recno-1]).Enabled := True;
      end
      else
      begin
//        if (Recno-1 <> 0) and (Recno-1 <> 8) and (Recno-1 <> 10) then
        TAction(albrowser.Actions[Recno-1]).Enabled := False;

        if Recno-1 = 0 then
          tabCliente.Tag := -1;
      end;

      Next;
    end;

    Close;
  end;

end;

function TEquipeTrabalha.fncTempoTrabalho(bCarregaObjetos : Boolean = True) : Boolean;
  var M : TMethod;
      bHr_inicio  : Boolean;
      bHr_Termino : Boolean;

      tHrAtual    : TDateTime;
      tHr_Entrada : TDateTime;
      tHr_Saida   : TDateTime;

      mHr         : Word;
      mMm         : Word;
      mSeg        : Word;
begin
  Result := True;

  with datam.qryCarregaTimeEquipe do
  begin
    if Active then Close;
    Active := True;

    Agente.EquipeHrTrab.Count      := 0;
    if Not IsEmpty then
    begin
      if ((FieldByName('Hr_Entrada').AsDateTime > 0)And(FieldByName('Hr_Saida').AsDateTime > 0)) Then
      begin
        Agente.EquipeHrTrab.Hr_Entrada := FieldByName('Hr_Entrada').AsDateTime;
        Agente.EquipeHrTrab.Hr_Saida   := FieldByName('Hr_Saida').AsDateTime;
        Agente.EquipeHrTrab.Hr_MSG     := FieldByName('Hr_Calc_MSG').AsDateTime;
        Agente.EquipeHrTrab.AvisaouNao := FieldByName('AvisaouNao').AsBoolean;
        Agente.EquipeHrTrab.Msg        := FieldByName('Msg').AsString;
        Agente.EquipeHrTrab.Count      := Agente.EquipeHrTrab.Count+1;
      end;
    end;


//    Agente.EquipeHrTrab.Hr_Entrada := StrToTime('14:11:00');
//    Agente.EquipeHrTrab.Hr_MSG     := StrToTime('16:41:10');
//    Agente.EquipeHrTrab.Hr_Saida   := StrToTime('16:42:15');
//
//    Agente.EquipeHrTrab.AvisaouNao := True;
//    Agente.EquipeHrTrab.Msg        := 'Encerrar� o processo em ....'+TimeToStr(Agente.EquipeHrTrab.Hr_Saida);
//    Agente.EquipeHrTrab.Count      := 1;

    if bCarregaObjetos then
      if ((Agente.EquipeHrTrab.Hr_Entrada > 0)and(Agente.EquipeHrTrab.Hr_Saida > 0)) then
      begin

        tHrAtual := Now;

        tHr_Entrada := 0;
        tHr_Saida   := 0;

        FormatTime(Agente.EquipeHrTrab.Hr_Entrada, mHr, mMm, mSeg);
        tHr_Entrada := EncodeDateTime(YearOf(Now), MonthOf(Now), DayOf(Now), mHr, mMm, mSeg, 00);

        FormatTime(Agente.EquipeHrTrab.Hr_Saida, mHr, mMm, mSeg);
        tHr_Saida   := EncodeDateTime(YearOf(Now), MonthOf(Now), DayOf(Now), mHr, mMm, mSeg, 00);

        bHr_inicio  := Boolean(IfThen(tHrAtual >= tHr_Entrada, 1, 0)); // Sera Verdadeiro se Hr Atual >= Hr de Entrada
        bHr_Termino := Boolean(IfThen(tHrAtual <= tHr_Saida  , 1, 0));   // Sera Verdadeiro se Hr Atual <= Hr de Saida

        if (bHr_inicio=false)xor(bHr_Termino=false) then
        begin
          Result := False;
          Agente.EquipeHrTrab.NaoFazNada := True;

          if Assigned(frmPrincipal.Vax) then frmPrincipal.Vax.UnInitialize();
          MessageDlg('Somente � permitido no(s) hor�rio(s) da(s) '+FormatDateTime('HH:MM:SS', tHr_Entrada)+' '+
                     'at� a(s) '+FormatDateTime('HH:MM:SS', tHr_Saida) ,mtError,[mbOk],0);
          Application.Terminate;
          Exit;
        end;
      end;



    if Agente.EquipeHrTrab.Count > 0 then
    begin

      if bCarregaObjetos then
      begin
        TmpEquipeHrTrab := TTimer.Create(Nil);
        TmrMsg          := TTimer.Create(Nil);

        TmpEquipeHrTrab.Enabled := False;
        TmrMsg.Enabled          := False;

        M.Data      := nil;
        M.Code      := @TmpEquipeHrTrabTimer;
        TmpEquipeHrTrab.OnTimer := TNotifyEvent(M);

        M.Data      := nil;
        M.Code      := @TmrMsgTimer;
        TmrMSG.OnTimer := TNotifyEvent(M);
      end;

      TmpEquipeHrTrab.Interval := 1000;
      TmpEquipeHrTrab.Enabled  := True;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaXFerConsulta;
begin

  with datam.qr_carrega_xfer_consulta do
  begin
    if Active then Close;
    Open;


    Agente.SQL.vnumxferconsulta := RecordCount;
    SetLength(matrizxferconsulta, 2, RecordCount);

    First;
    while not Eof do
    begin

      matrizxferconsulta[0, RecNo-1] := Fields[0].AsString;
      matrizxferconsulta[1, RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;
procedure TSQL.CarregaXFerPesquisa;
begin

  with datam.qr_carrega_xfer_pesquisa do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumxferpesquisa := RecordCount;
    SetLength(matrizxferpesquisa , 2, RecordCount);

    First;
    while not Eof do
    begin

      matrizxferpesquisa[0,RecNo-1] := Fields[0].AsString;
      matrizxferpesquisa[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaXFerRamal;
begin

  with datam.qryCarregaXFerRamal do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumxferramal := RecordCount;
    SetLength(matrizxferramal, 2, RecordCount);

    First;
    while not Eof do
    begin

      matrizxferramal[0,RecNo-1] := Fields[0].AsString;
      matrizxferramal[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;


end;

procedure TSQL.CarregaXFerURA;
begin

  with datam.qr_carrega_xfer_ura do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumxferura := RecordCount;
    SetLength(matrizxferura, 2, RecordCount);

    First;
    while not Eof do
    begin

      matrizxferura[0,RecNo-1] := Fields[0].AsString;
      matrizxferura[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaXFerVirtual;
begin

  with datam.qr_carrega_xfer_virtual do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumxfervirtual := RecordCount;
    SetLength(matrizxfervirtual, 2, RecordCount);

    First;
    while not Eof do
    begin

      matrizxfervirtual[0, RecNo-1] := FormatFloat('00000', Fields[0].AsInteger);
      matrizxfervirtual[1, RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CentroCusto;
begin
  with datam.qryCentroCusto do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumcentrocusto := RecordCount;
    SetLength(matrizcentrocusto, 2, RecordCount);

    while not eof do
    begin

      matrizcentrocusto[0,RecNo-1] := Fields[0].AsString;
      matrizcentrocusto[1,RecNo-1] := Fields[1].AsString;

      Next;
    end;

    Active := False;
  end;

end;

procedure TSQL.ChatBlobGet01(nSalaChat: Integer);
begin
  with qryChatBlobGet[nSalaChat] do
  begin
    Close;
    BeforeOpen                          := datam.qryChatBlobGet01BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    ParamByName('IdSala').AsString      := matrizchatsala[nSalaChat, 1];
    Open;
  end;
end;

procedure TSQL.ChatBlobGet02(nSalaChat: Integer);
Var nIdBlob : Integer;
begin
  with qryChatBlobGet[nSalaChat] do
  begin

    Close;
    BeforeOpen                          := datam.qryChatBlobGet02BeforeOpen;
    nIdBlob                             := FieldByName('id').AsInteger;

    Params.Clear;
    Params.CreateParam(ftString, 'IdBlob', ptInputOutput);
    ParamByName('IdBlob').AsString      := IntToStr(nIdBlob);

    BeforeOpen(TZQuery(qryChatBlobGet[nSalaChat]));
    ExecSQL;
    Close;
  end;
end;

procedure TSQL.ChatDesconecta01(nSalaChat: Integer);
begin

  with qryChatDesconecta[nSalaChat] do
  begin
    Close;
    BeforeOpen                            := datam.qryChatDesconecta01BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'sSalaAct', ptInputOutput);
    Params.CreateParam(ftString, 'sSala_ctr_id', ptInputOutput);

    ParamByName('IdSala').AsString        := 'sala' + IntToStr(nSalaChat+1) + '_act' ;
    ParamByName('sSala_ctr_id').AsString  := 'sala' + IntToStr(nSalaChat+1) + '_ctr_id' ;

    BeforeOpen(TZQuery(qryChatDesconecta[nSalaChat]));
    ExecSQL;
  end;

end;

procedure TSQL.ChatDesconecta02(nSalaChat: Integer);
begin

  with frmPrincipal do
  begin
    with qryChatDesconecta[nSalaChat] do
    begin
      Close;
      BeforeOpen                            := datam.qryChatDesconecta02BeforeOpen;
      Params.Clear;
      Open;

      cboChatClassifica.Items.Clear;
      cboChatClassifica.ItemIndex := -1;
      cboChatClassifica.Text := APP_FRM_MAIN_CHAT_SELECT_CLASS[ID_LANG];

      Agente.SQL.vnumchatclassifica := RecordCount;
      SetLength(matrizchatclassifica, 2, RecordCount);

      while not Eof do
      begin
        matrizchatclassifica[0, RecNo-1] := Fields[0].AsString;
        matrizchatclassifica[1, RecNo-1] := Fields[1].AsString;

        cboChatClassifica.Items.Add(matrizchatclassifica[1, RecNo-1]);
        Next;
      end; //while not qryChatDesconecta[nSalaChat].Eof do
      Close;
    end;
  end;

end;

procedure TSQL.ChatDesconecta03(nSalaChat: Integer);
begin

  with frmPrincipal do
  begin
    with qryChatDesconecta[nSalaChat] do
    begin
      Close;
      BeforeOpen                            := datam.qryChatDesconecta03BeforeOpen;
      Params.Clear;
      Open;

      cboChatClassificaSub.Items.Clear;
      cboChatClassificaSub.ItemIndex := -1;
      cboChatClassificaSub.Text := APP_FRM_MAIN_CHAT_SELECT_SUB_CLASS[ID_LANG];

      Agente.SQL.vnumchatclassificasub := RecordCount;
      SetLength(matrizchatclassificasub, 3, RecordCount);

      while not Eof do
      begin
        matrizchatclassificasub[0, RecNo-1] := Fields[0].AsString;
        matrizchatclassificasub[1, RecNo-1] := Fields[1].AsString;
        matrizchatclassificasub[2, RecNo-1] := Fields[2].AsString;

        Next;
      end; //while not qryChatDesconecta[nSalaChat].Eof do
      Close;
    end;
  end;

end;

procedure TSQL.ChatDesconecta04(nSalaChat: Integer);
begin
  with qryChatDesconecta[nSalaChat] do
  begin
    Close;
    BeforeOpen                            := datam.qryChatDesconecta04BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'Tipo', ptInputOutput);
    Params.CreateParam(ftString, 'TempoPosAtendimento', ptInputOutput);
    Params.CreateParam(ftString, 'ChatClasObs', ptInputOutput);
    Params.CreateParam(ftString, 'IdChatSala', ptInputOutput);

    ParamByName('Tipo').AsString                := IntToStr(vChatClassificandoTipo);
    ParamByName('TempoPosAtendimento').AsString := TimeToStr(Now - dtvChatTempoPosAtendimento[nSalaChat]);
    ParamByName('ChatClasObs').AsString         := frmPrincipal.memChatClassificaObs.Text;
    ParamByName('IdChatSala').AsString          := matrizchatsala[nSalaChat, 1];

    BeforeOpen(TZQuery(qryChatDesconecta[nSalaChat]));
    ExecSQL;
  end;

end;

procedure TSQL.ChatPesquisaHist;
begin

  with datam.qryChatPesquisaHist do
  begin
    if Active then Close;
    Open;
  end;

end;

procedure TSQL.ChatRead01(nFor : Integer);
begin

  with qryChatRead[nFor] do
  begin
    Close;
    BeforeOpen                             := datam.qryChatRead01BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    ParamByName('IdSala').AsString         := matrizchatsala[nFor, 1];
    Open;
  end;

end;

procedure TSQL.ChatRead02(nFor : Integer);
begin

  with qryChatRead[nFor] do
  begin
    Close;
    BeforeOpen                                 := datam.qryChatRead02BeforeOpen;

    Params.Clear;


    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    Params.CreateParam(ftString, 'IdChatXFer', ptInputOutput);
    ParamByName('IdSala').AsString             := matrizchatsala[nFor, 1];
    ParamByName('IdChatXFer').AsString         := IntToStr(nIdChatXFer);
    Open;
  end;

end;

procedure TSQL.ChatRead03(nFor : Integer);
begin

  with qryChatRead[nFor] do
  begin
    Close;
    BeforeOpen                             := datam.qryChatRead03BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    ParamByName('IdSala').AsString         := sUpdateId;

    BeforeOpen(TZQuery(qryChatRead[nFor]));
    ExecSQL;
  end;


end;

procedure TSQL.ChatRead04(nFor: Integer);
begin
  with qryChatRead[nFor] do
  begin
    Close;
    BeforeOpen                             := datam.qryChatRead04BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    ParamByName('IdSala').AsString         := sUpdateId;
    Open;
  end;

end;

procedure TSQL.ChatSup01(nSalaChat: Integer);
begin
  with qryChatSup[nSalaChat] do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    BeforeOpen                             := datam.qryChatSup01BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'SalaSupACT', ptInputOutput);
    ParamByName('SalaSupACT').AsString   := 'sala' + IntToStr(nSalaChat+1) + '_sup_act';

    BeforeOpen(TZQuery(qryChatSup[nSalaChat]));
    ExecSQL;
    Close;
  end;
end;

procedure TSQL.ChatUpdateDash01;
begin

  with datam.qryChatUpdateDash do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;

    BeforeOpen  := datam.qryChatUpdateDash01BeforeOpen;

    BeforeOpen(TZQuery(datam.qryChatUpdateDash));
    ExecSQL;
    Close;
  end;


end;

procedure TSQL.ChatUpdateDash02(nSalaChat: Integer);
begin

  with datam.qryChatUpdateDash do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;

    BeforeOpen  := datam.qryChatUpdateDash02BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'sSala_ctr_id', ptInputOutput);
    ParamByName('sSala_ctr_id').AsString    := matrizchatsala[nSalaChat, 1];

    BeforeOpen(datam.qryChatUpdateDash);
    ExecSQL;
    Close;
  end;
end;

procedure TSQL.ChatUpdateDash03;
begin

  with datam.qryChatUpdateDash do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;

    BeforeOpen  := datam.qryChatUpdateDash03BeforeOpen;

    BeforeOpen(datam.qryChatUpdateDash);
    ExecSQL;
    Close;
  end;

end;

procedure TSQL.ChatXFer01(nSalaChat: Integer);
begin
  with qryChatXFer[nSalaChat] do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    BeforeOpen                             := datam.qryChatXFer01BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'IdSala', ptInputOutput);
    ParamByName('IdSala').AsString         := matrizchatsala[nSalaChat, 1];

    BeforeOpen(qryChatXFer[nSalaChat]);
    ExecSQL;
    Close;
  end;
end;

procedure TSQL.ChatXFer02(nSalaChat: Integer; sTag : String);
begin

  with qryChatXFer[nSalaChat] do
  begin
    // Verifica se esta ativo e fecha se sim
    If Active then Close;
    BeforeOpen                             := datam.qryChatXFer02BeforeOpen;

    Params.Clear;
    Params.CreateParam(ftString, 'ClienteNome', ptInputOutput);
    Params.CreateParam(ftString, 'ClienteEmail', ptInputOutput);
    Params.CreateParam(ftString, 'Telefone', ptInputOutput);
    Params.CreateParam(ftString, 'WebURL', ptInputOutput);
    Params.CreateParam(ftString, 'Tag', ptInputOutput);
    Params.CreateParam(ftString, 'Transfered_id', ptInputOutput);
    Params.CreateParam(ftString, 'EasyChatMotorConfID', ptInputOutput);


    ParamByName('ClienteNome').AsString          := matrizchatsala[nSalaChat, 2];
    ParamByName('ClienteEmail').AsString         := matrizchatsala[nSalaChat, 3];
    ParamByName('Telefone').AsString             := matrizchatsala[nSalaChat, 4];
    ParamByName('WebURL').AsString               := matrizchatsala[nSalaChat, 5];
    ParamByName('Tag').AsString                  := sTag;
    ParamByName('Transfered_id').AsString        := matrizchatsala[nSalaChat, 1];
    ParamByName('EasyChatMotorConfID').AsString  := matrizchatsala[nSalaChat, 8];

    BeforeOpen(qryChatXFer[nSalaChat]);
    ExecSQL;
    Close;
  end;


end;

procedure TSQL.Conferencia;
begin

  with datam.qryConferencia do
  begin
    if Active then Close;
    Open;

    TMyConfCallClass.nQtdConfCall := RecordCount;
    SetLength(TMyConfCallClass.matrizConfCall, RecordCount, 3);

    if TMyConfCallClass.nQtdConfCall > 0 then
    begin
      frmPrincipal.cmdConferencia.Enabled := True;
      frmPrincipal.cmdExecConf.Enabled    := False;
      frmPrincipal.cmdCreateConf.Enabled  := False;
      frmPrincipal.cmdDestroyConf.Enabled := False;

      while not Eof do
      begin
        TMyConfCallClass.matrizConfCall[RecNo-1, 0] := Fields[0].AsString;
        TMyConfCallClass.matrizConfCall[RecNo-1, 1] := Fields[1].AsString;
        TMyConfCallClass.matrizConfCall[RecNo-1, 2] := Fields[2].AsString;

        if TMyConfCallClass.matrizConfCall[RecNo-1, 2] = 'S' then
          Agente.SQL.ConferenciaTipoNInterno;

        if TMyConfCallClass.matrizConfCall[RecNo-1, 2] = 'N' then
          Agente.SQL.ConferenciaTipoNExterno;

        Next;
      end;

      Close;
    end; //if TMyConfCallClass.nQtdConfCall > 0 then
  end;
end;

procedure TSQL.ConferenciaTipoNExterno;
begin
  with datam.qryConferenciaTipoNExterno do
  begin
    if Active then Close;
    Open;

    TMyConfCallClass.nQtdExtConfCall := RecordCount;
    SetLength(TMyConfCallClass.matrizExtConfCall, RecordCount, 4);

    First;
    if TMyConfCallClass.nQtdExtConfCall > 0 then
    begin
      while not Eof do
      begin

        TMyConfCallClass.matrizExtConfCall[RecNo-1, 0] := Fields[0].AsString;
        TMyConfCallClass.matrizExtConfCall[RecNo-1, 1] := Fields[1].AsString;
        TMyConfCallClass.matrizExtConfCall[RecNo-1, 2] := Fields[2].AsString;
        TMyConfCallClass.matrizExtConfCall[RecNo-1, 3] := Fields[3].AsString;

        Next;
      end;
    end;

    Close;
  end;

end;

procedure TSQL.ConferenciaTipoNInterno;
begin
  with datam.qryConferenciaTipoNInterno do
  begin
    if Active then Close;
    Open;

    TMyConfCallClass.nQtdIntConfCall := RecordCount;
    SetLength(TMyConfCallClass.matrizIntConfCall, RecordCount, 3);

    First;

    if TMyConfCallClass.nQtdIntConfCall > 0 then
    begin
      while not Eof do
      begin

        TMyConfCallClass.matrizIntConfCall[RecNo-1, 0] := Fields[0].AsString;
        TMyConfCallClass.matrizIntConfCall[RecNo-1, 1] := Fields[1].AsString;
        TMyConfCallClass.matrizIntConfCall[RecNo-1, 2] := Fields[2].AsString;

        Next;
      end;
    end;

    Close;
  end;

end;

procedure TSQL.EnviaMSGChat(nSalaChat: Integer; sMensagem, sMsgTo: String);
begin

  with qryChatWrite[nSalaChat] do
  begin

    if nSalaChat <> -1 then
    begin
      if (matrizchatsala[nSalaChat, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nSalaChat, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
      begin

        if Active then Close;

        Params.Clear;
        Params.CreateParam(ftString, 'Tipo', ptInputOutput);
        Params.CreateParam(ftString, 'MsgAutoACT', ptInputOutput);
        Params.CreateParam(ftString, 'Msg', ptInputOutput);
        Params.CreateParam(ftString, 'ColaboradorConfId', ptInputOutput);
        Params.CreateParam(ftString, 'ContatosCtrlId', ptInputOutput);
        Params.CreateParam(ftString, 'Waittime_Ag', ptInputOutput);
        Params.CreateParam(ftString, 'WaitTime_Cl', ptInputOutput);

        ParamByName('Tipo').AsString              := sMsgTo;
        ParamByName('MsgAutoACT').AsString        := 'N';
        ParamByName('Msg').AsString               := sMensagem;
        ParamByName('ColaboradorConfId').AsString := TMyInfoLogin.sIDUsuario;
        ParamByName('ContatosCtrlId').AsString    := matrizchatsala[nSalaChat, 1];
        ParamByName('Waittime_Ag').AsString       := TimeToStr(Now - dtvChatTempoInativoAgenteIni[nSalaChat]);
        ParamByName('WaitTime_Cl').AsString       := TimeToStr(Now - dtvChatTempoInativoClienteIni[nSalaChat]);

        BeforeOpen(qryChatWrite[nSalaChat]);
        ExecSQL;
        Close;
      end;
    end;
  end;

end;

procedure TSQL.SetChatFilaIn(const Value: String);
begin
  FChatFilaIn := Value;
end;

procedure TSQL.SetChatHistoricoData(const Value: TDateTime);
begin
  FChatHistoricoData := Value;
end;

procedure TSQL.SetChatHistoricoEMail(const Value: String);
begin
  FChatHistoricoEMail := Value;
end;

procedure TSQL.SetChatHistoricoNome(const Value: String);
begin
  FChatHistoricoNome := Value;
end;

procedure TSQL.SetChatHistoricoProtocolo(const Value: String);
begin
  FChatHistoricoProtocolo := Value;
end;

procedure TSQL.SetChatHistoricoSala(const Value: String);
begin
  FChatHistoricoSala := Value;
end;

procedure TSQL.SetChatHistoricoTelefone(const Value: String);
begin
  FChatHistoricoTelefone := Value;
end;

procedure TSQL.SetsRespChatIn(const Value: String);
begin
  FsRespChatIn := Value;
end;


procedure TSQL.SetsVNumPausa(const Value: Integer);
begin
  FsVNumPausa := Value;
end;

procedure TSQL.Setvnumcentrocusto(const Value: Integer);
begin
  Fvnumcentrocusto := Value;
end;

procedure TSQL.Setvnumchatclassifica(const Value: Integer);
begin
  Fvnumchatclassifica := Value;
end;

procedure TSQL.Setvnumchatclassificasub(const Value: Integer);
begin
  Fvnumchatclassificasub := Value;
end;

procedure TSQL.Setvnumchatresp(const Value: Integer);
begin
  Fvnumchatresp := Value;
end;

procedure TSQL.Setvnumchatrespgrupo(const Value: Integer);
begin
  Fvnumchatrespgrupo := Value;
end;

procedure TSQL.Setvnumclasssub_fila(const Value: Integer);
begin
  Fvnumclasssub_fila := Value;
end;

procedure TSQL.Setvnumclass_fila(const Value: Integer);
begin
  Fvnumclass_fila := Value;
end;

procedure TSQL.Setvnumcoaching(const Value: Integer);
begin
  Fvnumcoaching := Value;
end;

procedure TSQL.Setvnumemails(const Value: Integer);
begin
  Fvnumemails := Value;
end;

procedure TSQL.Setvnumfila(const Value: Integer);
begin
  Fvnumfila := Value;
end;

procedure TSQL.Setvnumloja(const Value: Integer);
begin
  Fvnumloja := Value;
end;

procedure TSQL.Setvnumsites(const Value: Integer);
begin
  Fvnumsites := Value;
end;

procedure TSQL.Setvnumxferconsulta(const Value: Integer);
begin
  Fvnumxferconsulta := Value;
end;

procedure TSQL.Setvnumxferfila(const Value: Integer);
begin
  Fvnumxferfila := Value;
end;

procedure TSQL.Setvnumxferpesquisa(const Value: Integer);
begin
  Fvnumxferpesquisa := Value;
end;

procedure TSQL.Setvnumxferramal(const Value: Integer);
begin
  Fvnumxferramal := Value;
end;

procedure TSQL.Setvnumxferura(const Value: Integer);
begin
  Fvnumxferura := Value;
end;

procedure TSQL.Setvnumxfervirtual(const Value: Integer);
begin
  Fvnumxfervirtual := Value;
end;

procedure TSQL.UpdateStatus;
begin

  with datam.qryUpdateStatus do
  begin
    if Active then Close;

    if( (Copy(sNumAge, 1, 5) = 'AGE02')OR
        (Copy(sNumAge, 1, 5) = 'AGE04')) then
      frmPrincipal.tmrSendAGE0X.Enabled := False;

    if( (Copy(sNumAge, 1, 5) = 'AGE03')OR
        (Copy(sNumAge, 1, 5) = 'AGE05')) then
      frmPrincipal.tmrSendAGE0X.Enabled := True;

    BeforeOpen(TZQuery(datam.qryUpdateStatus));
    ExecSQL;

    Close;
  end;

end;

function TSQL.FncVerificaFila: Boolean;
begin

  Result := False;
  with datam.QryOpen do
  begin
    BeforeOpen                       := datam.OpenSQLVerFilaBeforeOpen;

    if Active then Close;
    Open;

    if Not IsEmpty then
      Result := Boolean(IfThen(FieldByName('Existe').AsInteger > 0, 1, 0 ));

    Close;
  end;

end;

function TSQL.FncVerificaClassUniv: Boolean;
begin

  Result := False;
  with datam.QryOpen do
  begin
    BeforeOpen                       := datam.OpenSQLVerClassUnivBeforeOpen;

    if Active then Close;
    Open;

    if Not IsEmpty then
      Result := Boolean(IfThen(FieldByName('Existe').AsInteger > 0, 1, 0 ));

    Close;
  end;

end;

function TSQL.FncVerificaPausa: Boolean;
begin

  Result := False;
  with datam.QryOpen do
  begin
    BeforeOpen                       := datam.OpenSQLVerPausaBeforeOpen;

    if Active then Close;
    Open;

    if Not IsEmpty then
      Result := Boolean(IfThen(FieldByName('Existe').AsInteger > 0, 1, 0 ));

    Close;
  end;

end;



function TSQL.FncVerificaLogin: Integer;
begin

  Result := 0;  // Verdadeiro
  with datam.qryLogin do
  begin
    if Active then Close;
    Open;

// Casos de Usu ('O' significa que � verdadeiro)

    // 1 : Usuario n�o encontrado :: APP_MB_ERR_INVALID_USER
    if Result = 0 then
      Result := IfThen(datam.qryLogin.RecordCount <= 0, 1, 0 ); // Se n�o encontrou nenhum usuario
    if Result = 0 then
      Result := IfThen(datam.qryLogin.FieldByName('Usuario_act').AsString <> 'Y', 1, 0); // Se n�o encontrou usuario

    // 2 : UsuarioLogin Invalido :: APP_MB_ERR_INVALID_LOGIN
    if Result = 0 then
      Result := IfThen(Length(datam.qryLogin.FieldByName('Senha').AsString)<=0, 2, 0); // Se a senha estiver em branco
    if Result = 0 then
      Result := IfThen(TMyInfoLogin.sLoginSenha <> datam.qryLogin.FieldByName('Senha').AsString, 2, 0); // Se as senhas n�o batem

    // 3 : Colaborador :: APP_MB_ERR_INVALID_DEVELOPER
    if Result = 0 then
      Result := IfThen(datam.qryLogin.FieldByName('Colaborador_act').AsString <> 'Y', 3, 0); // Se o colaborador n�o estiver configurado

    // 4 : Opera��o :: APP_MB_ERR_INVALID_OPERATION
    if Result = 0 then
      Result := IfThen(datam.qryLogin.FieldByName('Operacao_act').AsString <> 'Y', 4, 0); //  // Se a opera��o n�o estiver configurado


    // 5 : Usuario Associado Empresa :: APP_MB_ERR_INVALID_COMPANY
    if Result = 0 then
      Result := IfThen(datam.qryLogin.FieldByName('UserEmp_act').AsString <> 'Y', 5, 0); // Se o usuario n�o estiver associado

  end;

end;

function TAgente.VerificaLogado: Boolean;
begin

  Result := False;
  with datam.qrySistemaLogado do
  begin
    if Active then Close;

    Params.Clear;
    Params.CreateParam(ftString, 'IDUser', ptInputOutput);
    ParamByName('IDUser').AsString         := TMyInfoLogin.sIDUsuario;

    Open;

    if RecordCount > 0 then
    begin
      if Fields[0].AsBoolean = True then
      begin
        Active := False;
        application.MessageBox(PChar(APP_MB_ERR_ALREADY_LOGGED[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), 0);
        Result := False;
        Exit;
      end;
    end;
    Close;

    Result := True;
  end;

end;

function TAgente.VerificaVersao : Boolean;
begin
  with datam.qrySistemaVersao do
  begin
    if Active then Close;
    Open;

    if not IsEmpty then
    begin
      if RecordCount > 0 then
      begin
        if Fields[1].AsString <> Agente.VersaoExe then
        begin
          case datam.qrySistemaVersao.Fields[2].AsInteger of
            0:
            begin
              if TMyMachineInfo.sComputer_Name <> 'DSD-W7-MAC' then
                application.MessageBox(PChar(APP_MB_WAR_INVALID_VERSION[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), 0);
            end;
            1:
            begin
              datam.qrySistemaVersao.Active := False;
              if TMyMachineInfo.sComputer_Name <> 'DSD-W7-MAC' then
                application.MessageBox(PChar(APP_MB_ERR_INVALID_VERSION[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), 0);
              Result := False;
              Exit;
            end;
          end;
        end;
      end;
    end else
    begin
      datam.qrySistemaVersao.Active := False;
      if TMyMachineInfo.sComputer_Name <> 'DSD-W7-MAC' then
        application.MessageBox(PChar(APP_MB_ERR_INVALID_VERSION[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), 0);
      Result := False;
      Exit;
    end;
    datam.qrySistemaVersao.Active := False;
    Result := True;
  end;
end;

procedure TSQL.CarregaChatTrans;
begin

//CarregaChatTrans(mitChatXFer, mnuChatMoreOptions, mitChatXFerAssuntoClick);
  with frmPrincipal do
  begin

    if Assigned(mitChatXFer) then mitChatXFer.Clear;
    with datam.qryChatCarregaTrans do
    begin
      if Active then Close;
      Open;

      First;
      while not Eof do
      begin
        mitChatXFerAssunto[RecNo-1]         := TMenuItem.Create(mnuChatMoreOptions);
        mitChatXFerAssunto[RecNo-1].Caption := matrizchatassunto[1, RecNo-1];
        mitChatXFerAssunto[RecNo-1].OnClick := mitChatXFerAssuntoClick;
        mitChatXFerAssunto[RecNo-1].Tag     := StrToInt(matrizchatassunto[0, RecNo-1]);

        Next;
      end;

      Close;
    end;

  end;


end;

procedure TSQL.CarregaClassFila;
begin

  with datam.qry_carrega_class_fila do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumclass_fila := datam.qry_carrega_class_fila.recordcount;
    SetLength(matrizclassifica_fila, 3, RecordCount);

    First;
    while not Eof do
    begin
      matrizclassifica_fila[0,RecNo-1] := Fields[0].AsString;
      matrizclassifica_fila[1,RecNo-1] := Fields[1].AsString;
      matrizclassifica_fila[2,RecNo-1] := Fields[2].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaClassFilaSub;
begin

  with datam.qry_carrega_class_fila_sub do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumclasssub_fila := RecordCount;
    SetLength(matrizclassificasub_fila, 6, RecordCount);

    First;
    while not Eof do
    begin

      matrizclassificasub_fila[0,RecNo-1] := Fields[0].AsString;
      matrizclassificasub_fila[1,RecNo-1] := Fields[1].AsString;
      matrizclassificasub_fila[2,RecNo-1] := Fields[2].AsString;
      matrizclassificasub_fila[3,RecNo-1] := Fields[3].AsString;
      matrizclassificasub_fila[4,RecNo-1] := Fields[4].AsString;
      matrizclassificasub_fila[5,RecNo-1] := Fields[5].AsString;

      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaCoaching;
begin
  with datam.qryCarregaCoaching do
  begin
    if Active then Close;
    Open;

    Agente.SQL.vnumcoaching := RecordCount;
    SetLength(matrizcoaching, 2, RecordCount);

    First;
    while not Eof do
    begin
      matrizcoaching[0,RecNo-1] := Fields[0].AsString;
      matrizcoaching[1,RecNo-1] := Fields[1].AsString;
      Next;
    end;

    Close;
  end;

end;

procedure TSQL.CarregaEmails;
begin
  with datam.qryCarregaEMails do
  begin
    if Active then Close;
    Open;


    Agente.SQL.vnumemails := RecordCount;
    SetLength(matrizemails, RecordCount, 10);

    First;
    while not Eof do
    begin

      matrizemails[RecNo-1,0] := Fields[0].AsString;
      matrizemails[RecNo-1,1] := Fields[1].AsString;
      matrizemails[RecNo-1,2] := Fields[2].AsString;
      matrizemails[RecNo-1,3] := Fields[3].AsString;
      matrizemails[RecNo-1,4] := Fields[4].AsString;
      matrizemails[RecNo-1,5] := Fields[5].AsString;
      matrizemails[RecNo-1,6] := Fields[6].AsString;
      matrizemails[RecNo-1,7] := Fields[7].AsString;
      matrizemails[RecNo-1,8] := Fields[8].AsString;
      matrizemails[RecNo-1,9] := Fields[9].AsString;
      frmPrincipal.CriaEMailDinamico(RecNo-1);

      Next;
    end;

    Close;
  end;

end;

{ TProcesso }

procedure TProcesso.CentroCusto;
  Var RecNo : Integer;
begin

  if TMyInfoLogin.bRotaInteligente = False then
    Agente.SQL.CentroCusto
  else
  begin
    Agente.SQL.vnumcentrocusto := 1;
    SetLength(matrizcentrocusto,2,Agente.SQL.vnumcentrocusto);

    matrizcentrocusto[0,0] := IntToStr(TMyInfoLogin.nIdRotaInteligente);
    matrizcentrocusto[1,0] := 'Default';
  end;//if TMyInfoLogin.bRotaInteligente = False then
  //Centro de Custo
end;

procedure TProcesso.Conferencia;
  Var ind    : Integer;
      indSub : Integer;
begin

  if TMyInfoLogin.bConferencia then
  begin

    Agente.SQL.Conferencia;

    frmPrincipal.cboConfCallFilter.Items.Clear;
    frmPrincipal.cboConfCallFilter.Items.Add('Interno');
    frmPrincipal.cboConfCallFilter.Items.Add('Externo');

    frmPrincipal.txtConfCallFind.Enabled := False;
    frmPrincipal.txtConfCallFind.Text := '';

    frmPrincipal.lstConfCallFind.Items.Clear;
    frmPrincipal.lstConfCallFind.Visible := False;
    try
      frmPrincipal.lstConfCallFind.Repaint;
      frmPrincipal.lstConfCallFind.Refresh;
    except end;
  end;
end;

{ TEquipeTrabalha }

procedure TEquipeTrabalha.SetAvisaouNao(const Value: Boolean);
begin
  FAvisaouNao := Value;
end;

procedure TEquipeTrabalha.SetCount(const Value: Integer);
begin
  FCount := Value;
end;

procedure TEquipeTrabalha.SetHr_Entrada(const Value: TTime);
begin
  FHr_Entrada := Value;
end;

procedure TEquipeTrabalha.SetHr_MSG(const Value: TTime);
begin
  FHr_MSG := Value;
end;

procedure TEquipeTrabalha.SetHr_Saida(const Value: TTime);
begin
  FHr_Saida := Value;
end;

procedure TEquipeTrabalha.SetMsg(const Value: String);
begin
  FMsg := Value;
end;

procedure TEquipeTrabalha.SetMsgAvisada(const Value: Boolean);
begin
  FMsgAvisada := Value;
end;


procedure TEquipeTrabalha.SetNaoFazNada(const Value: Boolean);
begin
  FNaoFazNada := Value;
end;

procedure TEquipeTrabalha.SetVerificaReg(const Value: Boolean);
begin
  FVerificaReg := Value;
end;

procedure TmpEquipeHrTrabTimer(Sender: TObject);
  Var bProcessando : Boolean;
       tHrAtual    : TDateTime;
       tHr_Entrada : TDateTime;
       tHr_Saida   : TDateTime;
       tHr_Msg     : TDateTime;
       bHr_inicio  : Boolean;
       bHr_Termino : Boolean;
       bHr_MSG     : Boolean;
       mHr         : Word;
       mMm         : Word;
       mSeg        : Word;


  {Sub}procedure prcAlimentaVariaveis;
  begin
    with frmPrincipal do
    begin
        tHrAtual := Now;

      tHr_Entrada := 0;
      tHr_Saida   := 0;

      FormatTime(Agente.EquipeHrTrab.Hr_Entrada, mHr, mMm, mSeg);
      tHr_Entrada := EncodeDateTime(YearOf(Now), MonthOf(Now), DayOf(Now), mHr, mMm, mSeg, 00);

      FormatTime(Agente.EquipeHrTrab.Hr_Saida, mHr, mMm, mSeg);
      tHr_Saida   := EncodeDateTime(YearOf(Now), MonthOf(Now), DayOf(Now), mHr, mMm, mSeg, 00);

      FormatTime(Agente.EquipeHrTrab.Hr_MSG, mHr, mMm, mSeg);
      tHr_Msg     := EncodeDateTime(YearOf(Now), MonthOf(Now), DayOf(Now), mHr, mMm, mSeg, 00);

      // "0" False/"1" True
      bHr_inicio  := Boolean(IfThen(tHrAtual >= tHr_Entrada, 1, 0)); // Sera Verdadeiro se Hr Atual >= Hr de Entrada
      bHr_Termino := Boolean(IfThen(tHrAtual <= tHr_Saida  , 1, 0));   // Sera Verdadeiro se Hr Atual <= Hr de Saida
      bHr_MSG     := False;

      if Length(Trim(Agente.EquipeHrTrab.Msg)) > 0 then  // Realmente existe alguma MSG
        if tHrAtual >= tHr_Msg then // Temos que avisar ao usuario ? Se a Hora Atual >= Hr da Mensagem
          if Agente.EquipeHrTrab.AvisaouNao then // foi configurado para avisar ao usuario ?
            if Not Agente.EquipeHrTrab.MsgAvisada then // Se ja foi avisada n�o avisar mais
              bHr_MSG := True;
    end;
  end;

begin
  TmpEquipeHrTrab.Enabled := False;
  Agente.EquipeHrTrab.NaoFazNada := False;

  // Verificar novamente se as informa��es n�o foram mudadas
    // Se as Hrs De/Ate n�o est�o no prazo ou
    // Se as Hr da mensagem esta no prazo e se ainda n�o foi apresentada
  prcAlimentaVariaveis;
  // Verificar no ultimo minuto se os registros n�o foram mudados e se a Hr Atual realmente
  // n�o esta entre a  Hr de Inicio ea Hr de Saida.
  if (bHr_inicio=false)xor(bHr_Termino=false) then // Se a Hr Atual entre as Hr de Inicio e Hr de Saida n�o estiver entre elas
    if not Agente.EquipeHrTrab.VerificaReg then // Nesse momento se true, ja foi "re-verificado" o registro
    begin
      Agente.EquipeHrTrab.fncTempoTrabalho(False);
      Agente.EquipeHrTrab.VerificaReg := True;
      Agente.EquipeHrTrab.MsgAvisada  := False; // Para poder avisar novamente se configurado
      prcAlimentaVariaveis;
    end;

  // Se estiver fora dos intervalos de Entrada e Saida, fechar a aplica��o
  if (bHr_inicio=false)xor(bHr_Termino=false) then
  begin
    Agente.EquipeHrTrab.NaoFazNada := True;

    frmPrincipal.tbrNavegacao.Enabled      := False;
    frmPrincipal.pgcBrowser.Visible        := False;

    if not frmPrincipal.tmrDuracao.enabled then
    begin
      if Assigned(frmPrincipal.Vax) then frmPrincipal.Vax.UnInitialize()
    end
    else
    begin
      frmPrincipal.lblDescTempoPausa.Caption := 'Seu tempo de atendimento foi esgotado!'+#13+'Ap�s o atendimento o agente ser� fechado';
      frmPrincipal.lblDescTempoPausa.Color   := clYellow;
      frmPrincipal.pnrestricao.Color         := clYellow;
      frmPrincipal.pnrestricao.visible       := true;
      frmPrincipal.pnstatus.Visible          := false;
    end;

    MessageDlg('Somente � permitido no(s) hor�rio(s) da(s) '+FormatDateTime('HH:MM:SS', tHr_Entrada)+' '+
               'at� a(s) '+FormatDateTime('HH:MM:SS', tHr_Saida) ,mtError,[mbOk],0);

    if not frmPrincipal.tmrDuracao.enabled then
    begin
      frmPrincipal.actlogoffExecute(Sender);
      Application.Terminate;
    end;

    Exit;
  end else
  if bHr_MSG then // Mensagem de antecipa��o, avisando o usuario sobre o tempo que ir� fechar o sistema
  begin

    TmrMsg.Interval := 10000; // Tempo que a msg ficar� na tela -> 5 Segs
    TmrMsg.Enabled  := True;
    if Agente.EquipeHrTrab.AvisaouNao then // foi configurado para avisar ao usuario ?
      MessageBox(0, PChar(Agente.EquipeHrTrab.Msg), Pchar('Aten��o'), 8224);

//    MmSg :=Agente.EquipeHrTrab.Msg;
//    TmrMsg.Enabled := True;
    Agente.EquipeHrTrab.MsgAvisada := True; // Informando que a MSG ja foi comunicada ao usuario
  end;

  if not Agente.EquipeHrTrab.NaoFazNada then
  begin
    TmpEquipeHrTrab.Interval := 5000; // em 5 e 5 Segundos se olha este processo
    // Retornando o processo do Timer
    TmpEquipeHrTrab.Enabled := True;
  end;
end;

procedure TmrMsgTimer(Sender: TObject);
begin
 keybd_event(VK_RETURN,0,0,0);
 TmrMsg.Enabled := False;
end;

procedure FormatTime(Hora : TTime; Var Hour, Min, Sec : Word );
begin
  Hour := StrToInt(Copy(TimeToStr(Hora), 1,2));
  Min  := StrToInt(Copy(TimeToStr(Hora), 4,2));
  Sec  := StrToInt(Copy(TimeToStr(Hora), 7,2));
end;




end.

