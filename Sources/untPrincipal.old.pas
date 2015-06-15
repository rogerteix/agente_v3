unit untPrincipal;

interface

uses
  {Winapi.}Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnList, Vcl.ImgList, sSkinManager,
  sPanel, sToolBar, sScrollBox,  sButton, sSkinProvider,
  Vcl.OleCtrls, VAXSIPUSERAGENTOCXLib_TLB, inifiles, sBevel, sCheckBox, sLabel,
  sPageControl, sEdit, sFrameBar, untfrmcontroles, sStatusBar,
  Vcl.Grids, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, acProgressBar, Vcl.Buttons,
  sSpeedButton, SHDocVw, acPNG, ZDataset, sMemo, ShellApi, sComboBox,
  sRichEdit, fs_synmemo, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZStoredProcedure, sGroupBox, Vcl.Menus, Vcl.DBGrids, ClipBrd, Vcl.Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sListBox, sListView, sTreeView,
  ad3SpellBase, ad3Spell, ad4Live, IdRawBase, IdRawClient, IdIcmpClient,
  Vcl.MPlayer, MMSystem, sTabControl, StrUtils, Registry, RichEdit,
  ZConnection, SCREEN2VIDEOLib_TLB, PdfDoc, PReport, PRAnnotation,
  PRJpegImage, RotinasGerais, untStartup, sScrollBar, OverbyteIcsWndControl,
  OverbyteIcsWSocket;

type
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
    sNome             : String;
    sUsuario          : String;
    sEMail            : String;
    sRamal            : String;
    sIDUsuario        : String;
    sSenha            : String;
    sIPPABX           : String;
    sIDOperacao       : String;
    sIDEmpresa        : String;
    bConferencia      : Boolean;
    sIDSupervisor     : String;
    nTipo             : Integer;
    sQualidadePLogin  : String;
    sPerfil           : String;

    bRotaInteligente  : Boolean;
    nIdRotaInteligente: Integer;

    nChatSalasQtd     : Integer;

    //Utilizado no integrador
    sCodigoExterno    : String;

    //Recupera dialpad
    bDialPad          : Boolean;

    //Data/Hora BD
    sDataLogin        : String;
    sHoraLogin        : String;

    //Qualidade da Chamada
    bQualidadeChamada : Boolean;
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

type
  TfrmPrincipal = class(TForm)
    ActionList1: TActionList;
    actlogin: TAction;
    ImageList1: TImageList;
    sSkinManager1: TsSkinManager;
    pnprincipal: TsPanel;
    actsair: TAction;
    vax: TVaxSIPUserAgentOCX;
    actlogoff: TAction;
    tmrDuracao: TTimer;
    tmativo: TTimer;
    tmlogoff: TTimer;
    actweb: TAction;
    actrelatorio: TAction;
    imltempo: TImageList;
    pncontrol: TPanel;
    pbvolumeout: TsProgressBar;
    pbvolumein: TsProgressBar;
    frameBar: TsFrameBar;
    tmrSoundLevel: TTimer;
    panGeral: TsPanel;
    sPanel5: TsPanel;
    tbrNavegacao: TsToolBar;
    ilbrowser: TImageList;
    btnCliente: TToolButton;
    btnAgenda: TToolButton;
    albrowser: TActionList;
    actclientes: TAction;
    actagenda: TAction;
    tmrPausa: TTimer;
    btnScript: TToolButton;
    btnChat: TToolButton;
    btnEMail: TToolButton;
    btnFAX: TToolButton;
    btnSMS: TToolButton;
    btnPesquisa: TToolButton;
    btnAjuda: TToolButton;
    actscript: TAction;
    actchat: TAction;
    actemail: TAction;
    actfax: TAction;
    actsms: TAction;
    actpesquisa: TAction;
    actajuda: TAction;
    tmrPausaPos: TTimer;
    edtbrowser: TEdit;
    pgcBrowser: TsPageControl;
    tabCliente: TsTabSheet;
    browsercliente: TWebBrowser;
    tabAgenda: TsTabSheet;
    browseragenda: TWebBrowser;
    tabScript: TsTabSheet;
    browserscript: TWebBrowser;
    tabChat: TsTabSheet;
    tabEMail: TsTabSheet;
    tabFAX: TsTabSheet;
    browserfax: TWebBrowser;
    tabSMS: TsTabSheet;
    browsersms: TWebBrowser;
    tabPesquisa: TsTabSheet;
    browserpesquisa: TWebBrowser;
    tabAjuda: TsTabSheet;
    browserajuda: TWebBrowser;
    tmrRestricao: TTimer;
    stbStatusBar: TsStatusBar;
    shpStatus: TShape;
    timerstatuslinha: TTimer;
    tmrLastClassAuto: TTimer;
    tmrVerificaLoginAtivo: TTimer;
    tmrVerificaTrocaPausa: TTimer;
    tmrPausaLogin: TTimer;
    tmrVaxRequestFailure: TTimer;
    tmrChatQueue: TTimer;
    sLabel1: TsLabel;
    imlChat: TImageList;
    panChat: TsPanel;
    panChatMessages: TsPanel;
    stbChat: TsStatusBar;
    Shape1: TShape;
    panChatRight: TsPanel;
    grpChatClassificacao: TsGroupBox;
    lblChatClassificacao: TsLabel;
    lblChatSubClassificacao: TsLabel;
    lblChatObservacao: TsLabel;
    cboChatClassifica: TsComboBox;
    cboChatClassificaSub: TsComboBox;
    memChatClassificaObs: TsMemo;
    cmdChatSalvar: TsButton;
    panChatHistorico: TsPanel;
    sButton1: TsButton;
    panChatSend: TsPanel;
    sButton2: TsButton;
    grpChatPesquisaHist: TsGroupBox;
    lblChatHistoricoNome: TsLabel;
    lblChatHistoricoTelefone: TsLabel;
    lblChatHistoricoProtocolo: TsLabel;
    cmdChatPesquisarHist: TsButton;
    mnuChatMoreOptions: TPopupMenu;
    mitChatURL: TMenuItem;
    mitChatXFer: TMenuItem;
    txtChatHistoricoNome: TsEdit;
    txtChatHistoricoTelefone: TsEdit;
    txtChatHistoricoProtocolo: TsEdit;
    lblChatHistoricoEMail: TsLabel;
    txtChatHistoricoEMail: TsEdit;
    lblChatHistoricoSala: TsLabel;
    txtChatHistoricoSala: TsEdit;
    grdChatPesquisaHist: TDBGrid;
    tabChatHist: TsTabSheet;
    memChatPesquisaHistorico: TsRichEdit;
    mitChatCopy: TMenuItem;
    cmdChatCopiarHistorico: TsButton;
    txtChatHistoricoData: TsDateEdit;
    lblChatHistoricoData: TsLabel;
    tabFAQ: TsTabSheet;
    mnuChatFAQ: TPopupMenu;
    mitChatFAQ: TMenuItem;
    btnFAQ: TToolButton;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    panChatFAQURLDesabilitado: TsPanel;
    browserChatFAQDesabilitado: TWebBrowser;
    txtChatFAQURLDesabilitado: TsEdit;
    mitChatFAQFindGroup: TMenuItem;
    mitChatFAQFindAnswer: TMenuItem;
    AddictSpell: TAddictSpell;
    mitChatSup: TMenuItem;
    icmpClientPing: TIdIcmpClient;
    tmrIcmpPing: TTimer;
    panInfo: TsPanel;
    sPanel3: TsPanel;
    lblDescInicio: TsLabel;
    lbinicio: TsLabel;
    lblDescDuracao: TsLabel;
    lbduracao: TsLabel;
    lblDescPausa: TsLabel;
    lbtempopausa: TsLabel;
    lbpausarest: TsLabel;
    btnDesligar: TsButton;
    sPanel1: TsPanel;
    imgtempo: TImage;
    lbtempo: TsLabel;
    panInfoChamada: TsPanel;
    lbbina: TsLabel;
    lbfila: TsLabel;
    lblDescNumero: TsLabel;
    lblDescFila: TsLabel;
    lblDescCliente: TsLabel;
    lbcliente: TsLabel;
    sPanel6: TsPanel;
    lblDescProtocolo: TsLabel;
    lbprotocolo: TsLabel;
    pnstatus: TsPanel;
    lbstatus: TLabel;
    pnrestricao: TsPanel;
    lblDescTempoPausa: TsLabel;
    sPanel10: TsPanel;
    sLabel2: TsLabel;
    sPanel11: TsPanel;
    sPanel12: TsPanel;
    txtFAQFind: TsEdit;
    sLabel7: TsLabel;
    cboFAQFilter: TsComboBox;
    sLabel3: TsLabel;
    panFAQSub: TsPanel;
    lstFAQFind: TsListBox;
    panFAQSep: TsPanel;
    lstFAQFindSub: TsListBox;
    sPanel14: TsPanel;
    sPanel4: TsPanel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    lblChatPesquisaHistoricoNome: TsLabel;
    lblChatPesquisaHistoricoTelefone: TsLabel;
    lblChatPesquisaHistoricoProtocolo: TsLabel;
    lblChatPesquisaHistoricoEMail: TsLabel;
    lblChatPesquisaHistoricoSala: TsLabel;
    sPanel13: TsPanel;
    cmdChatHistoricoFechar: TsButton;
    panChatRoom: TsPanel;
    sPanel15: TsPanel;
    cmdChatSend: TsButton;
    cmdChatClear: TsButton;
    chkChatRolagem: TsCheckBox;
    sPanel19: TsPanel;
    cboChatGroup: TsComboBox;
    cboChatDefaultMsg: TsComboBox;
    radChatSendTo: TsRadioGroup;
    sPanel18: TsPanel;
    sPanel17: TsPanel;
    memChatSend: TsMemo;
    sPanel16: TsPanel;
    wavAudioRing: TMediaPlayer;
    tmrAudioRing: TTimer;
    tabConferencia: TsTabSheet;
    cmdConferencia: TToolButton;
    actConferencia: TAction;
    sPanel20: TsPanel;
    sPanel21: TsPanel;
    lstConfCallFind: TsListBox;
    sPanel24: TsPanel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    txtConfCallFind: TsEdit;
    cboConfCallFilter: TsComboBox;
    sPanel23: TsPanel;
    sPanel22: TsPanel;
    grpConfDigitsL1: TsGroupBox;
    memConfDigitsL1: TsMemo;
    grpConfDigitsL0: TsGroupBox;
    memConfDigitsL0: TsMemo;
    cmdExecConf: TsButton;
    cmdDestroyConf: TsButton;
    cmdCreateConf: TsButton;
    mnuCopyInfoCall: TPopupMenu;
    mitCopyInfoCall: TMenuItem;
    tbrTop: TsToolBar;
    btnLogin: TToolButton;
    btnLogoff: TToolButton;
    btnFechar: TToolButton;
    cmdMinimizar: TToolButton;
    cmdMaximizar: TToolButton;
    tbrSeparator: TToolButton;
    sPanel2: TsPanel;
    shpCoaching: TShape;
    lblDescCoaching: TsLabel;
    tmrEnableConference: TTimer;
    mitChatBlob: TMenuItem;
    Screen2Video: TScreen2Video;
    tmrGravacaoTelaSplit: TTimer;
    cmdChatHistoricoGerarPDF: TsButton;
    cmdChatGerarPDF: TsButton;
    memChatFAQText: TMemo;
    webExecNavigate: TWebBrowser;
    lblLoja: TsLabel;
    lblDescLoja: TsLabel;
    sPanel9: TsPanel;
    memTranscricao: TsMemo;
    sPanel25: TsPanel;
    lblTranscricao: TsLabel;
    panEMailPrincipal: TsPanel;
    scrEMailRecebido: TsScrollBox;
    txtEMailPesquisar: TsEdit;
    imgEMailPesquisar: TImage;
    stbEMail: TsLabel;
    shaEMailLine: TShape;
    sToolBar1: TsToolBar;
    panEMailWrite: TsPanel;
    txtEMailRespDe: TsEdit;
    lblEMailRespDe: TsLabel;
    txtEMailRespPara: TsEdit;
    lblEMailRespPara: TsLabel;
    lblEMailRespCc: TsLabel;
    txtEMailRespCc: TsEdit;
    txtEMailRespCco: TsEdit;
    lblEMailRespCco: TsLabel;
    lblEMailRespAssunto: TsLabel;
    txtEMailRespAssunto: TsEdit;
    cmdEMailRespCancelar: TsButton;
    cmdEMailRespEnviar: TsButton;
    memEMailRespTexto: TsMemo;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    panEMailRead: TsPanel;
    lblEMailReadAssunto: TsLabel;
    lblEMailReadDe: TsLabel;
    memEMailReadTexto: TsMemo;
    lblEMailReadDataHora: TsLabel;
    lblEMailReadPara: TsLabel;
    lblEMailReadDataHoraTxt: TsLabel;
    lblEMailReadParaTxt: TsLabel;
    tryPrincipal: TTrayIcon;
    tmrTryPrincipal: TTimer;
    ToolButton4: TToolButton;
    sPanel26: TsPanel;
    imlCallQuality: TImageList;
    imgCallQ1: TImage;
    imgCallQ2: TImage;
    imgCallQ3: TImage;
    imgCallQ4: TImage;
    imgCallQ5: TImage;
    lblCallQuality: TsLabel;
    Button1: TButton;
    Button2: TButton;
    sctRecClientOld: TWSocket;
    MemoOld: TMemo;
    cmdIntegrador: TsButton;
    tmrSendAGE0X: TTimer;
    procedure actloginExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actsairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function InitVaxObject(): WordBool;
    Function VersaoExe: String;
    //function OpenLines(): WordBool;
    function Abrelinha(numlinha: integer): WordBool;
    function GetSelectedAudioOut(): Integer;
    function GetSelectedAudioIn(): Integer;
    procedure VerificaLoginAtivo;
    procedure errormessages;
    procedure discar(numero: string; bUpdateStatus: Boolean);
    procedure carregaoperacao(id: string);
    procedure CarregaTelasLinguagem;
    procedure ativaramal;
    procedure Mensagem(str_mensagem: String);
    procedure habilitaagc;
    procedure habilitamicboost;
    procedure habilitaechonoise;
    procedure vaxFailToRegister(Sender: TObject);
    procedure vaxFailToReRegister(Sender: TObject);
    procedure vaxSuccessToRegister(Sender: TObject);
    procedure vaxTryingToRegister(Sender: TObject);
    procedure vaxTryingToReRegister(Sender: TObject);
    procedure vaxTryingToUnRegister(Sender: TObject);
    procedure actlogoffExecute(Sender: TObject);
    procedure framebarItems2CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure vaxSuccessToConnect(ASender: TObject; LineNo: Integer;
      const ToRTPIP: WideString; ToRTPPort: Integer);
    procedure vaxDisconnectCall(ASender: TObject; LineNo: Integer);
    procedure vaxIncomingCall(ASender: TObject; const CallId, DisplayName,
      UserName, FromURI, ToURI: WideString);
    procedure tmrDuracaoTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Desligar(sTipoDesconexao: String);
    procedure gravaarq(vnum, vname: string);
    procedure tmativoTimer(Sender: TObject);
    procedure tempo_fila(vcallid: string);
    procedure Ligar(vparamnumero: string);
    procedure tmlogoffTimer(Sender: TObject);
    procedure verificalogoff;
    function processacallername(campo: string; indice: integer): string;
    procedure btnDesligarClick(Sender: TObject);
    procedure tmrSoundLevelTimer(Sender: TObject);
    procedure pausar(tipo: string);
    procedure framebarItems1CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure framebarItems0CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure actclientesExecute(Sender: TObject);
    procedure k(Sender: TObject);
    procedure framebarItems3CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    function navegador(tipo: string): string;
    procedure Integrador(nTipo: Integer; nSalaChat: Integer);
    procedure LogCallStep(tipo: String; arg: String);
    procedure LogPing(sTipo: String; sMsg: String);
    procedure despausapos;
    procedure AtivaFlashWindow(bAtiva: Boolean);
    procedure tmrPausaTimer(Sender: TObject);
    procedure actscriptExecute(Sender: TObject);
    procedure actchatExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actfaxExecute(Sender: TObject);
    procedure actsmsExecute(Sender: TObject);
    procedure actpesquisaExecute(Sender: TObject);
    procedure actajudaExecute(Sender: TObject);
    procedure tmrPausaPosTimer(Sender: TObject);
    procedure travapausarestritiva;
    procedure tmrRestricaoTimer(Sender: TObject);
    procedure rotinageral(Sender: TObject; E: Exception);
    procedure vaxGeneralFailureResponse(ASender: TObject; LineNo,
      StatusCode: Integer; const ReasonPhrase: WideString);
    procedure timerstatuslinhaTimer(Sender: TObject);
    procedure framebarItems4CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure tmrLastClassAutoTimer(Sender: TObject);
    procedure tmrVerificaLoginAtivoTimer(Sender: TObject);
    procedure tmrVerificaTrocaPausaTimer(Sender: TObject);
    procedure frameBarChange(Sender: TObject; TitleItem: TsTitleItem);
    procedure tmrPausaLoginTimer(Sender: TObject);
    procedure vaxRequestFailureResponse(ASender: TObject; LineNo,
      StatusCode: Integer; const ReasonPhrase: WideString);
    procedure tmrVaxRequestFailureTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmrChatQueueTimer(Sender: TObject);
    procedure cmdChatSendClick(Sender: TObject);
    procedure memChatSendKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboChatGroupChange(Sender: TObject);
    procedure cboChatDefaultMsgChange(Sender: TObject);
    procedure cmdChatClearClick(Sender: TObject);
    procedure cboChatClassificaChange(Sender: TObject);
    procedure cmdChatSalvarClick(Sender: TObject);
    procedure mitChatURLClick(Sender: TObject);
    procedure mitChatXFerAssuntoClick(Sender: TObject);
    procedure mitChatCopyInfoClick(Sender: TObject);
    procedure cmdChatPesquisarHistClick(Sender: TObject);
    procedure grdChatPesquisaHistDblClick(Sender: TObject);
    procedure cmdChatHistoricoFecharClick(Sender: TObject);
    procedure cmdChatCopiarHistoricoClick(Sender: TObject);
    procedure memChatSendClick(Sender: TObject);
    procedure cboChatGroupClick(Sender: TObject);
    procedure cboChatDefaultMsgClick(Sender: TObject);
    procedure chkChatRolagemClick(Sender: TObject);
    procedure vaxIncomingCallRingingStart(ASender: TObject;
      const CallId: WideString);
    procedure vaxIncomingCallRingingStop(ASender: TObject;
      const CallId: WideString);
    procedure AtendeChamada;
    procedure IniciaGravacaoAudio(nNumLinha: Integer);
    procedure TerminaGravacaoAudio(nNumLinha: Integer);
//    function ConectaGravacaoTela: Boolean;
//    procedure DesconectaGravacaoTela;
    procedure IniciaGravacaoTela(bSplit: Boolean);
    procedure TerminaGravacaoTela;
    procedure CopiaArqGravacaoTela(sSrcFileReceived: String; nSplitStepReceived: Integer);
    function ClassificaChamadaAtiva(
                                    pCallQuality: Integer;
                                    pTranscricao: String;
                                    pGravacaoVideoAct: String;
                                    pGravacaoVideoPath: String;
                                    pObservacao: String;
                                    pAgendamento_tipo: String;
                                    pAgendamento_data: String;
                                    pAgendamento_hora: String;
                                    pDuracao: String;
                                    pDuracao_pos: String;
                                    pDuracao_hold: String;
                                    pTransferida: String;
                                    pTransferida_para: String;
                                    pTransferida_dest: String;
                                    pGravacao_sol_act: String;
                                    pClassificacao_auto_act: String;
                                    pClassificacao_auto_mot: String;
                                    pDialstatus: String;
                                    pPause_act: String;
                                    pCoaching_act: String;
                                    pCoaching_id: String;
                                    pSupervisor_id: String;
                                    pEasy_pabx_fila_ctr_id: String;
                                    pEasy_callcenter_classif_chamada_conf_id: String;
                                    pEasy_callcenter_classif_sub_chamada_conf_id: String;
                                    psipdialid: String;
                                    pTelefone: String
    ): Boolean;
    function ClassificaChamadaReceptiva(
                                    pCallQuality: Integer;
                                    pTranscricao: String;
                                    pGravacaoVideoAct: String;
                                    pGravacaoVideoPath: String;
                                    pObservacao: String;
                                    pAgendamento_tipo: String;
                                    pAgendamento_data: String;
                                    pAgendamento_hora: String;
                                    pDuracao: String;
                                    pDuracao_pos: String;
                                    pDuracao_hold: String;
                                    pTransferida: String;
                                    pTransferida_para: String;
                                    pTransferida_dest: String;
                                    pGravacao_sol_act: String;
                                    pClassificacao_auto_act: String;
                                    pClassificacao_auto_mot: String;
                                    pCoaching_act: String;
                                    pCoaching_id: String;
                                    pSupervisor_id: String;
                                    pEasy_pabx_fila_ctr_id: String;
                                    pEasy_callcenter_classif_chamada_conf_id: String;
                                    pEasy_callcenter_classif_sub_chamada_conf_id: String;
                                    pClasse: String;
                                    pCampo01: String;
                                    pCampo02: String;
                                    pCampo03: String;
                                    pCampo04: String;
                                    pCampo05: String;
                                    pCampo06: String;
                                    pCampo07: String;
                                    pCampo08: String;
                                    pCampo09: String;
                                    pCampo10: String
    ): Boolean;
    function ClassificaChamadaCancelada: Boolean;
    function ClassificaChamadaAuto: Boolean;
    function AtualizaDashBoard_ClassificaChamada: Boolean;
    function ClassificaChat(
                                    pSalaChat: Integer;
                                    pObservacao: String;
                                    pDuracao_pos: String;
                                    pDuracao_hold: String;
                                    pTransferida: String;
                                    pTransferida_para: String;
                                    pTransferida_dest: String;
                                    pClassificacao_auto_act: String;
                                    pClassificacao_auto_mot: String;
                                    pCoaching_act: String;
                                    pCoaching_id: String;
                                    pSupervisor_id: String;
                                    pEasy_webchat_classificacao_conf_id: String;
                                    pEasy_webchat_classificacao_sub_conf_id: String;
                                    pDesconexao: String;
                                    pDesconexao_mot: String;
                                    pCampo01: String;
                                    pCampo02: String;
                                    pCampo03: String;
                                    pCampo04: String;
                                    pCampo05: String;
                                    pEasy_webchat_contatos_ctr_id: String
    ): Boolean;
    procedure ClassificaChatAuto(bTimeout: Boolean);
    procedure ImprimeChatHistorico(
                                  pTipoImpressao: Integer;
                                  pQtdLinhas: Integer;
                                  pHistTitulo: String;
                                  pHistNome: String;
                                  pHistTelefone: String;
                                  pHistProtocolo: String;
                                  pHistEMail: String;
                                  pHistSala: String
    );
    procedure btnFAQClick(Sender: TObject);
    procedure cboFAQFilterChange(Sender: TObject);
    procedure txtFAQFindChange(Sender: TObject);
    procedure lstFAQFindClick(Sender: TObject);
    procedure lstFAQFindSubClick(Sender: TObject);
    procedure mitChatFAQFindGroupClick(Sender: TObject);
    procedure mitChatFAQFindAnswerClick(Sender: TObject);
    procedure mitChatSupClick(Sender: TObject);
    procedure icmpClientPingReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure tmrIcmpPingTimer(Sender: TObject);
    procedure wavAudioRingNotify(Sender: TObject);
    procedure tmrAudioRingTimer(Sender: TObject);
    procedure actConferenciaExecute(Sender: TObject);
    procedure cmdExecConfClick(Sender: TObject);
    procedure vaxDTMFDigit(ASender: TObject; LineNo: Integer;
      const Digit: WideString);
    procedure cboConfCallFilterChange(Sender: TObject);
    procedure txtConfCallFindChange(Sender: TObject);
    procedure lstConfCallFindClick(Sender: TObject);
    procedure cmdDestroyConfClick(Sender: TObject);
    procedure cmdCreateConfClick(Sender: TObject);
    procedure panInfoChamadaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mitCopyInfoCallItensClick(Sender: TObject);
    procedure cmdMinimizarClick(Sender: TObject);
    procedure cmdMaximizarClick(Sender: TObject);
    procedure frameBarItems5CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure tmrEnableConferenceTimer(Sender: TObject);
    procedure mitChatBlobClick(Sender: TObject);
    procedure tmrGravacaoTelaSplitTimer(Sender: TObject);
    procedure cmdChatHistoricoGerarPDFClick(Sender: TObject);
    procedure cmdChatGerarPDFClick(Sender: TObject);
    procedure memChatSendExit(Sender: TObject);
    procedure CriaConsulta(nNumLinha: Integer; nIdRota: Integer; sNumDest: String);
    procedure DesmontaConsulta(nNumLinha: Integer);
    procedure CriaXFerAssistida(nNumLinha: Integer; nIdRota: Integer; sNumDest: String);
    procedure ExecutaXFerAssistida(nNumLinha1: Integer; nNumLinha2: Integer);
    procedure DesmontaXFerAssistida(nNumLinha: Integer);
    procedure txtEMailPesquisarEnter(Sender: TObject);
    procedure txtEMailPesquisarExit(Sender: TObject);
    procedure tmrTryPrincipalTimer(Sender: TObject);
    procedure imgCallQ1Click(Sender: TObject);
    procedure imgCallQ2Click(Sender: TObject);
    procedure imgCallQ3Click(Sender: TObject);
    procedure ClearImgCallQuality(bRealign: Boolean);
    procedure imgCallQ4Click(Sender: TObject);
    procedure imgCallQ5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sctRecClientOldDataAvailable(Sender: TObject; ErrCode: Word);
    procedure Button2Click(Sender: TObject);
    procedure sctRecClientOldSessionConnected(Sender: TObject; ErrCode: Word);
    procedure cmdIntegradorClick(Sender: TObject);
    procedure tmrSendAGE0XTimer(Sender: TObject);
  private
    { Private declarations }
    procedure PlayAudioRing(nDevice: Integer);
    function ConvertCharToDB(sTexto: String): String;
    function ConvertCharToFE(sTexto: String): String;
    procedure CriaChatDinamicos(nQtdChat: Integer);
    procedure panChatDinamicoClick(Sender: TObject);
    procedure imgChatDiscarClick(Sender: TObject);
    procedure imgChatEncerrarClick(Sender: TObject);
    procedure imgChatMoreMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure memChatHistoryClick(Sender: TObject);
    procedure memChatHistoryMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tmrChatReadTimer(Sender: TObject);
    procedure tmrChatAlertaTimer(Sender: TObject);
    procedure tmrChatTimeoutClienteTimer(Sender: TObject);
    procedure tmrChatTempoInativoAgenteTimer(Sender: TObject);
    procedure tmrChatTempoInativoClienteTimer(Sender: TObject);
    procedure tmrChatTempoTotalTimer(Sender: TObject);
    procedure DesconectaChat(nSalaChat: Integer; nTipo: Integer);
    procedure LimpaChatPosClassificacao(nSalaChat: Integer);
    procedure EnviaMSGChat(nSalaChat: Integer; sMensagem: String; sMsgTo: String);
    procedure RecebeBlobChat(nSalaChat: Integer);
    //procedure EnviaBlobChat(nSalaChat: Integer);
    function LimpaDirBlobChatGeral(const sDiretorio: String): Boolean;
    function LimpaDirBlobChatExt(const sDiretorio: String): Boolean;
    procedure CriaConferencia(nNumLinha: Integer);
    procedure MontaConferencia(nNumLinha: Integer);
    procedure DesmontaConferencia(nNumLinha: Integer);
    procedure ProcessParam(const Param: string);
    procedure UMEnsureRestored(var Msg: TMessage);
      message UM_ENSURERESTORED;
    procedure WMCopyData(var Msg: TWMCopyData);
    	message WM_COPYDATA;
    procedure CriaEMailDinamico(nIndiceEMail: Integer);
    procedure panEMailDinamicoClick(Sender: TObject);
    procedure CriaTelaEMail;
    procedure NotificaTrayIcon(Msg: String; Timeout: Integer; Flag: Integer);
  public
    { Public declarations }
    TMyAppStatus: TAppStatus;
    TMyInfoLogin: TInfoLogin;
    TMyVaxIncomingCallParam: TVaxIncomingCallParams;
    TMyPausa: TPausa;
    TMyFaqClass: TFaqClass;
    TMyConfCallClass: TConfCallClass;
    TMyConsultaCallClass: TConsultaCallClass;
    TMyAtxferCallClass: TAtxferCallClass;
    TMyClassificacao: TClassificacao;
    TMyCoaching: TCoaching;
    TMyXFer: TXFer;
    TMyChat: TChat;
    TMyCaptureScreen: TCaptureScreen;

    //Qtd para definicao dos arrays
    vnumpausa: Integer;
    vnumfila: Integer;
    vnumclass_fila: Integer;
    vnumclasssub_fila: Integer;
    vnumsites: Integer;
    vnumloja: Integer;
    vnumxferfila: Integer;
    vnumxferura: Integer;
    vnumxferramal: Integer;
    vnumxferpesquisa: Integer;
    vnumxfervirtual: Integer;
    vnumxferconsulta: Integer;
    vnumchatassunto: Integer;
    vnumchatresp: Integer;
    vnumchatrespgrupo: Integer;
    vnumchatclassifica: Integer;
    vnumchatclassificasub: Integer;
    vnumcoaching: Integer;
    vnumcentrocusto: Integer;
    vnumemails: Integer;

    //Arrays
    matrizpausa: array of array of string;
    matrizcoaching: array of array of string;
    matriz_fila: array of array of string;
    matrizclassifica_fila: array of array of string;
    matrizclassificasub_fila: array of array of string;
    matrizloja: array of array of string;
    matrizxferfila: array of array of string;
    matrizxferura: array of array of string;
    matrizxferramal: array of array of string;
    matrizxferpesquisa: array of array of string;
    matrizxfervirtual: array of array of string;
    matrizxferconsulta: array of array of string;
    matrizparametros: array of string;
    matrizurl: array of array of string;
    vintegrador: array [0..3] of string;
    vintegradorParams: array [0..39] of string;
    vLogCallStep: array of string;
    vchat: array [0..3] of string;
    matrizchatassunto: array of array of string;
    matrizchatresposta: array of array of string;
    matrizchatrespostagrupo: array of array of string;
    matrizchatclassifica: array of array of string;
    matrizchatclassificasub: array of array of string;
    matrizcentrocusto: array of array of string;
    matrizdialednums: array [0..9] of string;
    matrizemails: array of array of string;
   protected
     procedure CreateParams(var Params: TCreateParams); override;
  end;
const
//licencavax: String = 'VAXVOIP.COM-' + '67P137P27P154P50P97P240P13P126P15P172P198P204P55P226P199P171P11P50P132P114P127P79P100P80P204P89P85P155P88P10P175P59P217P20P70P170P177P135P212P190P254P119P210P191P50P195P211P116P22P129P232P199P238P1'+'79P15P47P153P47P199P162P240P137P218P'              +         '-20.DIALLINK.COM.BR';
  licencavax: String = 'VAXVOIP.COM-' + '34P137P188P89P217P151P201P66P48P147P97P203P47P25P58P134P171P11P50P132P114P127P79P100P64P252P59P128P50P85P208P74P144P219P21P225P191P195P187P3P120P35P44P42P243P16P41P37P207P86P76P92P62P98P27P133P220P10P222P157P3P211P87P28P229P90P16P158P183P200P90P146P' + '-20.G729.20.DIALLINK.COM.BR';

  MAX_CONVERT_CHARS = 26;
  MAX_CHAT_ROOM = 5;//like 6 chat rooms, because we count 0 to 5
  CHAT_STATUS_FREE    = 0 ;//Chat livre
  CHAT_STATUS_INUSE   = 1 ;//Chat em conversacao
  CHAT_STATUS_ALERT_1 = 11;//Chat em conversacao - Alerta 1
  CHAT_STATUS_ALERT_2 = 12;//Chat em conversacao - Alerta 2
  CHAT_STATUS_ALERT_3 = 13;//Chat em conversacao - Alerta 3
  CHAT_STATUS_ALERT_4 = 14;//Chat em conversacao - Alerta 4
  CHAT_STATUS_ALERT_5 = 15;//Chat em conversacao - Alerta 5
  CHAT_STATUS_ENDING  = 2 ;//Chat em classificacao
  CHAT_NEW_DEFAULT_INTERVAL = 2000;

  CAPTURE_MODE_NONE        = 0;
  CAPTURE_MODE_PHONE       = 1;
  CAPTURE_MODE_CHAT        = 2;
  CAPTURE_MODE_INTERACTIVE = 3;
  CAPTURE_MODE_ALL         = 4;

  INTEGRADOR_TEL  = 1;
  INTEGRADOR_CHAT = 2;

  MAX_EMAILS = 1000;

var
  frmPrincipal: TfrmPrincipal;
  vFlashWindowActive: Integer;
  mitCopyInfoCallItens: array[0..99] of TMenuItem;

  //CHAT
  matrizchatsala: array of array of string;
  nChatDinamicosCriados: Integer;
  vChatClassificando: Integer;
  vChatClassificandoSala: Integer;
  vChatClassificandoTipo: Integer;
  vChatDesconexaoCliente: Boolean;
  vChatXFer: Boolean;
  vChatXFerDst: String;
  vchatverificaclientefechou: array [0..MAX_CHAT_ROOM] of Integer;
  sChatTextToSend: array [0..MAX_CHAT_ROOM] of String;

  panChatDinamico: array[0..MAX_CHAT_ROOM] of TsPanel;
  lblChatCabecalho: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatNome: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatNomeDesc: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoInativoAgente: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoInativoAgenteDesc: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoInativoCliente: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoInativoClienteDesc: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoTotal: array[0..MAX_CHAT_ROOM] of TsLabel;
  lblChatTempoTotalDesc: array[0..MAX_CHAT_ROOM] of TsLabel;

  imgChatCabecalho: array[0..MAX_CHAT_ROOM] of TImage;

  imgChatDiscar: array[0..MAX_CHAT_ROOM] of TImage;
  imgChatEncerrar: array[0..MAX_CHAT_ROOM] of TImage;
  imgChatMore: array[0..MAX_CHAT_ROOM] of TImage;

  pntChatDinamicoInitPos: TPoint;
  pntPainelMouseDownSpot: TPoint;
  bChatDinamicoCapturing: Boolean;

  tmrChatRead: array[0..MAX_CHAT_ROOM] of TTimer;
  //tmrChatRead: TTimer;
  tmrChatAlerta: array[0..MAX_CHAT_ROOM] of TTimer;
  tmrChatTimeoutCliente: array[0..MAX_CHAT_ROOM] of TTimer;
  tmrChatTempoInativoAgente: array[0..MAX_CHAT_ROOM] of TTimer;
  tmrChatTempoInativoCliente: array[0..MAX_CHAT_ROOM] of TTimer;
  tmrChatTempoTotal: array[0..MAX_CHAT_ROOM] of TTimer;

  memChatHistory: array[0..MAX_CHAT_ROOM] of TsRichEdit;

  qryChatRead: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatWrite: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatXFer: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatDesconecta: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatSup: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatBlobGet: array[0..MAX_CHAT_ROOM] of TZQuery;
  qryChatBlobPut: array[0..MAX_CHAT_ROOM] of TZQuery;

  dtvChatTempoInativoAgenteIni: array[0..MAX_CHAT_ROOM] of TDateTime;
  dtvChatTempoInativoClienteIni: array[0..MAX_CHAT_ROOM] of TDateTime;
  dtvChatTempoTotalIni: array[0..MAX_CHAT_ROOM] of TDateTime;
  dtvChatTempoPosAtendimento: array[0..MAX_CHAT_ROOM] of TDateTime;

  mitChatXFerAssunto: array[0..99] of TMenuItem;
  mitChatCopyInfo: array[0..99] of TMenuItem;
  //CHAT

  //E-Mail
  panEMailDinamico  : array[0..MAX_EMAILS] of TsPanel;
  lblEMailFrom      : array[0..MAX_EMAILS] of TsLabel;
  lblEMailAssunto   : array[0..MAX_EMAILS] of TsLabel;
  lblEMailDataHora  : array[0..MAX_EMAILS] of TsLabel;
  lblEMailMensagem  : array[0..MAX_EMAILS] of TsLabel;
  imgEMailTipo      : array[0..MAX_EMAILS] of TImage;
  imgEMailRespondido: array[0..MAX_EMAILS] of TImage;
  imgEMailAnexo     : array[0..MAX_EMAILS] of TImage;
  imgEMailCliente   : array[0..MAX_EMAILS] of TImage;
  //E-Mail

type
  TConvertCharItem = record
    FE: String;
    DB: String;
  end;

const
  ConvertCharItems: array[1..MAX_CONVERT_CHARS] of TConvertCharItem =
  (
    (FE: '�'; DB: '&Agrave;'),
    (FE: '�'; DB: '&Aacute;'),
    (FE: '�'; DB: '&Atilde;'),
    (FE: '�'; DB: '&Acirc;'),
    (FE: '�'; DB: '&agrave;'),
    (FE: '�'; DB: '&aacute;'),
    (FE: '�'; DB: '&atilde;'),
    (FE: '�'; DB: '&acirc;'),
    (FE: '�'; DB: '&Ecirc;'),
    (FE: '�'; DB: '&Eacute;'),
    (FE: '�'; DB: '&eacute;'),
    (FE: '�'; DB: '&ecirc;'),
    (FE: '�'; DB: '&Iacute;'),
    (FE: '�'; DB: '&iacute;'),
    (FE: '�'; DB: '&Oacute;'),
    (FE: '�'; DB: '&Otilde;'),
    (FE: '�'; DB: '&Ocirc;'),
    (FE: '�'; DB: '&oacute;'),
    (FE: '�'; DB: '&otilde;'),
    (FE: '�'; DB: '&ocirc;'),
    (FE: '�'; DB: '&Uacute;'),
    (FE: '�'; DB: '&Uuml;'),
    (FE: '�'; DB: '&uacute;'),
    (FE: '�'; DB: '&uuml;'),
    (FE: '�'; DB: '&Ccedil;'),
    (FE: '�'; DB: '&ccedil;')
  );

implementation

{$R *.dfm}

uses untfilho, untlogin, untdm, untfrmconfiguracoes, untfrmclassifica, untfrmxfer,
     unttranslate, untfrmdialpad, untfrmpausa, untfrmRingPopup, untfrmcoaching,
     untfrmDesbloquear, uAutoSendFilesThread, untProgressBar, uExecIntegradorThread,
     untfrmSobre;

{$I C:\DSD_Development\Apps\HosannaTecnologia\Agente2.0\Sources\Win32\Debug\Lang\defines.inc}

procedure CloseMessageBox(AWnd: HWND; AMsg: UINT; AIDEvent: UINT_PTR;
  ATicks: DWORD); stdcall;
var
  Wnd: HWND;
begin
  KillTimer(AWnd, AIDEvent);
  // active window of the calling thread should be the message box
  Wnd := GetActiveWindow;
  if IsWindow(Wnd) then
    PostMessage(Wnd, WM_CLOSE, 0, 0);
end;

procedure ForceForegroundNoActivate;
begin
  try
    if IsIconic(Application.Handle) then
      ShowWindow(Application.Handle, SW_SHOWNOACTIVATE);

    SetWindowPos(Application.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOACTIVATE or SWP_NOMOVE);
    SetWindowPos(Application.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOACTIVATE or SWP_NOMOVE);
  except
  end;
end;

function FormatSecsToHMS(Secs: LongInt): string;
var
Hrs, Min: Word;
hora, minuto, segundo : string;
begin
  Hrs := Secs div 3600;
  Secs := Secs mod 3600;
  Min := Secs div 60;
  Secs := Secs mod 60;

  if length(inttostr(hrs)) = 1 then
  begin
    hora := '0'+inttostr(hrs);
  end
  else
  begin
    hora := inttostr(hrs);
  end;

  if length(inttostr(min)) = 1 then
  begin
    minuto := '0'+inttostr(min);
  end
  else
  begin
    minuto := inttostr(min);
  end;

  if length(inttostr(Secs)) = 1 then
  begin
    segundo := '0'+inttostr(Secs);
  end
  else
  begin
    segundo := inttostr(Secs);
  end;
  Result := Format('%s:%s:%s', [Hora, Minuto, Segundo]);
end;

procedure Split(const Delimiter: Char; Value: string; const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.DelimitedText := Value;
  Strings.Delimiter := Delimiter;
end;

Function TfrmPrincipal.VersaoExe: String;
type
  PFFI = ^vs_FixedFileInfo;
  var
  F : PFFI;
  Handle : Dword;
  Len : Longint;
  Data : Pchar;
  Buffer : Pointer;
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

function GetMIMEtype(FileName: String): String;
var
  reg: TRegistry;
  ans: String;
  ext: String;
begin
  ans := '';
  reg := TRegistry.Create;
  try
    ext := ExtractFileExt(Filename);
    reg.RootKey := HKEY_CLASSES_ROOT;
    if reg.OpenKeyReadOnly('' + ext + '') then
    begin
      ans := reg.ReadString('Content Type');
    end;
  finally
    reg.Free;
  end;

  if ans = '' then ans := 'application/octet-stream';
  result := ans;
end;

procedure TfrmPrincipal.CreateParams(var Params: TCreateParams);
begin
  inherited;
  StrCopy(Params.WinClassName, cWindowClassName);
end;

procedure TfrmPrincipal.ProcessParam(const Param: string);
begin
  { TODO : Code to process a parameter }
  //ShowMessage('ProcessParam');aqui
end;

procedure TfrmPrincipal.UMEnsureRestored(var Msg: TMessage);
begin
{
  if IsIconic(Application.Handle) then
    Application.Restore;
  if not Visible then
    Visible := True;
  Application.BringToFront;
  SetForegroundWindow(Self.Handle);
}
end;

procedure TfrmPrincipal.WMCopyData(var Msg: TWMCopyData);
var
  PData: PChar;
  Param: string;
begin
  if Msg.CopyDataStruct.dwData <> cCopyDataWaterMark then
    raise Exception.Create(
      'Invalid data structure passed in WM_COPYDATA'
    );
  PData := Msg.CopyDataStruct.lpData;
  while PData^ <> #0 do
  begin
    Param := PData;
    ProcessParam(Param);
    Inc(PData, Length(Param) + 1);
  end;
  Msg.Result := 1;
end;

procedure TfrmPrincipal.wavAudioRingNotify(Sender: TObject);
begin
  if TMyVaxIncomingCallParam.nCurrentDevice < TMyVaxIncomingCallParam.nTotalDevices-1 then
  begin
    Inc(TMyVaxIncomingCallParam.nCurrentDevice);
    PlayAudioRing(TMyVaxIncomingCallParam.nCurrentDevice);
  end
  else
  begin
    if TMyVaxIncomingCallParam.nTotalDevices > 0 then
    begin
      tmrAudioRing.Enabled := False;
      tmrAudioRing.Interval := 3000;
      tmrAudioRing.Enabled := True;
    end;
  end;
end;

function TfrmPrincipal.Abrelinha(numlinha: integer): WordBool;
var
  MyIP : string;
  PortRTP : Integer;
  LineNo : Integer;
  RetValue : WordBool;
  ErrorCount : Integer;
Begin
  MyIP := Vax.GetMyIP();
  PortRTP := 7000;
  LineNo  := 0;
  ErrorCount := 0;
  RetValue := True;
  while (LineNo < 1) do
  Begin
    LogCallStep('log_login_act', 'Abrelinha :: Step 1');
    If Vax.OpenLine(numlinha, False, MyIP, PortRTP) = False Then
    begin
      if Vax.GetVaxObjectError() = 11 then
      begin
        LogCallStep('log_login_act', 'Abrelinha :: Step 2');
        ErrorCount := ErrorCount + 1;
        LineNo := LineNo - 1;
      end
      else
      begin
        ErrorMessages();
        RetValue := False;
        Break;
      end;
    end;
    LogCallStep('log_login_act', 'Abrelinha :: Step 3');
    LineNo  := LineNo + 1;
    PortRTP := PortRTP + 2;// It is important to increament RTP Listen Port by 2
    If ErrorCount >= (1 + 1000) Then
    begin
      mensagem(APP_MB_ERR_OPEN_RTP_PORT[ID_LANG]);
      RetValue := False;
      Break;
    end;
  end;

  TMyVaxIncomingCallParam.bIncomingCall := False;
  Result := RetValue;
end;

procedure TfrmPrincipal.actlogoffExecute(Sender: TObject);
var
  nFor: Integer;
begin
  if TMyPausa.bTravaRestricao = true then
  begin
    mensagem(APP_MB_WAR_USER_PAUSED[ID_LANG]);
    exit;
  end;

  if (TMyPausa.sPausaTipo = APP_PAUSE_TYPE_AFTER_HU[ID_LANG]) and (TMyClassificacao.bClassificou = false) and (framebar.Items[5].State = stOpened) then {(evento = true) then}
  begin
    mensagem(APP_MB_WAR_NOT_CLASSIFIED[ID_LANG]);
    Exit;
  end;

  if TMyInfoLogin.nTipo = 1 then
    if nChatDinamicosCriados >= 0 then
    begin
      for nFor := 0 to nChatDinamicosCriados do
        if (vChatClassificando = 1) or (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) then
        begin
          mensagem(APP_MB_WAR_AGENT_IN_CHAT[ID_LANG]);
          Exit;
        end;

      TAction(albrowser.Actions[3]).Enabled := False;
      btnFAQ.Enabled := False;
      panChat.Visible := False;
      tabchat.TabVisible := False;
      tabFAQ.TabVisible := False;
      tabChatHist.TabVisible := False;

      tmrChatQueue.Enabled := False;

      //tmrChatRead.Enabled := False;

      for nFor := 0 to nChatDinamicosCriados do
      begin
        tmrChatAlerta[nFor].Enabled := False;
        tmrChatRead[nFor].Enabled := False;
        tmrChatTimeoutCliente[nFor].Enabled := False;
        tmrChatTempoInativoAgente[nFor].Enabled := False;
        tmrChatTempoInativoCliente[nFor].Enabled := False;
        tmrChatTempoTotal[nFor].Enabled := False;
      end;
    end;

  if vax.IsLineBusy(0) then
  begin
    application.MessageBox(PChar(APP_MB_WAR_CANNOT_CLOSE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
  end
  else
  begin
    discar('AGE02'+TMyInfoLogin.sIDUsuario, True);
    framebar.enabled := false;

    lbstatus.Caption := APP_FRM_MAIN_STATUS_LOGOFF[ID_LANG];
    lbstatus.Color := clred;

    stbStatusBar.Panels[1].Text := APP_FRM_MAIN_STATUS_BAR_NOT_REGISTED[ID_LANG];

    framebar.CloseItem(0,true);
    framebar.CloseItem(1,true);
    framebar.CloseItem(2,true);
    framebar.CloseItem(3,true);

    actlogin.Enabled := false;
    actlogoff.Enabled := false;
    actsair.Enabled := true;

    TMyAppStatus.bLogado := false;
    LogCallStep('log_logout_act', TMyInfoLogin.sIDUsuario);
    tmrPausaLogin.Enabled := False;

    TMyAppStatus.sTipoEvento := APP_EVENT_TYPE_LOGOFF[ID_LANG];

    TMyPausa.bDiscouPausa := false;
    TMyClassificacao.bClassificou := false;
    TMyClassificacao.bAutoAgendouPausa := False;
    TMyClassificacao.sAutoAgendouPausaTipo := '';

    TMyPausa.bPausado := false;
    TMyAppStatus.bAtendido := false;
    TMyXFer.bXFerExec := False;
    TMyAppStatus.bSainte := false;
    TMyPausa.sPausaTipo := '';

    stbStatusBar.Panels[2].Text := APP_FRM_MAIN_STATUS_BAR_AGENT[ID_LANG];
    stbStatusBar.Panels[3].Text := APP_FRM_MAIN_STATUS_BAR_LOGIN[ID_LANG];

    if framebar.Items[2].State = stOpened then
      Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_START_PAUSE[ID_LANG];

    vax.EnableDonotDisturb;
    LogCallStep('log_dnd_on_act', 'actlogoffExecute');
    vax.CloseLine(0);
  end;

  if TMyCaptureScreen.bCapture then
    TerminaGravacaoTela;
end;

procedure TfrmPrincipal.actpesquisaExecute(Sender: TObject);
begin
  if tabpesquisa.TabVisible = false then
  begin
    browserpesquisa.Navigate(navegador('Pesquisa'));
    tabpesquisa.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabpesquisa;
  end;
end;

procedure TfrmPrincipal.k(Sender: TObject);
begin
  if tabagenda.TabVisible = false then
  begin
    browseragenda.Navigate(navegador('Agenda'));
    tabagenda.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabagenda;
    browseragenda.Navigate(navegador('Agenda'));
  end;
end;

procedure TfrmPrincipal.actajudaExecute(Sender: TObject);
begin
  {
  if tabajuda.TabVisible = false then
  begin
    browserajuda.Navigate(navegador('Help'));
    tabajuda.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabajuda;
  end;
  }

  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.actchatExecute(Sender: TObject);
var
  nFor: Integer;
begin
  if tabchat.TabVisible = false then
  begin
    tabchat.TabVisible := true;

    panChatMessages.Top := panChatMessages.Top + 1000;
    panChatMessages.Visible := True;
    for nFor := 0 to nChatDinamicosCriados do
    begin
      memChatHistory[nFor].Visible := True;
      memChatHistory[nFor].Visible := False;
    end;
    panChatMessages.Visible := False;
    panChatMessages.Top := panChatMessages.Top - 1000;
  end
  else
  begin
    pgcBrowser.ActivePage := tabchat;
  end;

  {
  //Somente para abrir os paineis sem ter um chat...n�o utilizar
  panChatMessages.Visible := true;
  panChat.Visible := true;
  panChatRight.Visible := true;
  panChatHistorico.Visible := true;
  }
end;

procedure TfrmPrincipal.actclientesExecute(Sender: TObject);
begin
  if vintegrador[0] = 'False' then
    cmdIntegrador.Visible := False;

  if tabcliente.TabVisible = false then
  begin
    if tabCliente.Tag = 0 then
      browsercliente.Navigate(navegador('Cliente'));
    tabcliente.TabVisible := true;

    lblTranscricao.Caption := APP_FRM_MAIN_DESC_TRANSCRIPT[ID_LANG];
    memTranscricao.Lines.Clear;
    ClearImgCallQuality(True);
  end
  else
  begin
    pgcBrowser.ActivePage := tabcliente;
    try
      browsercliente.Refresh;
    except
    end;
  end;
end;

procedure TfrmPrincipal.actConferenciaExecute(Sender: TObject);
begin
  if tabConferencia.TabVisible = false then
  begin
    tabConferencia.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabConferencia;
  end;
end;

procedure TfrmPrincipal.actemailExecute(Sender: TObject);
begin
  if tabemail.TabVisible = false then
  begin
    //browseremail.Navigate(navegador('E-mail'));
    tabemail.TabVisible := true;
    CriaTelaEMail;
  end
  else
    pgcBrowser.ActivePage := tabemail;
end;

procedure TfrmPrincipal.actfaxExecute(Sender: TObject);
begin
  if tabfax.TabVisible = false then
  begin
    browserfax.Navigate(navegador('Fax'));
    tabfax.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabfax;
  end;
end;

procedure TfrmPrincipal.actloginExecute(Sender: TObject);
var
  ind: integer;
begin
  TMyPausa.bPausado := true;

  discar('AGE01'+TMyInfoLogin.sIDUsuario, True);
  vax.EnableDonotDisturb;
  LogCallStep('log_dnd_on_act', 'actloginExecute');

  TMyAppStatus.bLogado := true;
  LogCallStep('log_login_act', TMyInfoLogin.sIDUsuario);
  //framebar.enabled := true;
  actlogin.Enabled := false;
  actlogoff.Enabled := False;
  //actsair.Enabled := false;
  TMyClassificacao.bClassificando := False;
  TMyClassificacao.bAutoAgendouPausa := False;
  TMyClassificacao.sAutoAgendouPausaTipo := '';
  TMyPausa.bTrocandoPausa := False;
  TMyPausa.bLastCallRedial := False;

  TMyPausa.sPausaTipo := APP_PAUSE_TYPE_LOGIN[ID_LANG];
  TMyAppStatus.sTipoEvento := APP_EVENT_TYPE_PAUSE[ID_LANG];
  lbstatus.Caption := APP_FRM_MAIN_STATUS_PAUSE_LOGIN[ID_LANG];
  lbstatus.Color := clyellow;

  for ind := 0 to vnumpausa-1 do
  begin
    if matrizpausa[0,ind] = '10001' then//if matrizpausa[1,ind] = APP_PAUSE_TYPE_LOGIN[ID_LANG] then
    begin
      TMyPausa.sIDPausa := matrizpausa[0,ind];
    end;
  end;

  //framebar.OpenItem(2,true);
  // Atualiza Status .INI

  //Tfrmpausa(framebar.items[2].frame).lbinipausa.caption := timetostr(now);
  //Tfrmpausa(framebar.items[2].frame).tmpausa.enabled := true;

  stbStatusBar.Panels[2].Text := APP_FRM_MAIN_STATUS_BAR_AGENT[ID_LANG] + TMyInfoLogin.sNome + ' ('+TMyInfoLogin.sIDUsuario+')';
  stbStatusBar.Panels[3].Text := APP_FRM_MAIN_STATUS_BAR_LOGIN[ID_LANG] + datetimetostr(now);
end;

procedure TfrmPrincipal.actsairExecute(Sender: TObject);
begin
  TMyAppStatus.bPodeFechar := True;
  Close;
end;

procedure TfrmPrincipal.actscriptExecute(Sender: TObject);
begin
  if tabscript.TabVisible = false then
  begin
    browserscript.Navigate(navegador('Script'));
    tabscript.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabscript;
  end;
end;

procedure TfrmPrincipal.actsmsExecute(Sender: TObject);
begin
  if tabsms.TabVisible = false then
  begin
    browsersms.Navigate(navegador('Sms'));
    tabsms.TabVisible := true;
  end
  else
  begin
    pgcBrowser.ActivePage := tabsms;
  end;
end;

procedure TfrmPrincipal.ativaramal;
var
  nSIPExpire: Integer;
begin
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  nSIPExpire := vArqIni.ReadInteger('SIP', 'SIPExpire', 3600);
  vArqIni.Free;

  vax.SetLicenceKey(licencavax);
  if InitVaxObject() = False then application.MessageBox(PChar(APP_MB_ERR_ENABLE_EXTEN[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
  if abrelinha(0) = False then application.MessageBox(PChar(APP_MB_ERR_OPEN_LINE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
  if vax.RegisterToProxy(nSIPExpire) = false then errormessages();

  vax.DeselectAllVoiceCodec;

  //Vax.SelectVoiceCodec(0); //GSM 6.10
  //Vax.SelectVoiceCodec(1); //iLBC
  Vax.SelectVoiceCodec(2); //G711 A-Law
  Vax.SelectVoiceCodec(3); //G711 U-Law
  if Vax.SelectVoiceCodec(4) = False then //G729
    ErrorMessages();

  vax.EnableKeepAlive(60);

  habilitaagc;
  habilitamicboost;
  habilitaechonoise;

  vax.MuteMic(false);
  vax.MuteSpk(false);

  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');

  Vax.SetMicVolume((10 - varqini.readinteger('Controle','volumeout',0)) * 25);
  Vax.SetspkVolume((10 - varqini.readinteger('Controle','volumein',0)) * 25);
  vax.SetDTMFVolume(varqini.ReadInteger('Controle','volumedtmf',5));
  TMyVaxIncomingCallParam.sRingFile := varqini.ReadString('RING','RINGFILE','C:\Hosanna\Agente\Ring.wav');
  TMyVaxIncomingCallParam.bRecord := vArqIni.ReadBool('Controle', 'Record', False);

  if TMyCaptureScreen.bCapture then
  begin
    TMyCaptureScreen.bCaptureAudio := vArqIni.ReadBool('CapturaTela', 'Audio', False);
    //TMyCaptureScreen.sCapturePort := vArqIni.ReadString('CapturaTela', 'Porta', '50000');
    stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_STOPPED[ID_LANG];
  end
  else
  begin
    TMyCaptureScreen.nCaptureMode := CAPTURE_MODE_NONE;
    stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_DISABLED[ID_LANG];
  end;

  varqini.free;

  TMyPausa.bPausado := false;
  TMyAppStatus.bSainte := false;

  TMyAppStatus.bAtendido := false;
  TMyXFer.bXFerExec := False;

  if framebar.Items[2].State = stOpened then
    Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_START_PAUSE[ID_LANG];

  if frmLogin.vping = True then
  begin
    icmpClientPing.Host := frmLogin.vpinghost;
    icmpClientPing.PacketSize := 32;
    icmpClientPing.ReceiveTimeout := 1000;

    LogPing('PingStarted', icmpClientPing.Host);

    tmrIcmpPing.Enabled := False;
    tmrIcmpPing.Interval := frmLogin.vpingtempo;
    tmrIcmpPing.Enabled := True;
  end;
end;

procedure TfrmPrincipal.carregaoperacao(id: string);
var
  ind: integer;
  nForFaq: Integer;
  sFaqIn: String;
  sChatFilaIn: String;
  sRespChatIn: String;
  indSub: Integer;
  nForIntegrador: Integer;
begin
  for ind := 0 to 9 do
    matrizdialednums[ind] := '';

  //LogCallStep
  datam.qry_carrega_LogCallStep.Active := False;
  datam.qry_carrega_LogCallStep.SQL.Clear;
  datam.qry_carrega_LogCallStep.SQL.Add('select active, descricao, log_diretorio, log_nome, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_login_act, log_logout_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_pause_act, log_unpause_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_answer_act, log_hangup_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_dnd_on_act, log_dnd_off_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_registro_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_xfer_act, ');
  datam.qry_carrega_LogCallStep.SQL.Add('log_sip_err ');
  datam.qry_carrega_LogCallStep.SQL.Add('from easy_sist_software_log_conf ');
  datam.qry_carrega_LogCallStep.Active := True;

  SetLength(vLogCallStep, 15);

  if datam.qry_carrega_LogCallStep.RecordCount > 0 then
  begin
    vLogCallStep[0]  := datam.qry_carrega_LogCallStep.Fields[0].AsString;
    vLogCallStep[1]  := datam.qry_carrega_LogCallStep.Fields[1].AsString;
    vLogCallStep[2]  := datam.qry_carrega_LogCallStep.Fields[2].AsString;
    vLogCallStep[3]  := datam.qry_carrega_LogCallStep.Fields[3].AsString;
    vLogCallStep[4]  := datam.qry_carrega_LogCallStep.Fields[4].AsString;
    vLogCallStep[5]  := datam.qry_carrega_LogCallStep.Fields[5].AsString;
    vLogCallStep[6]  := datam.qry_carrega_LogCallStep.Fields[6].AsString;
    vLogCallStep[7]  := datam.qry_carrega_LogCallStep.Fields[7].AsString;
    vLogCallStep[8]  := datam.qry_carrega_LogCallStep.Fields[8].AsString;
    vLogCallStep[9]  := datam.qry_carrega_LogCallStep.Fields[9].AsString;
    vLogCallStep[10] := datam.qry_carrega_LogCallStep.Fields[10].AsString;
    vLogCallStep[11] := datam.qry_carrega_LogCallStep.Fields[11].AsString;
    vLogCallStep[12] := datam.qry_carrega_LogCallStep.Fields[12].AsString;
    vLogCallStep[13] := datam.qry_carrega_LogCallStep.Fields[13].AsString;
    vLogCallStep[14] := datam.qry_carrega_LogCallStep.Fields[14].AsString;
  end
  else
    vLogCallStep[0] := 'False';

  datam.qry_carrega_LogCallStep.Active := False;
  //LogCallStep

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 1');

  //Pausas
  datam.qr_carrega_pausa.active := false;
  datam.qr_carrega_pausa.Params[0].Value := TMyInfoLogin.sIDOperacao;
  datam.qr_carrega_pausa.active := true;

  vnumpausa := datam.qr_carrega_pausa.RecordCount;
  setlength(matrizpausa,18,vnumpausa);
  TMyPausa.nPausaDurMinAct := 0;
  TMyPausa.tPausaDurMinVal := 0;

  //lbxrestricao.items.clear;
  //lbxqtd.items.clear;
  //lbxtempo.items.clear;
  //lbxrealizadas.items.clear;

  //datam.qr_verifica_pausa.active := false;
  //datam.qr_verifica_pausa.params[0].Value := TMyInfoLogin.sRamal;
  //datam.qr_verifica_pausa.active := true;

  ind := 0;
  while not datam.qr_carrega_pausa.eof do
  begin
    matrizpausa[0,ind] := datam.qr_carrega_pausa.Fields[0].AsString;   //id
    matrizpausa[1,ind] := datam.qr_carrega_pausa.Fields[1].AsString;   //descricao
    matrizpausa[2,ind] := datam.qr_carrega_pausa.Fields[2].AsString;   // tipo

    matrizpausa[3,ind] := datam.qr_carrega_pausa.Fields[8].AsString;   //oper ativo
    matrizpausa[4,ind] := datam.qr_carrega_pausa.Fields[9].AsString;   //transfer act

    matrizpausa[5,ind] := datam.qr_carrega_pausa.Fields[10].AsString;  //restritiva duracao act
    matrizpausa[6,ind] := datam.qr_carrega_pausa.Fields[11].AsString;  //restritiva duracao tempo

    matrizpausa[7,ind] := datam.qr_carrega_pausa.Fields[12].AsString;  // restritiva qtd act
    matrizpausa[8,ind] := datam.qr_carrega_pausa.Fields[13].AsString;  // restritiva qtd

    matrizpausa[9,ind] := datam.qr_carrega_pausa.Fields[14].AsString;  //pausa conf id
    matrizpausa[10,ind] := datam.qr_carrega_pausa.Fields[15].AsString; //operacao conf id

    //matrizpausa[11,ind] := datam.qr_carrega_pausa.Fields[3].AsString;  //paus pos
    //matrizpausa[12,ind] := datam.qr_carrega_pausa.Fields[4].AsString;  //tempo pos (sec)
    //matrizpausa[13,ind] := datam.qr_carrega_pausa.Fields[5].AsString;  // tempo pos

    matrizpausa[14,ind] := datam.qr_carrega_pausa.Fields[6].AsString;  //ativo em pausa

    matrizpausa[15,ind] := datam.qr_carrega_pausa.Fields[16].AsString;  //duracao_min_act
    matrizpausa[16,ind] := datam.qr_carrega_pausa.Fields[17].AsString;  //duracao_min_valor

    matrizpausa[17,ind] := datam.qr_carrega_pausa.Fields[18].AsString;  //bloqueio_act

    inc(ind);
    datam.qr_carrega_pausa.next;
  end;

  datam.qr_verifica_pausa.active := false;
  datam.qr_carrega_pausa.active := false;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 2');

  //Coaching
  datam.qryCarregaCoaching.Active := False;
  datam.qryCarregaCoaching.SQL.Clear;
  datam.qryCarregaCoaching.SQL.Add('select u.id, u.descricao ');
  datam.qryCarregaCoaching.SQL.Add('from easy_work_colaborador_conf u ');
  datam.qryCarregaCoaching.SQL.Add('left join easy_sist_usuario_perfil_conf p on u.easy_sist_usuario_perfil_conf_id = p.id ');
  datam.qryCarregaCoaching.SQL.Add('where ');
  datam.qryCarregaCoaching.SQL.Add('true ');
  datam.qryCarregaCoaching.SQL.Add('and u.active = ' + QuotedStr('Y'));
  datam.qryCarregaCoaching.SQL.Add('and p.active = ' + QuotedStr('Y'));
  datam.qryCarregaCoaching.SQL.Add('and p.tipo in (4, 5)' );
  datam.qryCarregaCoaching.SQL.Add('and u.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa);
  datam.qryCarregaCoaching.Active := True;

  vnumcoaching := datam.qryCarregaCoaching.RecordCount;
  SetLength(matrizcoaching,2,vnumcoaching);

  ind := 0;
  while not datam.qryCarregaCoaching.Eof do
  begin
    matrizcoaching[0,ind] := datam.qryCarregaCoaching.Fields[0].AsString;
    matrizcoaching[1,ind] := datam.qryCarregaCoaching.Fields[1].AsString;

    inc(ind);
    datam.qryCarregaCoaching.Next;
  end;

  datam.qryCarregaCoaching.Active := False;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 3');

  //Filas
  datam.qryCarregaFilas.Active := False;
  datam.qryCarregaFilas.SQL.Add('select ');
  datam.qryCarregaFilas.SQL.Add('c1.id as codigo, ');
  datam.qryCarregaFilas.SQL.Add('concat(c1.descricao," - ", c2.descricao) as fila ');
  datam.qryCarregaFilas.SQL.Add('from ');
  datam.qryCarregaFilas.SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a ');
  datam.qryCarregaFilas.SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id ');
  datam.qryCarregaFilas.SQL.Add('left join easy_pabx_serv_fila_universal_call_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
//  datam.qryCarregaFilas.SQL.Add('left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id ');
  datam.qryCarregaFilas.SQL.Add('where ');
  datam.qryCarregaFilas.SQL.Add('c1.active = ' + QuotedStr('Y'));
  datam.qryCarregaFilas.SQL.Add('and c2.active = ' + QuotedStr('Y'));
  datam.qryCarregaFilas.SQL.Add('and a.active = ' + QuotedStr('Y'));
  datam.qryCarregaFilas.SQL.Add('and a.fone_atendimento_act = ' + QuotedStr('Y'));
  datam.qryCarregaFilas.SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil);
  datam.qryCarregaFilas.SQL.Add('group by c1.id ');
  datam.qryCarregaFilas.SQL.Add('order by 2 asc');
  datam.qryCarregaFilas.Active := True;

  vnumfila := datam.qryCarregaFilas.RecordCount;
  setlength(matriz_fila,2,vnumfila);

  ind := 0;
  while not datam.qryCarregaFilas.Eof do
  begin
    matriz_fila[0,ind] := datam.qryCarregaFilas.Fields[0].AsString;
    matriz_fila[1,ind] := datam.qryCarregaFilas.Fields[1].AsString;

    inc(ind);
    datam.qryCarregaFilas.Next;
  end;

  datam.qryCarregaFilas.Active := False;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 4');

  //Classifica��o
  datam.qry_carrega_class_fila.Active := False;
  datam.qry_carrega_class_fila.SQL.Clear;
  datam.qry_carrega_class_fila.SQL.Add('SELECT ');
  datam.qry_carrega_class_fila.SQL.Add('c.id, ');
  datam.qry_carrega_class_fila.SQL.Add('c.descricao, ');
  datam.qry_carrega_class_fila.SQL.Add('a.easy_pabx_serv_fila_universal_ctr_id, ');
  datam.qry_carrega_class_fila.SQL.Add('a.disp_chat, ');
  datam.qry_carrega_class_fila.SQL.Add('a.disp_email, ');
  datam.qry_carrega_class_fila.SQL.Add('a.disp_sms ');
  datam.qry_carrega_class_fila.SQL.Add('FROM ');
  datam.qry_carrega_class_fila.SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf c ');
  datam.qry_carrega_class_fila.SQL.Add('left join easy_pabx_serv_fila_universal_has_classificacao a on a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
  datam.qry_carrega_class_fila.SQL.Add('where ');
  datam.qry_carrega_class_fila.SQL.Add('a.active = ' + QuotedStr('Y'));
  datam.qry_carrega_class_fila.SQL.Add('and c.active = ' + QuotedStr('Y'));
  datam.qry_carrega_class_fila.SQL.Add('and c.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa + ' ');
  datam.qry_carrega_class_fila.SQL.Add('order by c.descricao asc');
  datam.qry_carrega_class_fila.Active := True;
  vnumclass_fila := datam.qry_carrega_class_fila.recordcount;
  setlength(matrizclassifica_fila,3,vnumclass_fila);

  ind := 0;
  while not datam.qry_carrega_class_fila.eof do
  begin
    matrizclassifica_fila[0,ind] := datam.qry_carrega_class_fila.Fields[0].AsString;
    matrizclassifica_fila[1,ind] := datam.qry_carrega_class_fila.Fields[1].AsString;
    matrizclassifica_fila[2,ind] := datam.qry_carrega_class_fila.Fields[2].AsString;

    inc(ind);
    datam.qry_carrega_class_fila.next;
  end;

  //Classifica��o Sub
  datam.qry_carrega_class_fila.Active := False;
  datam.qry_carrega_class_fila.SQL.Clear;
  datam.qry_carrega_class_fila.SQL.Add('select ');
  datam.qry_carrega_class_fila.SQL.Add('s.id as subclass_id, ');
  datam.qry_carrega_class_fila.SQL.Add('s.descricao, ');
  datam.qry_carrega_class_fila.SQL.Add('a.easy_pabx_serv_fila_universal_classificacao_conf_id, ');
  datam.qry_carrega_class_fila.SQL.Add('a.finalizadora, ');
  datam.qry_carrega_class_fila.SQL.Add('DATE_ADD(curdate(), INTERVAL a.intervalo DAY), ');
  datam.qry_carrega_class_fila.SQL.Add('a.redial ');
  datam.qry_carrega_class_fila.SQL.Add('from ');
  datam.qry_carrega_class_fila.SQL.Add('easy_pabx_serv_fila_universal_classificacao_sub_conf s ');
  datam.qry_carrega_class_fila.SQL.Add('LEFT JOIN easy_pabx_serv_fila_universal_classificacao_has_sub a ');
  datam.qry_carrega_class_fila.SQL.Add('ON a.easy_pabx_serv_fila_universal_classificacao_sub_conf_id = s.id ');
  datam.qry_carrega_class_fila.SQL.Add('LEFT JOIN easy_pabx_serv_fila_universal_classificacao_conf c ');
  datam.qry_carrega_class_fila.SQL.Add('ON a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
  datam.qry_carrega_class_fila.SQL.Add('where ');
  datam.qry_carrega_class_fila.SQL.Add('s.active = ' + QuotedStr('Y'));
  datam.qry_carrega_class_fila.SQL.Add('and a.active = ' + QuotedStr('Y'));
  datam.qry_carrega_class_fila.SQL.Add('and s.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa + ' ');
  datam.qry_carrega_class_fila.SQL.Add('ORDER BY s.descricao ASC');
  datam.qry_carrega_class_fila.Active := True;

  vnumclasssub_fila := datam.qry_carrega_class_fila.RecordCount;
  SetLength(matrizclassificasub_fila, 6, vnumclasssub_fila);
  ind := 0;
  while not datam.qry_carrega_class_fila.Eof do
  begin
    matrizclassificasub_fila[0, ind] := datam.qry_carrega_class_fila.Fields[0].AsString;
    matrizclassificasub_fila[1, ind] := datam.qry_carrega_class_fila.Fields[1].AsString;
    matrizclassificasub_fila[2, ind] := datam.qry_carrega_class_fila.Fields[2].AsString;
    matrizclassificasub_fila[3, ind] := datam.qry_carrega_class_fila.Fields[3].AsString;
    matrizclassificasub_fila[4, ind] := datam.qry_carrega_class_fila.Fields[4].AsString;
    matrizclassificasub_fila[5, ind] := datam.qry_carrega_class_fila.Fields[5].AsString;

    Inc(ind);
    datam.qry_carrega_class_fila.Next;
  end;

  datam.qry_carrega_class_fila.Active := False;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 5');

  //Carrega Loja
  datam.qryCarregaLoja.Active := False;
  datam.qryCarregaLoja.SQL.Clear;
  datam.qryCarregaLoja.SQL.Add('select ');
  datam.qryCarregaLoja.SQL.Add('id, descricao ');
  datam.qryCarregaLoja.SQL.Add('from ');
  datam.qryCarregaLoja.SQL.Add('easy_call_empresa_loja_conf ');
  datam.qryCarregaLoja.SQL.Add('where ');
  datam.qryCarregaLoja.SQL.Add('easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa);
  datam.qryCarregaLoja.Active := True;
  vnumloja := datam.qryCarregaLoja.RecordCount;
  setlength(matrizloja,2,vnumloja);

  ind := 0;
  while not datam.qryCarregaLoja.Eof do
  begin
    matrizloja[0,ind] := datam.qryCarregaLoja.Fields[0].AsString;
    matrizloja[1,ind] := datam.qryCarregaLoja.Fields[1].AsString;

    inc(ind);
    datam.qryCarregaLoja.Next;
  end;

  datam.qryCarregaLoja.Active := False;

  //XFER FILA
  datam.qryCarregaXFerFila.Active := False;
  datam.qryCarregaXFerFila.SQL.Clear;
  datam.qryCarregaXFerFila.SQL.Add('select ');
  datam.qryCarregaXFerFila.SQL.Add('c1.id as codigo, ');
  datam.qryCarregaXFerFila.SQL.Add('concat(c1.descricao," - ", c2.descricao) as fila ');
  datam.qryCarregaXFerFila.SQL.Add('from ');
  datam.qryCarregaXFerFila.SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a ');
  datam.qryCarregaXFerFila.SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id ');
  datam.qryCarregaXFerFila.SQL.Add('left join easy_pabx_serv_fila_universal_call_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
//  datam.qryCarregaXFerFila.SQL.Add('left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id ');
  datam.qryCarregaXFerFila.SQL.Add('where ');
  datam.qryCarregaXFerFila.SQL.Add('c1.active = ' + QuotedStr('Y'));
  datam.qryCarregaXFerFila.SQL.Add('and c2.active = ' + QuotedStr('Y'));
  datam.qryCarregaXFerFila.SQL.Add('and a.active = ' + QuotedStr('Y'));
  datam.qryCarregaXFerFila.SQL.Add('and a.fone_transferencia_act = ' + QuotedStr('Y'));
  datam.qryCarregaXFerFila.SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil);
  datam.qryCarregaXFerFila.SQL.Add('group by c1.id ');
  datam.qryCarregaXFerFila.SQL.Add('order by 2 asc');
  datam.qryCarregaXFerFila.Active := True;

  vnumxferfila := datam.qryCarregaXFerFila.RecordCount;
  setlength(matrizxferfila,2,vnumxferfila);

  ind := 0;
  while not datam.qryCarregaXFerFila.Eof do
  begin
    matrizxferfila[0,ind] := datam.qryCarregaXFerFila.Fields[0].AsString;
    matrizxferfila[1,ind] := datam.qryCarregaXFerFila.Fields[1].AsString;

    inc(ind);
    datam.qryCarregaXFerFila.Next;
  end;

  datam.qryCarregaXFerFila.Active := False;

  //XFER URA
  datam.qr_carrega_xfer_ura.active := false;
  datam.qr_carrega_xfer_ura.Params[0].Value := TMyInfoLogin.sIDEmpresa;
  datam.qr_carrega_xfer_ura.active := true;

  vnumxferura := datam.qr_carrega_xfer_ura.recordcount;
  setlength(matrizxferura,2,vnumxferura);

  ind := 0;
  while not datam.qr_carrega_xfer_ura.eof do
  begin
    matrizxferura[0,ind] := datam.qr_carrega_xfer_ura.Fields[0].AsString;
    matrizxferura[1,ind] := datam.qr_carrega_xfer_ura.Fields[1].AsString;

    inc(ind);
    datam.qr_carrega_xfer_ura.next;
  end;

  datam.qr_carrega_xfer_ura.active := false;

  //XFER RAMAL
  datam.qryCarregaXFerRamal.Active := False;
  datam.qryCarregaXFerRamal.SQL.Clear;
  datam.qryCarregaXFerRamal.SQL.Add('select ');
  datam.qryCarregaXFerRamal.SQL.Add('g.easy_work_colaborador_conf_id as id, ');
  datam.qryCarregaXFerRamal.SQL.Add('u.descricao ');
  datam.qryCarregaXFerRamal.SQL.Add('from ');
  datam.qryCarregaXFerRamal.SQL.Add('easy_work_colaborador_has_grupo g ');
  datam.qryCarregaXFerRamal.SQL.Add('left join easy_work_colaborador_conf u on g.easy_work_colaborador_conf_id = u.id ');
  datam.qryCarregaXFerRamal.SQL.Add('where ');
  datam.qryCarregaXFerRamal.SQL.Add('g.active = ' + QuotedStr('Y'));
  datam.qryCarregaXFerRamal.SQL.Add('and g.easy_call_grupo_conf_id in ( ');
  datam.qryCarregaXFerRamal.SQL.Add('select ');
  datam.qryCarregaXFerRamal.SQL.Add('g2.easy_call_grupo_conf_id ');
  datam.qryCarregaXFerRamal.SQL.Add('from ');
  datam.qryCarregaXFerRamal.SQL.Add('easy_work_colaborador_has_grupo g2 ');
  datam.qryCarregaXFerRamal.SQL.Add('where ');
  datam.qryCarregaXFerRamal.SQL.Add('true ');
  datam.qryCarregaXFerRamal.SQL.Add('and g2.active = ' + QuotedStr('Y'));
  datam.qryCarregaXFerRamal.SQL.Add('and g2.easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryCarregaXFerRamal.SQL.Add(') ');
  datam.qryCarregaXFerRamal.SQL.Add('and g.easy_work_colaborador_conf_id not in (' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryCarregaXFerRamal.SQL.Add(') group by g.easy_work_colaborador_conf_id ');
  datam.qryCarregaXFerRamal.SQL.Add('order by u.descricao asc ');
  datam.qryCarregaXFerRamal.Active := True;

  vnumxferramal := datam.qryCarregaXFerRamal.RecordCount;
  setlength(matrizxferramal,2,vnumxferramal);

  ind := 0;
  while not datam.qryCarregaXFerRamal.Eof do
  begin
    matrizxferramal[0,ind] := datam.qryCarregaXFerRamal.Fields[0].AsString;
    matrizxferramal[1,ind] := datam.qryCarregaXFerRamal.Fields[1].AsString;

    inc(ind);
    datam.qryCarregaXFerRamal.Next;
  end;

  datam.qryCarregaXFerRamal.Active := False;

  //XFER PESQUISA
  datam.qr_carrega_xfer_pesquisa.active := false;
  datam.qr_carrega_xfer_pesquisa.Params[0].Value := TMyInfoLogin.sIDEmpresa;
  datam.qr_carrega_xfer_pesquisa.active := true;

  vnumxferpesquisa := datam.qr_carrega_xfer_pesquisa.recordcount;
  setlength(matrizxferpesquisa,2,vnumxferpesquisa);

  ind := 0;
  while not datam.qr_carrega_xfer_pesquisa.eof do
  begin
    matrizxferpesquisa[0,ind] := datam.qr_carrega_xfer_pesquisa.Fields[0].AsString;
    matrizxferpesquisa[1,ind] := datam.qr_carrega_xfer_pesquisa.Fields[1].AsString;

    inc(ind);
    datam.qr_carrega_xfer_pesquisa.next;
  end;

  datam.qr_carrega_xfer_pesquisa.active := false;

  //XFER RAMAL VIRTUAL
  datam.qr_carrega_xfer_virtual.active := false;
  datam.qr_carrega_xfer_virtual.Params[0].Value := TMyInfoLogin.sIDEmpresa;
  datam.qr_carrega_xfer_virtual.active := true;

  vnumxfervirtual := datam.qr_carrega_xfer_virtual.recordcount;
  setlength(matrizxfervirtual,2,vnumxfervirtual);

  ind := 0;
  while not datam.qr_carrega_xfer_virtual.eof do
  begin
    matrizxfervirtual[0,ind] := FormatFloat('00000', datam.qr_carrega_xfer_virtual.Fields[0].AsInteger);
    matrizxfervirtual[1,ind] := datam.qr_carrega_xfer_virtual.Fields[1].AsString;

    inc(ind);
    datam.qr_carrega_xfer_virtual.next;
  end;

  datam.qr_carrega_xfer_virtual.active := false;

  //XFER CONSULTA
  datam.qr_carrega_xfer_consulta.active := false;
  datam.qr_carrega_xfer_consulta.Params[0].Value := TMyInfoLogin.sIDEmpresa;
  datam.qr_carrega_xfer_consulta.active := true;

  vnumxferconsulta := datam.qr_carrega_xfer_consulta.recordcount;
  setlength(matrizxferconsulta,2,vnumxferconsulta);

  ind := 0;
  while not datam.qr_carrega_xfer_consulta.eof do
  begin
    matrizxferconsulta[0,ind] := datam.qr_carrega_xfer_consulta.Fields[0].AsString;
    matrizxferconsulta[1,ind] := datam.qr_carrega_xfer_consulta.Fields[1].AsString;

    inc(ind);
    datam.qr_carrega_xfer_consulta.next;
  end;

  datam.qr_carrega_xfer_consulta.active := false;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 6');

  //easy_callcenter_operacao_has_parametros
  datam.qry_operacao_has_parametros.Active := False;
  datam.qry_operacao_has_parametros.SQL.Clear;
  datam.qry_operacao_has_parametros.SQL.Add('select p.deslogar_agente_painel_act, time_to_sec(p.deslogar_agente_painel_tmp), ');
  datam.qry_operacao_has_parametros.SQL.Add('p.pausa_pos_atendimento_act, time_to_sec(p.pausa_pos_atendimento_tmp), ');
  datam.qry_operacao_has_parametros.SQL.Add('p.pausa_pos_popup_act, time_to_sec(p.pausa_pos_popup_tmp), p.pausa_pos_popup_msg, ');
  datam.qry_operacao_has_parametros.SQL.Add('p.pausa_login_act, time_to_sec(p.pausa_login_tmp), ');
  datam.qry_operacao_has_parametros.SQL.Add('p.pausa_login_popup_act, time_to_sec(p.pausa_login_popup_tmp), pausa_login_popup_msg, ');
  datam.qry_operacao_has_parametros.SQL.Add('p.alarme_act, p.alarme_1_tmp, p.alarme_1_msg, ');
  datam.qry_operacao_has_parametros.SQL.Add('p.alarme_2_tmp, p.alarme_2_msg, ');
  datam.qry_operacao_has_parametros.SQL.Add('p.alarme_3_tmp, p.alarme_3_msg ');
  datam.qry_operacao_has_parametros.SQL.Add('from easy_call_operacao_parametros_conf p ');
  datam.qry_operacao_has_parametros.SQL.Add('where p.easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao);
  datam.qry_operacao_has_parametros.ExecSQL;

  datam.qry_operacao_has_parametros.Active := True;

  setlength(matrizparametros,19);

  matrizparametros[0] := datam.qry_operacao_has_parametros.Fields[0].AsString;
  matrizparametros[1] := datam.qry_operacao_has_parametros.Fields[1].AsString;

  //pausa pos atendimento
  matrizparametros[2] := datam.qry_operacao_has_parametros.Fields[2].AsString;
  matrizparametros[3] := datam.qry_operacao_has_parametros.Fields[3].AsString;
  matrizparametros[4] := datam.qry_operacao_has_parametros.Fields[4].AsString;
  matrizparametros[5] := datam.qry_operacao_has_parametros.Fields[5].AsString;
  matrizparametros[6] := datam.qry_operacao_has_parametros.Fields[6].AsString;

  //pausa login
  matrizparametros[7] := datam.qry_operacao_has_parametros.Fields[7].AsString;
  matrizparametros[8] := datam.qry_operacao_has_parametros.Fields[8].AsString;
  matrizparametros[9] := datam.qry_operacao_has_parametros.Fields[9].AsString;
  matrizparametros[10] := datam.qry_operacao_has_parametros.Fields[10].AsString;
  matrizparametros[11] := datam.qry_operacao_has_parametros.Fields[11].AsString;

  //tempos para notificacao de TMA
  matrizparametros[12] := datam.qry_operacao_has_parametros.Fields[12].AsString;//act
  matrizparametros[13] := datam.qry_operacao_has_parametros.Fields[13].AsString;//tmp1
  matrizparametros[14] := datam.qry_operacao_has_parametros.Fields[14].AsString;//msg1
  matrizparametros[15] := datam.qry_operacao_has_parametros.Fields[15].AsString;//tmp2
  matrizparametros[16] := datam.qry_operacao_has_parametros.Fields[16].AsString;//msg2
  matrizparametros[17] := datam.qry_operacao_has_parametros.Fields[17].AsString;//tmp3
  matrizparametros[18] := datam.qry_operacao_has_parametros.Fields[18].AsString;//msg3

  datam.qry_operacao_has_parametros.Active := False;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 7');

  //URA
  //Recuperar paineis que ir�o abrir!
  datam.qr_carrega_sites.active := false;
  datam.qr_carrega_sites.Params[0].Value := TMyInfoLogin.sIDOperacao;
  datam.qr_carrega_sites.active := true;
  vnumsites := datam.qr_carrega_sites.recordcount;
  setlength(matrizurl,3,vnumsites);

  tabCliente.Tag := 0;

  ind := 0;
  while not datam.qr_carrega_sites.eof do
  begin
    matrizurl[0,ind] := datam.qr_carrega_sites.Fields[1].AsString;
    matrizurl[1,ind] := datam.qr_carrega_sites.Fields[3].AsString;
    matrizurl[2,ind] := datam.qr_carrega_sites.Fields[4].AsString;

    if datam.qr_carrega_sites.Fields[1].AsString = 'True' then
    begin
      TAction(albrowser.Actions[ind]).Enabled := True;
    end
    else
    begin
      if (ind <> 0) and (ind <> 8) and (ind <> 10) then
        TAction(albrowser.Actions[ind]).Enabled := False;

      if ind = 0 then
        tabCliente.Tag := -1;
    end;

    inc(ind);
    datam.qr_carrega_sites.next;
  end;
  btnFAQ.Enabled := False;
  cmdConferencia.Enabled := False;

  datam.qr_carrega_sites.active := false;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 8');

  //Integrador
  datam.qr_carrega_integrador.Active := false;
  datam.qr_carrega_integrador.Params[0].Value := TMyInfoLogin.sIDOperacao;
  datam.qr_carrega_integrador.Active := true;

  if datam.qr_carrega_integrador.RecordCount > 0 then
  begin
    vintegrador[0] := datam.qr_carrega_integrador.fields[1].AsString; //Ativo
    vintegrador[1] := IntToStr(datam.qr_carrega_integrador.fields[3].AsInteger - 1); //Tipo
    vintegrador[2] := datam.qr_carrega_integrador.fields[4].AsString; //destino
    vintegrador[3] := datam.qr_carrega_integrador.fields[5].AsString; //separador

    for nForIntegrador := 0 to 9 do
    begin
      vintegradorParams[nForIntegrador     ] := datam.qr_carrega_integrador.Fields[6 + nForIntegrador     ].AsString; //param x act
      vintegradorParams[nForIntegrador + 10] := datam.qr_carrega_integrador.Fields[6 + nForIntegrador + 10].AsString; //param x val
      vintegradorParams[nForIntegrador + 20] := datam.qr_carrega_integrador.Fields[6 + nForIntegrador + 20].AsString; //param x nome_act
      vintegradorParams[nForIntegrador + 30] := datam.qr_carrega_integrador.Fields[6 + nForIntegrador + 30].AsString; //param x nome_txt
    end;
  end
  else
  begin
    vintegrador[0] := 'False';
  end;

  datam.qr_carrega_integrador.Active := false;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10');

  if TMyInfoLogin.nTipo = 1 then
  begin
    //CHAT
    datam.qryChatCarregaConf.Active := False;
    datam.qryChatCarregaConf.SQL.Clear;
    datam.qryChatCarregaConf.SQL.Add('select ');
    datam.qryChatCarregaConf.SQL.Add('c1.id as sala, ');
{    concat(c1.descricao," - ", c2.descricao) as descricao,
        a.chat_atendimento_act,
        a.chat_transferencia_act,}
    datam.qryChatCarregaConf.SQL.Add('c2.wrapuptime as wrapuptime, ');
    datam.qryChatCarregaConf.SQL.Add('c2.desconexao_auto_act as desconexao_msg_act, ');
    datam.qryChatCarregaConf.SQL.Add('c2.desconexao_auto_tmp, ');
    datam.qryChatCarregaConf.SQL.Add('c2.desconexao_auto_msg as desconexao_msg_txt ');
    datam.qryChatCarregaConf.SQL.Add('from ');
    datam.qryChatCarregaConf.SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a ');
    datam.qryChatCarregaConf.SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id ');
    datam.qryChatCarregaConf.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
//    datam.qryChatCarregaConf.SQL.Add('left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id ');
    datam.qryChatCarregaConf.SQL.Add('where ');
    datam.qryChatCarregaConf.SQL.Add('true ');
    datam.qryChatCarregaConf.SQL.Add('and c1.active = ' + QuotedStr('Y'));
    datam.qryChatCarregaConf.SQL.Add('and c2.active = ' + QuotedStr('Y'));
    datam.qryChatCarregaConf.SQL.Add('and a.active = ' + QuotedStr('Y'));
    datam.qryChatCarregaConf.SQL.Add('and a.chat_atendimento_act = ' + QuotedStr('Y'));
    datam.qryChatCarregaConf.SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil);
    datam.qryChatCarregaConf.SQL.Add('group by c1.id ');
    datam.qryChatCarregaConf.SQL.Add('order by c1.id asc ');
    datam.qryChatCarregaConf.Active := True;

    ind := 0;
    sChatFilaIn := '';

    nChatDinamicosCriados := -1;

    if datam.qryChatCarregaConf.RecordCount > 0 then
    begin
      nChatDinamicosCriados := 0;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.1');

      vchat[1] := '60';//desconexao_auto_tmp
      vchat[3] := '1';//wrapuptime

      while not datam.qryChatCarregaConf.Eof do
      begin
        vchat[0] := datam.qryChatCarregaConf.Fields[2].AsString;//desconexao_auto_act
        if datam.qryChatCarregaConf.Fields[3].AsInteger > StrToInt(vchat[1]) then
          vchat[1] := datam.qryChatCarregaConf.Fields[3].AsString;//desconexao_auto_tmp
        vchat[2] := datam.qryChatCarregaConf.Fields[4].AsString;//desconexao_msg_txt
        if datam.qryChatCarregaConf.Fields[1].AsInteger > StrToInt(vchat[3]) then
          vchat[3] := datam.qryChatCarregaConf.Fields[1].AsString;//wrapuptime

        sChatFilaIn := sChatFilaIn + datam.qryChatCarregaConf.Fields[0].AsString;
        if ind < datam.qryChatCarregaConf.RecordCount-1 then
          sChatFilaIn := sChatFilaIn + ',';

        inc(ind);
        datam.qryChatCarregaConf.Next;
      end;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.2');

      //carrega Salas disponiveis para futura transferencia para outro chat / sala
      datam.qryChatCarrega.Active := False;
      datam.qryChatCarrega.SQL.Clear;
      datam.qryChatCarrega.SQL.Add('select ');
      datam.qryChatCarrega.SQL.Add('c1.id, ');
		  datam.qryChatCarrega.SQL.Add('concat(c1.descricao," - ", c2.descricao) as descricao ');
      datam.qryChatCarrega.SQL.Add('from ');
      datam.qryChatCarrega.SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a ');
      datam.qryChatCarrega.SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id ');
      datam.qryChatCarrega.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
      datam.qryChatCarrega.SQL.Add('where ');
      datam.qryChatCarrega.SQL.Add('true ');
      datam.qryChatCarrega.SQL.Add('and c1.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and c2.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.chat_atendimento_act = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil);
      datam.qryChatCarrega.SQL.Add('group by c1.id');
      datam.qryChatCarrega.SQL.Add('order by 2 asc');
      datam.qryChatCarrega.Active := True;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.3');

      vnumchatassunto := datam.qryChatCarrega.RecordCount;
      SetLength(matrizchatassunto, 2, vnumchatassunto);
      ind := 0;
      while not datam.qryChatCarrega.Eof do
      begin
        matrizchatassunto[0, ind] := datam.qryChatCarrega.Fields[0].AsString;//id
        matrizchatassunto[1, ind] := ConvertCharToFE(datam.qryChatCarrega.Fields[1].AsString);//descricao

        Inc(ind);
        datam.qryChatCarrega.Next;
      end;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.4');

      //chat transfer
      datam.qryChatCarrega.Active := False;
      datam.qryChatCarrega.SQL.Clear;
      datam.qryChatCarrega.SQL.Add('select ');
      datam.qryChatCarrega.SQL.Add('c1.id as codigo, ');
      datam.qryChatCarrega.SQL.Add('concat(c1.descricao," - ", c2.descricao) as fila ');
      datam.qryChatCarrega.SQL.Add('from ');
      datam.qryChatCarrega.SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a ');
      datam.qryChatCarrega.SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id ');
      datam.qryChatCarrega.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
//      datam.qryChatCarrega.SQL.Add('left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id ');
      datam.qryChatCarrega.SQL.Add('where ');
      datam.qryChatCarrega.SQL.Add('true ');
      datam.qryChatCarrega.SQL.Add('and c1.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and c2.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.active = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.chat_transferencia_act = ' + QuotedStr('Y') + ' ');
      datam.qryChatCarrega.SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil);
      datam.qryChatCarrega.SQL.Add('group by c1.id ');
      datam.qryChatCarrega.SQL.Add('order by 2 asc ');
      datam.qryChatCarrega.Active := True;

      mitChatXFer.Clear;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.5');

      ind := 0;
      while not datam.qryChatCarrega.Eof do
      begin
        mitChatXFerAssunto[ind] := TMenuItem.Create(mnuChatMoreOptions);
        mitChatXFerAssunto[ind].Caption := matrizchatassunto[1, ind];
        mitChatXFerAssunto[ind].OnClick := mitChatXFerAssuntoClick;
        mitChatXFerAssunto[ind].Tag := StrToInt(matrizchatassunto[0, ind]);
        mitChatXFer.Add(mitChatXFerAssunto[ind]);

        Inc(ind);
        datam.qryChatCarrega.Next;
      end;
      datam.qryChatCarrega.Active := False;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.6');

      //mensagens padrao
      datam.qryChatCarregaResp.Active := False;
      datam.qryChatCarregaResp.SQL.Clear;

      datam.qryChatCarregaResp.SQL.Add('select ');
      datam.qryChatCarregaResp.SQL.Add('g.id, ');
      datam.qryChatCarregaResp.SQL.Add('g.descricao ');
      datam.qryChatCarregaResp.SQL.Add('from ');
      datam.qryChatCarregaResp.SQL.Add('easy_pabx_serv_fila_universal_chat_conf_has_resposta_grupo a ');
      datam.qryChatCarregaResp.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf f on a.easy_pabx_serv_fila_universal_chat_conf_id = f.id ');
      datam.qryChatCarregaResp.SQL.Add('left join easy_call_resposta_rapida_grupo_conf g on a.easy_call_resposta_rapida_grupo_conf_id = g.id ');
      datam.qryChatCarregaResp.SQL.Add('where ');
      datam.qryChatCarregaResp.SQL.Add('true ');
      datam.qryChatCarregaResp.SQL.Add('and a.active = ' + QuotedStr('Y'));
      datam.qryChatCarregaResp.SQL.Add('and g.active = ' + QuotedStr('Y'));
      datam.qryChatCarregaResp.SQL.Add('and f.active = ' + QuotedStr('Y'));
      datam.qryChatCarregaResp.SQL.Add('and f.id in (' + sChatFilaIn + ')');
      datam.qryChatCarregaResp.Active := True;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.7');

      cboChatGroup.Items.Clear;
      cboChatGroup.ItemIndex := -1;
      cboChatGroup.Text := APP_FRM_MAIN_CHAT_SELECT_GROUP[ID_LANG];

      vnumchatresp := datam.qryChatCarregaResp.RecordCount;
      SetLength(matrizchatresposta, 2, vnumchatresp);
      ind := 0;
      sRespChatIn := '';
      while not datam.qryChatCarregaResp.Eof do
      begin
        matrizchatresposta[0, ind] := datam.qryChatCarregaResp.Fields[0].AsString;
        matrizchatresposta[1, ind] := datam.qryChatCarregaResp.Fields[1].AsString;

        if not datam.qryChatCarregaResp.Bof then
          sRespChatIn := sRespChatIn + ',';
        sRespChatIn := sRespChatIn + matrizchatresposta[0, ind];

        cboChatGroup.Items.Add(matrizchatresposta[1, ind]);
        Inc(ind);
        datam.qryChatCarregaResp.Next;
      end; //while not datam.qryChatCarregaResp.Eof do

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.8');

      datam.qryChatCarregaRespGrupo.Active := False;
      datam.qryChatCarregaRespGrupo.SQL.Clear;
      datam.qryChatCarregaRespGrupo.SQL.Add('select ');
      datam.qryChatCarregaRespGrupo.SQL.Add('m.id, ');
      datam.qryChatCarregaRespGrupo.SQL.Add('m.descricao, ');
      datam.qryChatCarregaRespGrupo.SQL.Add('m.mensagem, ');
      datam.qryChatCarregaRespGrupo.SQL.Add('a.easy_call_resposta_rapida_grupo_conf_id ');
      datam.qryChatCarregaRespGrupo.SQL.Add('from ');
      datam.qryChatCarregaRespGrupo.SQL.Add('easy_call_resposta_rapida_msg_has_grupo a ');
      datam.qryChatCarregaRespGrupo.SQL.Add('left join easy_call_resposta_rapida_msg_conf m on a.easy_call_resposta_rapida_msg_conf_id = m.id ');
      datam.qryChatCarregaRespGrupo.SQL.Add('where ');
      datam.qryChatCarregaRespGrupo.SQL.Add('true ');
      datam.qryChatCarregaRespGrupo.SQL.Add('and a.active = ' + QuotedStr('Y'));
      datam.qryChatCarregaRespGrupo.SQL.Add('and m.active = ' + QuotedStr('Y'));
      datam.qryChatCarregaRespGrupo.SQL.Add('and a.easy_call_resposta_rapida_grupo_conf_id in (' + sRespChatIn + ')');
      datam.qryChatCarregaRespGrupo.Active := True;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.9');

      cboChatDefaultMsg.Items.Clear;
      cboChatDefaultMsg.ItemIndex := -1;
      cboChatDefaultMsg.Text := APP_FRM_MAIN_CHAT_SELECT_ANSWER[ID_LANG];

      vnumchatrespgrupo := datam.qryChatCarregaRespGrupo.RecordCount;
      SetLength(matrizchatrespostagrupo, 4, vnumchatrespgrupo);
      ind := 0;
      while not datam.qryChatCarregaRespGrupo.Eof do
      begin
        matrizchatrespostagrupo[0, ind] := datam.qryChatCarregaRespGrupo.Fields[0].AsString;
        matrizchatrespostagrupo[1, ind] := datam.qryChatCarregaRespGrupo.Fields[1].AsString;
        matrizchatrespostagrupo[2, ind] := datam.qryChatCarregaRespGrupo.Fields[2].AsString;
        matrizchatrespostagrupo[3, ind] := datam.qryChatCarregaRespGrupo.Fields[3].AsString;

        Inc(ind);
        datam.qryChatCarregaRespGrupo.Next;
      end;

      frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 10.10');

      TAction(albrowser.Actions[3]).Enabled := True;

      if TMyInfoLogin.nChatSalasQtd > 0 then
        CriaChatDinamicos(TMyInfoLogin.nChatSalasQtd)
    end; //if datam.qryChatCarregaConf.RecordCount > 0 then

    datam.qryChatCarregaResp.Active := False;
    datam.qryChatCarregaRespGrupo.Active := False;
    datam.qryChatCarrega.Active := False;
    datam.qryChatCarregaConf.Active := False;
    //CHAT
  end;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 11');

  //FAQ
  //easy_faq_conf
  if TMyFaqClass.bFaqAct then
  begin
    btnFAQ.Enabled := True;

    //easy_faq_grupo_conf
    datam.qryFaqConf.Active := False;
    datam.qryFaqConf.SQL.Clear;
    datam.qryFaqConf.SQL.Add('select ');
    datam.qryFaqConf.SQL.Add('g.id, ');
    datam.qryFaqConf.SQL.Add('g.descricao ');
    datam.qryFaqConf.SQL.Add('from ');
    datam.qryFaqConf.SQL.Add('easy_wfaq_has_grupo a ');
    datam.qryFaqConf.SQL.Add('left join easy_wfaq_grupo_conf g on a.easy_wfaq_grupo_conf_id = g.id ');
    datam.qryFaqConf.SQL.Add('where ');
    datam.qryFaqConf.SQL.Add('true ');
    datam.qryFaqConf.SQL.Add('and a.active = ' + QuotedStr('Y'));
    datam.qryFaqConf.SQL.Add('and g.active = ' + QuotedStr('Y'));
    datam.qryFaqConf.SQL.Add('and a.easy_wfaq_conf_id = ' + IntToStr(TMyFaqClass.nFaqIdConf));
    datam.qryFaqConf.Active := True;

    TMyFaqClass.nQtdGrupoConf := datam.qryFaqConf.RecordCount;
    SetLength(TMyFaqClass.matrizGrupoConf, TMyFaqClass.nQtdGrupoConf, 2);

    if TMyFaqClass.nQtdGrupoConf > 0 then
    begin
      ind := 0;
      while not datam.qryFaqConf.Eof do
      begin
        TMyFaqClass.matrizGrupoConf[ind, 0] := datam.qryFaqConf.Fields[0].AsString;
        TMyFaqClass.matrizGrupoConf[ind, 1] := datam.qryFaqConf.Fields[1].AsString;

        Inc(ind);
        datam.qryFaqConf.Next;
      end;
    end;

    //easy_faq_resposta_conf
    datam.qryFaqConf.Active := False;
    datam.qryFaqConf.SQL.Clear;
    datam.qryFaqConf.SQL.Add('select ');
    datam.qryFaqConf.SQL.Add('p.id, ');
    datam.qryFaqConf.SQL.Add('p.descricao, ');
    datam.qryFaqConf.SQL.Add('p.texto, ');
    datam.qryFaqConf.SQL.Add('a.easy_wfaq_grupo_conf_id ');
    datam.qryFaqConf.SQL.Add('from ');
    datam.qryFaqConf.SQL.Add('easy_wfaq_grupo_has_pergunta a ');
    datam.qryFaqConf.SQL.Add('left join easy_wfaq_pergunta_conf p on a.easy_wfaq_pergunta_conf_id = p.id ');
    datam.qryFaqConf.SQL.Add('where ');
    datam.qryFaqConf.SQL.Add('true ');
    datam.qryFaqConf.SQL.Add('and a.active = ' + QuotedStr('Y'));
    datam.qryFaqConf.SQL.Add('and p.active = ' + QuotedStr('Y'));

    sFaqIn := '';
    for nForFaq := 0 to TMyFaqClass.nQtdGrupoConf-1 do
    begin
      sFaqIn := sFaqIn + TMyFaqClass.matrizGrupoConf[nForFaq, 0];
      if nForFaq < TMyFaqClass.nQtdGrupoConf-1 then
        sFaqIn := sFaqIn + ',';
    end;

    datam.qryFaqConf.SQL.Add('and a.easy_wfaq_grupo_conf_id in (' + sFaqIn + ')');
    datam.qryFaqConf.Active := True;

    TMyFaqClass.nQtdRespostaConf := datam.qryFaqConf.RecordCount;
    SetLength(TMyFaqClass.matrizRespostaConf, TMyFaqClass.nQtdRespostaConf, 4);

    if TMyFaqClass.nQtdRespostaConf > 0 then
    begin
      ind := 0;
      while not datam.qryFaqConf.Eof do
      begin
        TMyFaqClass.matrizRespostaConf[ind, 0] := datam.qryFaqConf.Fields[0].AsString;
        TMyFaqClass.matrizRespostaConf[ind, 1] := datam.qryFaqConf.Fields[1].AsString;
        TMyFaqClass.matrizRespostaConf[ind, 2] := datam.qryFaqConf.Fields[2].AsString;
        TMyFaqClass.matrizRespostaConf[ind, 3] := datam.qryFaqConf.Fields[3].AsString;

        Inc(ind);
        datam.qryFaqConf.Next;
      end;
    end;
    datam.qryFaqConf.Active := False;
  end; //if TMyFaqClass.bFaqAct then

  cboFAQFilter.Items.Clear;
  cboFAQFilter.Items.Add('Grupo');
  cboFAQFilter.Items.Add('Resposta');

  txtFAQFind.Enabled := False;
  txtFAQFind.Text := '';

  lstFAQFind.Items.Clear;
  lstFAQFind.Visible := False;
  try
    lstFAQFind.Repaint;
    lstFAQFind.Refresh;
  except
  end;

  lstFAQFindSub.Items.Clear;
  try
    lstFAQFindSub.Repaint;
    lstFAQFindSub.Refresh;
  except
  end;
  panFAQSub.Visible := False;
  //FAQ

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 12');

  //Conferencia
  if TMyInfoLogin.bConferencia then
  begin
    datam.qryConferencia.Active := False;
    datam.qryConferencia.SQL.Clear;
    datam.qryConferencia.SQL.Add('select id, descricao, tipo ');//tipo N: externo ou S: interno
    datam.qryConferencia.SQL.Add('from easy_pabx_serv_ramal_conferencia_conf ');
    datam.qryConferencia.SQL.Add('where active = ' + QuotedStr('Y'));
    datam.qryConferencia.SQL.Add('and easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao);
    datam.qryConferencia.Active := True;

    TMyConfCallClass.nQtdConfCall := datam.qryConferencia.RecordCount;
    SetLength(TMyConfCallClass.matrizConfCall, TMyConfCallClass.nQtdConfCall, 3);

    if TMyConfCallClass.nQtdConfCall > 0 then
    begin
      cmdConferencia.Enabled := True;
      cmdExecConf.Enabled := False;
      cmdCreateConf.Enabled := False;
      cmdDestroyConf.Enabled := False;

      ind := 0;
      while not datam.qryConferencia.Eof do
      begin
        TMyConfCallClass.matrizConfCall[ind, 0] := datam.qryConferencia.Fields[0].AsString;
        TMyConfCallClass.matrizConfCall[ind, 1] := datam.qryConferencia.Fields[1].AsString;
        TMyConfCallClass.matrizConfCall[ind, 2] := datam.qryConferencia.Fields[2].AsString;

        if TMyConfCallClass.matrizConfCall[ind, 2] = 'S' then
        begin
          //easy_callcenter_agente_conferencia_has_supervisor
          //Numeros internos
          datam.qryConferenciaTipo.Active := False;
          datam.qryConferenciaTipo.SQL.Clear;
          datam.qryConferenciaTipo.SQL.Add('select s.id, u.descricao, u.id ');
          datam.qryConferenciaTipo.SQL.Add('from easy_pabx_serv_ramal_conferencia_has_supervisor s ');
          datam.qryConferenciaTipo.SQL.Add('left join easy_work_colaborador_conf u on s.easy_work_colaborador_conf_id = u.id ');
          datam.qryConferenciaTipo.SQL.Add('where s.active = ' + QuotedStr('Y'));
          datam.qryConferenciaTipo.SQL.Add('and easy_pabx_serv_ramal_conferencia_conf_id = ' + TMyConfCallClass.matrizConfCall[ind, 0]);
          datam.qryConferenciaTipo.Active := True;

          TMyConfCallClass.nQtdIntConfCall := datam.qryConferenciaTipo.RecordCount;
          SetLength(TMyConfCallClass.matrizIntConfCall, TMyConfCallClass.nQtdIntConfCall, 3);

          if TMyConfCallClass.nQtdIntConfCall > 0 then
          begin
            indSub := 0;
            while not datam.qryConferenciaTipo.Eof do
            begin
              TMyConfCallClass.matrizIntConfCall[indSub, 0] := datam.qryConferenciaTipo.Fields[0].AsString;
              TMyConfCallClass.matrizIntConfCall[indSub, 1] := datam.qryConferenciaTipo.Fields[1].AsString;
              TMyConfCallClass.matrizIntConfCall[indSub, 2] := datam.qryConferenciaTipo.Fields[2].AsString;

              Inc(indSub);
              datam.qryConferenciaTipo.Next;
            end;
          end;
        end;

        if TMyConfCallClass.matrizConfCall[ind, 2] = 'N' then
        begin
          //easy_callcenter_agente_conferencia_has_numeros
          //Numeros externos
          datam.qryConferenciaTipo.Active := False;
          datam.qryConferenciaTipo.SQL.Clear;
          datam.qryConferenciaTipo.SQL.Add('select c.id, c.descricao, c.telefone, c.easy_pabx_serv_rota_inteligente_conf_id ');
          datam.qryConferenciaTipo.SQL.Add('from easy_pabx_serv_ramal_conferencia_numeros_conf c ');
          datam.qryConferenciaTipo.SQL.Add(' left join easy_pabx_serv_ramal_conferencia_has_numeros a on a.easy_pabx_serv_ramal_conferencia_numeros_conf_id = c.id ');
          datam.qryConferenciaTipo.SQL.Add('where c.active = ' + QuotedStr('Y'));
          datam.qryConferenciaTipo.SQL.Add('and a.active = ' + QuotedStr('Y'));
          datam.qryConferenciaTipo.SQL.Add('and a.easy_pabx_serv_ramal_conferencia_conf_id = ' + TMyConfCallClass.matrizConfCall[ind, 0]);
          datam.qryConferenciaTipo.Active := True;

          TMyConfCallClass.nQtdExtConfCall := datam.qryConferenciaTipo.RecordCount;
          SetLength(TMyConfCallClass.matrizExtConfCall, TMyConfCallClass.nQtdExtConfCall, 4);

          if TMyConfCallClass.nQtdExtConfCall > 0 then
          begin
            indSub := 0;
            while not datam.qryConferenciaTipo.Eof do
            begin
              TMyConfCallClass.matrizExtConfCall[indSub, 0] := datam.qryConferenciaTipo.Fields[0].AsString;
              TMyConfCallClass.matrizExtConfCall[indSub, 1] := datam.qryConferenciaTipo.Fields[1].AsString;
              TMyConfCallClass.matrizExtConfCall[indSub, 2] := datam.qryConferenciaTipo.Fields[2].AsString;
              TMyConfCallClass.matrizExtConfCall[indSub, 3] := datam.qryConferenciaTipo.Fields[3].AsString;

              Inc(indSub);
              datam.qryConferenciaTipo.Next;
            end;
          end;
        end;

        Inc(ind);
        datam.qryConferencia.Next;
      end;

      datam.qryConferenciaTipo.Active := False;
    end; //if TMyConfCallClass.nQtdConfCall > 0 then

    cboConfCallFilter.Items.Clear;
    cboConfCallFilter.Items.Add('Interno');
    cboConfCallFilter.Items.Add('Externo');

    txtConfCallFind.Enabled := False;
    txtConfCallFind.Text := '';

    lstConfCallFind.Items.Clear;
    lstConfCallFind.Visible := False;
    try
      lstConfCallFind.Repaint;
      lstConfCallFind.Refresh;
    except
    end;
  end; //if TMyInfoLogin.bConferencia then
  //Conferencia

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 13');

  //Centro de Custo
  if TMyInfoLogin.bRotaInteligente = False then
  begin
    datam.qryCentroCusto.Active := False;
    datam.qryCentroCusto.SQL.Clear;
    datam.qryCentroCusto.SQL.Add('select ');
    datam.qryCentroCusto.SQL.Add('r.id, ');
    datam.qryCentroCusto.SQL.Add('r.descricao ');
    datam.qryCentroCusto.SQL.Add('from ');
    datam.qryCentroCusto.SQL.Add('easy_call_operacao_has_pabx_serv_rota_inteligente i ');
    datam.qryCentroCusto.SQL.Add('left join easy_pabx_serv_rota_inteligente_conf r on i.easy_pabx_serv_rota_inteligente_conf_id = r.id ');
    datam.qryCentroCusto.SQL.Add('where ');
    datam.qryCentroCusto.SQL.Add('true ');
    datam.qryCentroCusto.SQL.Add('and i.active = ' + QuotedStr('Y'));
    datam.qryCentroCusto.SQL.Add('and r.active = ' + QuotedStr('Y'));
    datam.qryCentroCusto.SQL.Add('and i.easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao + ' ');
    datam.qryCentroCusto.SQL.Add('order by r.descricao asc ');
    datam.qryCentroCusto.Active := True;

    vnumcentrocusto := datam.qryCentroCusto.RecordCount;
    SetLength(matrizcentrocusto,2,vnumcentrocusto);

    ind := 0;
    while not datam.qryCentroCusto.eof do
    begin
      matrizcentrocusto[0,ind] := datam.qryCentroCusto.Fields[0].AsString;
      matrizcentrocusto[1,ind] := datam.qryCentroCusto.Fields[1].AsString;

      inc(ind);
      datam.qryCentroCusto.Next;
    end;

    datam.qryCentroCusto.Active := False;
  end
  else//if TMyInfoLogin.bRotaInteligente = False then
  begin
    vnumcentrocusto := 1;
    SetLength(matrizcentrocusto,2,vnumcentrocusto);

    matrizcentrocusto[0,0] := IntToStr(TMyInfoLogin.nIdRotaInteligente);
    matrizcentrocusto[1,0] := 'Default';
  end;//if TMyInfoLogin.bRotaInteligente = False then
  //Centro de Custo

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 14');

  if TAction(albrowser.Actions[4]).Enabled = True then
  begin
    datam.qryCarregaEMails.Active := False;
    datam.qryCarregaEMails.SQL.Clear;
    datam.qryCarregaEMails.SQL.Add('select ');
    datam.qryCarregaEMails.SQL.Add('	h.id, ');
    datam.qryCarregaEMails.SQL.Add('	h.data, ');
    datam.qryCarregaEMails.SQL.Add('	h.hora, ');
    datam.qryCarregaEMails.SQL.Add('	case ');
    datam.qryCarregaEMails.SQL.Add('		when h.canal in (4, 5) then "Email" ');
    datam.qryCarregaEMails.SQL.Add('		when h.canal = 7 then "Facebook" ');
    datam.qryCarregaEMails.SQL.Add('		when h.canal = 8 then "Twitter" ');
    datam.qryCarregaEMails.SQL.Add('		when h.canal = 9 then "ReclameAqui" ');
    datam.qryCarregaEMails.SQL.Add('		else "Outros" ');
    datam.qryCarregaEMails.SQL.Add('	end as "Canal", ');
    datam.qryCarregaEMails.SQL.Add('	case ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 0 then "Nao Lido" ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 1 then "Lido" ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 2 then "Lixeira" ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 3 then "Span" ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 4 then "Respondido" ');
    datam.qryCarregaEMails.SQL.Add('		when h.queuestatus = 6 then "Encaminhado" ');
    datam.qryCarregaEMails.SQL.Add('		else "Outros" ');
    datam.qryCarregaEMails.SQL.Add('	end as "Status", ');
    datam.qryCarregaEMails.SQL.Add('	h.cliente_nome, ');
    datam.qryCarregaEMails.SQL.Add('	h.cliente_mail, ');
    datam.qryCarregaEMails.SQL.Add('	f.descricao as "Assunto", ');
    datam.qryCarregaEMails.SQL.Add('	"0" as "Anexo", ');
    datam.qryCarregaEMails.SQL.Add('	"Texto" as "Mensagem" ');
    datam.qryCarregaEMails.SQL.Add('from ');
    datam.qryCarregaEMails.SQL.Add('easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist h ');
    datam.qryCarregaEMails.SQL.Add('left join easy_pabx_serv_fila_universal_form_conf f on h.easy_pabx_serv_fila_universal_ctr_id = f.easy_pabx_serv_fila_universal_ctr_id ');
    datam.qryCarregaEMails.SQL.Add('where ');
    datam.qryCarregaEMails.SQL.Add('true ');
    datam.qryCarregaEMails.SQL.Add('and h.canal in (4, 5) ');
    datam.qryCarregaEMails.SQL.Add('and easy_work_colaborador_conf_id = ' + QuotedStr(frmPrincipal.TMyInfoLogin.sIDUsuario));
    datam.qryCarregaEMails.SQL.Add('and h.data >= DATE_ADD(NOW(), INTERVAL -10 DAY) ');
    datam.qryCarregaEMails.Active := True;

    vnumemails := datam.qryCarregaEMails.RecordCount;
    SetLength(matrizemails,vnumemails,10);

    ind := 0;
    while not datam.qryCarregaEMails.Eof do
    begin
      matrizemails[ind,0] := datam.qryCarregaEMails.Fields[0].AsString;
      matrizemails[ind,1] := datam.qryCarregaEMails.Fields[1].AsString;
      matrizemails[ind,2] := datam.qryCarregaEMails.Fields[2].AsString;
      matrizemails[ind,3] := datam.qryCarregaEMails.Fields[3].AsString;
      matrizemails[ind,4] := datam.qryCarregaEMails.Fields[4].AsString;
      matrizemails[ind,5] := datam.qryCarregaEMails.Fields[5].AsString;
      matrizemails[ind,6] := datam.qryCarregaEMails.Fields[6].AsString;
      matrizemails[ind,7] := datam.qryCarregaEMails.Fields[7].AsString;
      matrizemails[ind,8] := datam.qryCarregaEMails.Fields[8].AsString;
      matrizemails[ind,9] := datam.qryCarregaEMails.Fields[9].AsString;

      CriaEMailDinamico(ind);

      inc(ind);
      datam.qryCarregaEMails.Next;
    end;

    datam.qryCarregaEMails.Active := False;
  end;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 15');

  tabcliente.TabVisible := false;
  tabagenda.TabVisible := false;
  tabscript.TabVisible := false;
  tabchat.TabVisible := false;
  tabChatHist.TabVisible := False;
  tabFAQ.TabVisible := False;
  tabemail.TabVisible := false;
  tabfax.TabVisible := false;
  tabsms.TabVisible := false;
  tabpesquisa.TabVisible := false;
  tabajuda.TabVisible := false;
  tabConferencia.TabVisible := False;

  btnDesligar.Enabled  := False;
  frameBar.Enabled     := False;
  tbrNavegacao.Enabled := False;

  timerstatuslinha.Enabled := False;
  shpStatus.brush.Color := clred;

  frmPrincipal.LogCallStep('log_login_act', 'carregaoperacao :: Step 16');
end;

procedure TfrmPrincipal.CarregaTelasLinguagem;
begin
  lbstatus.Caption := APP_FRM_MAIN_STATUS_LOGOFF[ID_LANG];
  lblDescTempoPausa.Caption := APP_FRM_MAIN_DESC_PAUSE_TIME[ID_LANG];
  lblDescProtocolo.Caption := APP_FRM_MAIN_DESC_PROTOCOL[ID_LANG];
  lblDescCoaching.Caption := APP_FRM_MAIN_FRAME_BAR_COACHING[ID_LANG];
  lblDescLoja.Caption := APP_FRM_MAIN_DESC_STORE[ID_LANG];
  lblDescNumero.Caption := APP_FRM_MAIN_DESC_NUMBER[ID_LANG];
  lblDescFila.Caption := APP_FRM_MAIN_DESC_QUEUE[ID_LANG];
  lblDescCliente.Caption := APP_FRM_MAIN_DESC_CUSTOMER[ID_LANG];
  lblDescInicio.Caption := APP_FRM_MAIN_DESC_START[ID_LANG];
  lblDescDuracao.Caption := APP_FRM_MAIN_DESC_DURATION[ID_LANG];
  lblDescPausa.Caption := APP_FRM_MAIN_DESC_PAUSE[ID_LANG];

  btnLogin.Caption := APP_FRM_MAIN_BTN_LOGIN[ID_LANG];
  btnLogin.Hint := APP_FRM_MAIN_BTN_LOGIN[ID_LANG];
  btnLogoff.Caption := APP_FRM_MAIN_BTN_LOGOFF[ID_LANG];
  btnLogoff.Hint := APP_FRM_MAIN_BTN_LOGOFF[ID_LANG];
  btnFechar.Caption := APP_FRM_MAIN_BTN_CLOSE[ID_LANG];
  btnFechar.Hint := APP_FRM_MAIN_BTN_CLOSE[ID_LANG];
  btnDesligar.Caption := APP_FRM_MAIN_BTN_HANGUP[ID_LANG];
  btnCliente.Caption := APP_FRM_MAIN_BTN_CUSTOMER[ID_LANG];
  btnAgenda.Caption := APP_FRM_MAIN_BTN_AGENDA[ID_LANG];
  btnScript.Caption := APP_FRM_MAIN_BTN_SCRIPT[ID_LANG];
  btnChat.Caption := APP_FRM_MAIN_BTN_CHAT[ID_LANG];
  btnEMail.Caption := APP_FRM_MAIN_BTN_EMAIL[ID_LANG];
  btnFAX.Caption := APP_FRM_MAIN_BTN_FAX[ID_LANG];
  btnSMS.Caption := APP_FRM_MAIN_BTN_SMS[ID_LANG];
  btnPesquisa.Caption := APP_FRM_MAIN_BTN_RESEARCH[ID_LANG];
  btnAjuda.Caption := APP_FRM_MAIN_BTN_HELP[ID_LANG];
  cmdConferencia.Caption := APP_FRM_MAIN_BTN_CONF[ID_LANG];
  cmdIntegrador.Caption := APP_FRM_MAIN_BTN_INTEG[ID_LANG];

  frameBar.Items[0].Caption := APP_FRM_MAIN_FRAME_BAR_DIALPAD[ID_LANG];
  frameBar.Items[1].Caption := APP_FRM_MAIN_FRAME_BAR_TRANSFER[ID_LANG];
  frameBar.Items[2].Caption := APP_FRM_MAIN_FRAME_BAR_PAUSE[ID_LANG];
  frameBar.Items[3].Caption := APP_FRM_MAIN_FRAME_BAR_CONFIGURATION[ID_LANG];
  frameBar.Items[4].Caption := APP_FRM_MAIN_FRAME_BAR_COACHING[ID_LANG];
  frameBar.Items[5].Caption := APP_FRM_MAIN_FRAME_BAR_CLASSIFICATION[ID_LANG];

  tabCliente.Caption := APP_FRM_MAIN_BTN_CUSTOMER[ID_LANG];
  tabAgenda.Caption := APP_FRM_MAIN_BTN_AGENDA[ID_LANG];
  tabScript.Caption := APP_FRM_MAIN_BTN_SCRIPT[ID_LANG];
  tabChat.Caption := APP_FRM_MAIN_BTN_CHAT[ID_LANG];
  tabEMail.Caption := APP_FRM_MAIN_BTN_EMAIL[ID_LANG];
  tabFAX.Caption := APP_FRM_MAIN_BTN_FAX[ID_LANG];
  tabSMS.Caption := APP_FRM_MAIN_BTN_SMS[ID_LANG];
  tabPesquisa.Caption := APP_FRM_MAIN_BTN_RESEARCH[ID_LANG];
  tabAjuda.Caption := APP_FRM_MAIN_BTN_HELP[ID_LANG];
  tabConferencia.Caption := APP_FRM_MAIN_BTN_CONF[ID_LANG];

  stbStatusBar.Panels[1].Text := APP_FRM_MAIN_STATUS_BAR_NOT_REGISTED[ID_LANG];
  stbStatusBar.Panels[2].Text := APP_FRM_MAIN_STATUS_BAR_AGENT[ID_LANG];
  stbStatusBar.Panels[3].Text := APP_FRM_MAIN_STATUS_BAR_LOGIN[ID_LANG];
  stbStatusBar.Panels[4].Text := APP_FRM_MAIN_STATUS_BAR_VERSION[ID_LANG];

  chkChatRolagem.Caption := APP_FRM_MAIN_CHAT_AUTOSCROLL[ID_LANG];
  cmdChatSend.Caption := APP_FRM_MAIN_CHAT_SEND[ID_LANG];
  cmdChatClear.Caption := APP_FRM_MAIN_CHAT_CLEAR[ID_LANG];
  cmdChatSalvar.Caption := APP_FRM_MAIN_CHAT_SAVE[ID_LANG];
  lblChatClassificacao.Caption := APP_FRM_MAIN_CHAT_CLASS[ID_LANG];
  lblChatSubClassificacao.Caption := APP_FRM_MAIN_CHAT_SUB_CLASS[ID_LANG];
  lblChatObservacao.Caption := APP_FRM_MAIN_CHAT_OBS_CLASS[ID_LANG];
end;

procedure TfrmPrincipal.Desligar(sTipoDesconexao: String);
var
  ind: integer;
begin

LogCallStep('log_hangup_act', 'desliga-StepBegin');//Remover

  try
    ForceForegroundNoActivate;
  except
  end;

  if TMyVaxIncomingCallParam.bRecord then
    TerminaGravacaoAudio(0);

  TMyVaxIncomingCallParam.nTotalDevices := 0;
  tmrAudioRing.Enabled := False;
  try
    wavAudioRing.Notify := False;
  except
  end;

  tmrSoundLevel.enabled := false;
  tmrDuracao.Enabled := false;

  pbvolumeout.Position := 0;
  pbvolumein.Position := 0;

  imgtempo.picture.bitmap := nil;
  lbbina.Caption := '';
  lblLoja.Caption := '';
  lbfila.Caption := '';
  lbcliente.Caption := '';
  lbinicio.Caption := '00:00:00';
  lbduracao.caption := '00:00:00';
  lbtempo.Caption := '00:00:00';
  lbprotocolo.caption := '0000000000';

  panInfoChamada.ShowHint := False;
  panInfoChamada.Hint := '';

  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
  varqini.WriteBool('Controle','Hold',false);
  varqini.WriteBool('Controle','Mudo',false);
  varqini.free;

  TMyAppStatus.sTipoDesconexao := sTipoDesconexao;

  if TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG] then
  begin
    if TMyAppStatus.sTipoEvento = APP_EVENT_TYPE_LOGOFF[ID_LANG] then
    begin
      lbstatus.Caption := APP_FRM_MAIN_STATUS_LOGOFF[ID_LANG];
      lbstatus.Color := clred;
    end
    else
    begin
      VerificaLoginAtivo;
      lbstatus.Caption := APP_FRM_MAIN_STATUS_AVAILABLE[ID_LANG];
      lbstatus.Color := claqua;
    end;
  end
  else
  begin
    lbstatus.Caption := APP_FRM_MAIN_STATUS_PAUSE_DB[ID_LANG] + TMyPausa.sPausaTipo;
    lbstatus.Color := clyellow;
  end;

  if TMyAppStatus.bLogado then
    if (TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG]) and (TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_CHANGEPAUSE[ID_LANG]) then
      actlogoff.Enabled := True;

  if TMyPausa.bDiscouPausa = False then
  begin
    btnDesligar.Enabled := False;

    if TMyAppStatus.bAtendido = True then
    begin
      if TMyClassificacao.bAuto then
        ClassificaChamadaAuto
      else
      begin
        LogCallStep('log_hangup_act', '');
        framebar.CloseItem(1,true);
        framebar.OpenItem(5,true);

        for ind := 0 to vnumpausa-1 do
        begin
          if matrizpausa[0,ind] = '10002' then
          begin
            pausar(APP_PAUSE_TYPE_AFTER_HU[ID_LANG]);

            if matrizparametros[2] = 'True' then
            begin
              tmrPausaPos.Interval := StrToInt(matrizparametros[3])*1000;
              tmrPausaPos.Enabled := True;
            end;
          end;
        end;
      end;
    end
    else
    begin
      ClassificaChamadaCancelada;
    end;
  end
  else //if discoupausa = False then
  begin
    btnDesligar.Enabled := False;

    if TMyAppStatus.bAtendido = True then
    begin
      if TMyClassificacao.bAuto then
        ClassificaChamadaAuto
      else
      begin
        lbstatus.Caption := APP_FRM_MAIN_STATUS_PAUSE_AFTER_HU[ID_LANG];
        lbstatus.Color := clyellow;
        framebar.CloseItem(1,true);
        framebar.OpenItem(5,true);

        for ind := 0 to vnumpausa-1 do
        begin
          if matrizpausa[0,ind] = '10002' then
          begin
            if matrizparametros[2] = 'True' then
            begin
              tmrPausaPos.Interval := StrToInt(matrizparametros[3])*1000;
              tmrPausaPos.Enabled := True;
            end;
          end;
        end;
      end;
    end
    else
    begin
      ClassificaChamadaCancelada;
    end;
  end; //if discoupausa = False then

  TMyAppStatus.bAtendido := False;
  TMyAppStatus.bSainte := False;
  DesmontaXFerAssistida(1);

  if framebar.Items[2].State = stOpened then
  begin
    if TMyAppStatus.sTipoEvento = APP_EVENT_TYPE_PAUSE[ID_LANG] then
    begin
      Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_END_PAUSE[ID_LANG];
      Tfrmpausa(framebar.items[2].frame).cbpausas.Enabled := false;
    end
    else
      Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_START_PAUSE[ID_LANG];
  end;

LogCallStep('log_hangup_act', 'desliga-StepEnd');//Remover
end;

procedure TfrmPrincipal.despausapos;
begin
  framebar.OpenItem(2,true);

  if TMyPausa.bDiscouPausa = false then
  begin
    Tfrmpausa(framebar.items[2].frame).btnPausaClick(self);
  end
  else
  begin
    lbstatus.Caption := APP_FRM_MAIN_STATUS_PAUSE_DB[ID_LANG] + TMyPausa.sPausaTipo;
    lbstatus.Color := clyellow;
  end;

  TMyPausa.bDiscouPausa := false;
  browseragenda.Stop;
  browsercliente.Stop;

  try
    if tabCliente.Tag = 0 then
      browsercliente.Navigate('about:blank');
    browseragenda.Navigate('about:blank');
    browserscript.Navigate('about:blank');
    //browserchat.Navigate('about:blank');
    //browseremail.Navigate('about:blank');
    browserfax.Navigate('about:blank');
    browsersms.Navigate('about:blank');
    browserpesquisa.Navigate('about:blank');
    browserajuda.Navigate('about:blank');

    tabcliente.TabVisible := false;
    tabagenda.TabVisible := false;
    tabscript.TabVisible := false;
    //tabchat.TabVisible := false;
    tabChatHist.TabVisible := False;
    //tabFAQ.TabVisible := False;
    tabemail.TabVisible := false;
    tabfax.TabVisible := false;
    tabsms.TabVisible := false;
    tabpesquisa.TabVisible := false;
    tabajuda.TabVisible := false;
    tabConferencia.TabVisible := False;
  except

  end;
end;

procedure TfrmPrincipal.discar(numero: string; bUpdateStatus: Boolean);
var
  ToURI: String;
begin
  If numero = '' Then
  Begin
    mensagem(APP_MB_WAR_SELECT_NUMBER[ID_LANG]);
    Exit;
  End;

  if bUpdateStatus then
  begin
    datam.qryUpdateStatus.Active := False;
    datam.qryUpdateStatus.SQL.Clear;
    datam.qryUpdateStatus.SQL.Add('insert into easy_rept_sist_semaforo_call_hist ');

    if Copy(numero, 1, 5) = 'AGE01' then
    begin
      datam.qryUpdateStatus.SQL.Add('(versao, acao, easy_call_operacao_conf_id, param1, param2, param3, easy_work_colaborador_conf_id) ');
      datam.qryUpdateStatus.SQL.Add('values (');
      datam.qryUpdateStatus.SQL.Add(QuotedStr(VersaoExe) + ', ');

      datam.qryUpdateStatus.SQL.Add('1, ');
      datam.qryUpdateStatus.SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
      datam.qryUpdateStatus.SQL.Add(QuotedStr(frmLogin.TMyMachineInfo.sIP_Address) + ', ');
      datam.qryUpdateStatus.SQL.Add(QuotedStr(frmLogin.TMyMachineInfo.sMac_Address) + ', ');
      datam.qryUpdateStatus.SQL.Add(QuotedStr(IntToStr(TMyInfoLogin.nTipo + 1)) + ', ');
    end
    else
    begin
      datam.qryUpdateStatus.SQL.Add('(versao, acao, easy_call_operacao_conf_id, param1, easy_work_colaborador_conf_id) ');
      datam.qryUpdateStatus.SQL.Add('values (');
      datam.qryUpdateStatus.SQL.Add(QuotedStr(VersaoExe) + ', ');

      if Copy(numero, 1, 5) = 'AGE02' then
      begin
        datam.qryUpdateStatus.SQL.Add('2, ');
        datam.qryUpdateStatus.SQL.Add('0, ');
        datam.qryUpdateStatus.SQL.Add(TMyInfoLogin.sIDUsuario + ', ');

        tmrSendAGE0X.Enabled := False;
      end
      else
        if Copy(numero, 1, 5) = 'AGE03' then
        begin
          datam.qryUpdateStatus.SQL.Add('3, ');
          datam.qryUpdateStatus.SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
          datam.qryUpdateStatus.SQL.Add(TMyPausa.sIDPausa + ', ');

          tmrSendAGE0X.Enabled := True;
        end
        else
          if Copy(numero, 1, 5) = 'AGE04' then
          begin
            datam.qryUpdateStatus.SQL.Add('4, ');
            datam.qryUpdateStatus.SQL.Add('0, ');
            datam.qryUpdateStatus.SQL.Add(TMyPausa.sIDPausa + ', ');

            tmrSendAGE0X.Enabled := False;
          end
          else
            if Copy(numero, 1, 5) = 'AGE05' then
            begin
              datam.qryUpdateStatus.SQL.Add('5, ');
              datam.qryUpdateStatus.SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
              datam.qryUpdateStatus.SQL.Add(TMyPausa.sIDPausa + ', ');

              tmrSendAGE0X.Enabled := True;
            end;
    end;

    datam.qryUpdateStatus.SQL.Add(QuotedStr(frmprincipal.TMyInfoLogin.sIDUsuario) + ') ');
    datam.qryUpdateStatus.ExecSQL;
    datam.qryUpdateStatus.Active := False;

    Exit;
  end;

  TMyAppStatus.sSipDialStatus := '0';
  TMyAppStatus.sSipDialID := FormatFloat('00000', Random(99999));
  TMyAppStatus.sTipoDesconexao := 'C';

  ToURI := 'sip:' + TMyAppStatus.sSipDialID + '0' + numero + '@' + TMyInfoLogin.sIPPABX;
  If Vax.Connect(0, ToURI, GetSelectedAudioIn(), GetSelectedAudioOut()) = False Then
  begin
    ErrorMessages();
  end;
end;

procedure TfrmPrincipal.VerificaLoginAtivo;
begin
  tmrVerificaLoginAtivo.Enabled := False;

  if TMyAppStatus.bAtendido then
    Exit;

  if TMyAppStatus.bLogado = false then
    Exit;
  
  if (matrizparametros[0] = 'True') and (StrToInt(matrizparametros[1]) > 10) then
  begin
    tmrVerificaLoginAtivo.Interval := StrToInt(matrizparametros[1])*1000;
    tmrVerificaLoginAtivo.Enabled := True;
  end;
end;

procedure TfrmPrincipal.errormessages;
var
  ErrorCode : DWORD;
  erromessage:string;
begin
  ErrorCode :=  Vax.GetVaxObjectError();
  erromessage := '';
  case ErrorCode of
    10: erromessage := APP_MB_VAX_ERR_NOT_CONNECTED[ID_LANG];
    11: erromessage := APP_MB_VAX_ERR_OPEN_PORT[ID_LANG];
    12: erromessage := APP_MB_VAX_ERR_INVALID_LICENCE[ID_LANG];
    13: erromessage := APP_MB_VAX_ERR_OPEN_WINDOW[ID_LANG];
    14:
    begin
      if nChatDinamicosCriados = -1 then
        erromessage := APP_MB_VAX_ERR_MIC_NOT_FOUND[ID_LANG];
    end;
    15: erromessage := APP_MB_VAX_ERR_SOUND_NOT_FOUND[ID_LANG];
    16: erromessage := APP_MB_VAX_ERR_MIC[ID_LANG];
    17: erromessage := APP_MB_VAX_ERR_SOUND[ID_LANG];
    18: erromessage := APP_MB_VAX_ERR_VOL_MIC[ID_LANG];
    19: erromessage := APP_MB_VAX_ERR_VOL_SOUND[ID_LANG];
    20: erromessage := APP_MB_VAX_ERR_START_REC[ID_LANG];
    21: erromessage := APP_MB_VAX_ERR_OPEN_WAV[ID_LANG];
    22: erromessage := APP_MB_VAX_ERR_INVALID_SIP[ID_LANG];
    23: erromessage := APP_MB_VAX_ERR_CODEC[ID_LANG];
    24: erromessage := APP_MB_VAX_ERR_CREATE_SDP[ID_LANG];
    25: erromessage := APP_MB_VAX_ERR_CREATE_CONECTION[ID_LANG];
    26: erromessage := APP_MB_VAX_ERR_CREATE_REGISTER[ID_LANG];
    27: erromessage := APP_MB_VAX_ERR_CREATE_UNREGISTER[ID_LANG];
    28: erromessage := APP_MB_VAX_ERR_CREATE_DISCONECTION[ID_LANG];
    29: erromessage := APP_MB_VAX_ERR_INVALID_LINE[ID_LANG];
    30: erromessage := APP_MB_VAX_ERR_BUSY_LINE[ID_LANG];
    31: erromessage := APP_MB_VAX_ERR_CLOSED_LINE[ID_LANG];
    32: erromessage := APP_MB_VAX_ERR_INVALID_CALLID[ID_LANG];
    33: erromessage := APP_MB_VAX_ERR_INVALID_VALUE[ID_LANG];
    34: erromessage := APP_MB_VAX_ERR_INVALID_SESSION[ID_LANG];
    35: erromessage := APP_MB_VAX_ERR_READ_WAV[ID_LANG];
    36: erromessage := APP_MB_VAX_ERR_WRITE_WAV[ID_LANG];
    37: erromessage := APP_MB_VAX_ERR_UNSUPPORTED_WAV[ID_LANG];
    38: erromessage := APP_MB_VAX_ERR_CANCEL_REQUEST[ID_LANG];
    else
      erromessage := APP_MB_VAX_ERR_GENERIC[ID_LANG] + ' (ErrorCode: ' + IntToStr(ErrorCode) + ')';
  end;
  if erromessage <> '' then
  begin
    mensagem(erromessage);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if TMyCaptureScreen.nThreadsRunning > 0 then
    frmProgressBar.ShowModal;

  LimpaDirBlobChatGeral(TMyChat.sDirBlobReceived);

  if frmLogin.vping = True then
  begin
    LogPing('PingStopped', icmpClientPing.Host);

    tmrIcmpPing.Enabled := False;
  end;

  //ServerSocket1.Active := false;
  datam.con_connect.connected := false;
  datam.conChatQueue.Connected := False;
  Vax.UnInitialize();
  application.Terminate;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := TMyAppStatus.bPodeFechar;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  frmPrincipal.Caption := PChar(GetStringResource(rcCaptionPrincipal));

  sskinmanager1.SkinDirectory := ExtractFilePath(Application.ExeName)+'skin';

  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
  sskinmanager1.SkinName:= varqini.readstring('Configuracoes','skin','WLM');
  varqini.free;

  sskinmanager1.active := true;
  Application.OnException := RotinaGeral;

  //frmprincipal.Width := 280;
  edtbrowser.Height := 0;

  TMyAppStatus.bPodeFechar := False;

  TMyCoaching.bCoaching := False;
  shpCoaching.Brush.Color := clSilver;

  for I := 1 to ParamCount do
    ProcessParam(ParamStr(I));
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //CarregaTelasLinguagem;

  if TMyCaptureScreen.bCapture then
    if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_ALL then
      IniciaGravacaoTela(False);

  tbrSeparator.Width := tbrTop.Width - (cmdMaximizar.Width * 5) - 3;
  tbrSeparator.Tag := tbrSeparator.Width;

  stbStatusBar.Panels[4].Text := APP_FRM_MAIN_STATUS_BAR_VERSION[ID_LANG] + VersaoExe;
  try
    stbStatusBar.Hint := 'SIP Version: ' + vax.GetVersionFile + ' / ' + vax.GetVersionSDK;
  except
  end;

  try
    webExecNavigate.Height := 0;
    webExecNavigate.Width := 0;
  except
  end;
end;

procedure TfrmPrincipal.frameBarChange(Sender: TObject; TitleItem: TsTitleItem);
begin
  if TitleItem.ID = 0 then
  begin
    if TMyAppStatus.bAtendido = true then
    begin
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := False;
      actlogoff.Enabled := False;
    end
    else
    begin
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := True;
      if TMyAppStatus.bLogado then
        if (TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG]) and (TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_CHANGEPAUSE[ID_LANG]) then
          actlogoff.Enabled := True;
    end;

    try
      Tfrmdialpad(framebar.items[0].frame).HabilitaDialPad(TMyInfoLogin.bDialPad);
    except
    end;
  end;

  case TitleItem.ID of
    0:
    begin
      try
        frmXFer.Free;
      except
      end;
      try
        frmPausa.Free;
      except
      end;
      try
        frmCoaching.Free;
      except
      end;
      try
        frmConfiguracoes.Free;
      except
      end;
      try
        frmClassifica.Free;
      except
      end;
    end;

    1:
    begin
      try
        frmDialPad.Free;
      except
      end;
      try
        frmPausa.Free;
      except
      end;
      try
        frmCoaching.Free;
      except
      end;
      try
        frmConfiguracoes.Free;
      except
      end;
      try
        frmClassifica.Free;
      except
      end;
    end;

    2:
    begin
      try
        frmDialPad.Free;
      except
      end;
      try
        frmXFer.Free;
      except
      end;
      try
        frmCoaching.Free;
      except
      end;
      try
        frmConfiguracoes.Free;
      except
      end;
      try
        frmClassifica.Free;
      except
      end;
    end;

    3:
    begin
      try
        frmDialPad.Free;
      except
      end;
      try
        frmXFer.Free;
      except
      end;
      try
        frmPausa.Free;
      except
      end;
      try
        frmCoaching.Free;
      except
      end;
      try
        frmClassifica.Free;
      except
      end;
    end;

    4:
    begin
      try
        frmDialPad.Free;
      except
      end;
      try
        frmXFer.Free;
      except
      end;
      try
        frmPausa.Free;
      except
      end;
      try
        frmConfiguracoes.Free;
      except
      end;
      try
        frmClassifica.Free;
      except
      end;
    end;

    5:
    begin
      try
        frmDialPad.Free;
      except
      end;
      try
        frmXFer.Free;
      except
      end;
      try
        frmPausa.Free;
      except
      end;
      try
        frmCoaching.Free;
      except
      end;
      try
        frmConfiguracoes.Free;
      except
      end;
    end;
  end;
end;

procedure TfrmPrincipal.framebarItems0CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyClassificacao.bClassificando then//if tmrPausaPos.Enabled or tmrLastClassAuto.Enabled then
  begin
    framebar.closeitem(0, true);
    framebar.OpenItem(5, true);

    exit;
  end;

  if TMyPausa.bTrocandoPausa then
  begin
    framebar.closeitem(0, true);
    framebar.OpenItem(2, true);

    exit;
  end;

  Frame := Tfrmdialpad.Create(nil);
  TfrmDialPad(framebar.items[0].frame).CarregaCentroCusto;
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
  Tfrmdialpad(framebar.items[0].frame).tbvolumeout.position := varqini.readinteger('Controle','volumeout',0);
  Tfrmdialpad(framebar.items[0].frame).tbvolumein.position := varqini.readinteger('Controle','volumein',0);
  Tfrmdialpad(framebar.items[0].frame).cboMudo.Checked := varqini.readBool('Controle','Mudo',false);
  Tfrmdialpad(framebar.items[0].frame).cboHold.Checked := varqini.readBool('Controle','Hold',false);
  //Tfrmdialpad(framebar.items[0].frame).cboDnd.Checked := varqini.readBool('Controle','dnd',false);
  varqini.free;

  if TMyPausa.bTravaRestricao = true then
  begin
    mensagem(APP_MB_WAR_USER_PAUSED[ID_LANG]);
    framebar.closeitem(0,true);
    exit;
  end;

  Tfrmdialpad(framebar.items[0].frame).CarregaTelasLinguagem;
end;

procedure TfrmPrincipal.framebarItems1CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyClassificacao.bClassificando then//if tmrPausaPos.Enabled or tmrLastClassAuto.Enabled then
  begin
    framebar.closeitem(2, true);
    framebar.OpenItem(5, true);

    exit;
  end;

  Frame := Tfrmpausa.Create(nil);
  Tfrmpausa(framebar.items[2].frame).carregapausa;

  if TMyPausa.bTravaRestricao = true then
  begin
    mensagem(APP_MB_WAR_USER_PAUSED[ID_LANG]);
    framebar.closeitem(2,true);
    exit;
  end;

end;

procedure TfrmPrincipal.framebarItems2CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyClassificacao.bClassificando then//if tmrPausaPos.Enabled or tmrLastClassAuto.Enabled then
  begin
    framebar.closeitem(3, true);
    framebar.OpenItem(5, true);

    exit;
  end;

  if TMyPausa.bTrocandoPausa then
  begin
    framebar.closeitem(3, true);
    framebar.OpenItem(2, true);

    exit;
  end;

  Frame := Tfrmconfiguracoes.Create(nil);
  Tfrmconfiguracoes(framebar.items[3].frame).ListarArquivos(ExtractFilePath(Application.ExeName)+'skin',false);

  if TMyPausa.bTravaRestricao = true then
  begin
    mensagem(APP_MB_WAR_USER_PAUSED[ID_LANG]);
    framebar.closeitem(3,true);
    exit;
  end;

end;

procedure TfrmPrincipal.framebarItems3CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyPausa.bTrocandoPausa then
  begin
    framebar.closeitem(4, true);
    framebar.OpenItem(2, true);

    exit;
  end;

  if (((TMyPausa.sPausaTipo = APP_PAUSE_TYPE_AFTER_HU[ID_LANG]) or
     ((lbstatus.Caption = APP_FRM_MAIN_STATUS_PAUSE_AFTER_HU[ID_LANG]) and (TMyPausa.bDiscouPausa = true)))
     and TMyPausa.bPausado = true) then
  begin
    Frame := Tfrmclassifica.Create(nil);
    Tfrmclassifica(framebar.items[5].frame).CarregaTelasLinguagem;
    Tfrmclassifica(framebar.items[5].frame).CarregaClassificacao;
  end;
end;

procedure TfrmPrincipal.framebarItems4CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyClassificacao.bClassificando then//if tmrPausaPos.Enabled or tmrLastClassAuto.Enabled then
  begin
    framebar.closeitem(1, true);
    framebar.OpenItem(4, true);

    exit;
  end;

  if TMyPausa.bTrocandoPausa then
  begin
    framebar.closeitem(1, true);
    framebar.OpenItem(2, true);

    exit;
  end;

  if TMyAppStatus.bAtendido = true then
  begin
    Frame := Tfrmxfer.Create(nil);
    Tfrmxfer(framebar.items[1].frame).carregaxfer;
    Tfrmxfer(framebar.items[1].frame).CarregaTelasLinguagem;
  end;
end;

procedure TfrmPrincipal.frameBarItems5CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  if TMyClassificacao.bClassificando then//if tmrPausaPos.Enabled or tmrLastClassAuto.Enabled then
  begin
    framebar.closeitem(2, true);
    framebar.OpenItem(5, true);

    exit;
  end;

  Frame := TfrmCoaching.Create(nil);
  TfrmCoaching(framebar.items[4].frame).CarregaCoaching;
  TfrmCoaching(framebar.items[4].frame).CarregaTelasLinguagem;

  if TMyPausa.bTravaRestricao = true then
  begin
    mensagem(APP_MB_WAR_USER_PAUSED[ID_LANG]);
    framebar.closeitem(2,true);
    exit;
  end;
end;

function TfrmPrincipal.GetSelectedAudioIn: Integer;
begin
  result := -1;//Old 0
end;

function TfrmPrincipal.GetSelectedAudioOut: Integer;
begin
  result := -1;//Old 0
end;

procedure TfrmPrincipal.gravaarq(vnum, vname: string);
var
  arq: TextFile;
  dir, arquivo, comp: string;
  ano,mes,dia,hora,minuto,segundo,mili: word;
begin
  dir := extractfilepath(Application.ExeName)+'log';

  if not DirectoryExists(Dir) then
  begin
    ForceDirectories(Dir);
  end;

  decodedate(now,ano,mes,dia);
  decodetime(now,hora,minuto,segundo,mili);

  arquivo := dir+'\'+inttostr(dia)+inttostr(mes)+inttostr(ano)+inttostr(hora)+inttostr(minuto)+inttostr(segundo)+'.log';

  AssignFile ( arq, arquivo);
  Rewrite ( arq );
  Write ( arq, 'C',comp+': '+vnum+' >> '+vname);

  CloseFile ( arq );
end;

procedure TfrmPrincipal.grdChatPesquisaHistDblClick(Sender: TObject);
var
  sMensagem: String;
  sDataMensagem: String;
  sHoraMensagem: String;
  sTipoMensagem: String;
  sNomeMensagem: String;
  sIDUsuarioMensagem: String;
begin
  cmdChatHistoricoGerarPDF.Enabled := False;

  datam.qryChatPesquisaHistMsg.Active := False;
  datam.qryChatPesquisaHistMsg.SQL.Clear;
  datam.qryChatPesquisaHistMsg.SQL.Add('select ');
  datam.qryChatPesquisaHistMsg.SQL.Add('date_format(d.cdata, "%d/%m/%Y") as Data, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('date_format(d.chora, "%H:%i:%s %p") as Hora, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('d.tipo as tipo, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('if(	d.tipo = "C", ');
  datam.qryChatPesquisaHistMsg.SQL.Add('c.nome, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('if( ');
  datam.qryChatPesquisaHistMsg.SQL.Add('(select u.descricao from easy_work_colaborador_conf u where id = d.easy_work_colaborador_conf_id) IS NULL, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('"Sistema", ');
  datam.qryChatPesquisaHistMsg.SQL.Add('(select u.descricao from easy_work_colaborador_conf u where id = d.easy_work_colaborador_conf_id) ');
  datam.qryChatPesquisaHistMsg.SQL.Add(') ');
  datam.qryChatPesquisaHistMsg.SQL.Add(') as nome, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('CAST(d.msg as char(255)) as mensagem, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('f.descricao, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('c.telefone, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('c.email, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('c.nome as nomecliente, ');
  datam.qryChatPesquisaHistMsg.SQL.Add('d.easy_work_colaborador_conf_id ');
  datam.qryChatPesquisaHistMsg.SQL.Add('from ');
  datam.qryChatPesquisaHistMsg.SQL.Add('easy_core_contatos_msg_hist d ');
  datam.qryChatPesquisaHistMsg.SQL.Add('left join easy_core_contatos_ctrl c on d.easy_core_contatos_ctrl_id = c.id or d.easy_core_contatos_ctrl_id = c.is_transferred ');
  datam.qryChatPesquisaHistMsg.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf f on c.easy_pabx_serv_fila_universal_ctr_id = f.easy_pabx_serv_fila_universal_ctr_id ');
  datam.qryChatPesquisaHistMsg.SQL.Add('where ');
  datam.qryChatPesquisaHistMsg.SQL.Add('c.id = ' + grdChatPesquisaHist.SelectedField.AsString);
  datam.qryChatPesquisaHistMsg.Active := True;

  if datam.qryChatPesquisaHistMsg.RecordCount > 0 then
  begin
    if tabChatHist.TabVisible = False then
    begin
      tabChatHist.TabVisible := True;
      pgcBrowser.ActivePage := tabChatHist;
    end
    else
      pgcBrowser.ActivePage := tabChatHist;

    memChatPesquisaHistorico.Lines.Clear;

    lblChatPesquisaHistoricoNome.Caption      := datam.qryChatPesquisaHistMsg.Fields[8].AsString;
    lblChatPesquisaHistoricoTelefone.Caption  := datam.qryChatPesquisaHistMsg.Fields[6].AsString;
    lblChatPesquisaHistoricoProtocolo.Caption := grdChatPesquisaHist.SelectedField.AsString;
    lblChatPesquisaHistoricoEMail.Caption     := datam.qryChatPesquisaHistMsg.Fields[7].AsString;
    lblChatPesquisaHistoricoSala.Caption      := datam.qryChatPesquisaHistMsg.Fields[5].AsString;

    while not datam.qryChatPesquisaHistMsg.Eof do
    begin
      sMensagem := ConvertCharToFE(datam.qryChatPesquisaHistMsg.Fields[4].AsString);
      sDataMensagem := datam.qryChatPesquisaHistMsg.Fields[0].AsString;
      sHoraMensagem := datam.qryChatPesquisaHistMsg.Fields[1].AsString;
      sTipoMensagem := datam.qryChatPesquisaHistMsg.Fields[2].AsString;
      sNomeMensagem := ConvertCharToFE(datam.qryChatPesquisaHistMsg.Fields[3].AsString);
      sIDUsuarioMensagem := datam.qryChatPesquisaHistMsg.Fields[9].AsString;

      if (sTipoMensagem = 'C') or
         (sTipoMensagem = 'A') or
         (sTipoMensagem = 'CON') or
         (sTipoMensagem = 'SPR') or
         (sTipoMensagem = 'APR') then
      begin
        memChatPesquisaHistorico.SelStart := memChatPesquisaHistorico.GetTextLen;
        memChatPesquisaHistorico.SelAttributes.Style := [fsBold];

        if sTipoMensagem = 'C' then
        begin
          memChatPesquisaHistorico.SelAttributes.Color := clNavy;
          memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
          memChatPesquisaHistorico.SelAttributes.Color := clNavy;
        end
        else
          if sTipoMensagem = 'A' then
          begin
            memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
            memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
            memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
          end
          else
            if sTipoMensagem = 'CON' then
            begin
              if TMyInfoLogin.sIDUsuario = sIDUsuarioMensagem then
              begin
                memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
                memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
              end
              else
              begin
                memChatPesquisaHistorico.SelAttributes.Color := clTeal;
                memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                memChatPesquisaHistorico.SelAttributes.Color := clTeal;
              end;
            end
            else
              if sTipoMensagem = 'SPR' then
              begin
                memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
                memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                memChatPesquisaHistorico.SelAttributes.Color := clMaroon;
              end
              else
                if sTipoMensagem = 'APR' then
                begin
                  memChatPesquisaHistorico.SelAttributes.Color := clTeal;
                  memChatPesquisaHistorico.SelText := #13#10 + '(' + sDataMensagem + ' - ' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                  memChatPesquisaHistorico.SelAttributes.Color := clTeal;
                end;

        memChatPesquisaHistorico.SelAttributes.Style := [];
        memChatPesquisaHistorico.SelText := sMensagem + #13#10;
      end;

      datam.qryChatPesquisaHistMsg.Next;
    end;

    cmdChatHistoricoGerarPDF.Enabled := True;
  end;

  datam.qryChatPesquisaHistMsg.Active := False;
end;

procedure TfrmPrincipal.habilitaagc;
begin
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  if not varqini.ValueExists('SOUND','agc') then
  begin
    Vax.DisableAGC;
  end
  else
  begin
    if varqini.readbool('SOUND','agc',false) = false then
    begin
      Vax.DisableAGC;
    end
    else
    begin
      Vax.EnableAGC(8000);
    end;
  end;
  varqini.free;
end;

procedure TfrmPrincipal.habilitaechonoise;
begin
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  if not varqini.ValueExists('SOUND','micboost') then
  begin
    vax.DisableMicBoost;
  end
  else
  begin
    if varqini.readbool('SOUND','micboost',false) = false then
    begin
      vax.DisableMicBoost;
    end
    else
    begin
      vax.EnableMicBoost;
    end;
  end;
  varqini.free;
end;

procedure TfrmPrincipal.habilitamicboost;
begin
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  if not varqini.ValueExists('SOUND','echocancel') then
  begin
    vax.EnableEchoNoiseCancellation;
  end
  else
  begin
    if varqini.readbool('SOUND','echocancel',false) = false then
    begin
      vax.DisableEchoNoiseCancellation;
    end
    else
    begin
      vax.EnableEchoNoiseCancellation;
    end;
  end;
  varqini.free;
end;

function TfrmPrincipal.InitVaxObject: WordBool;
var
  MyIP : string;
  FromURI : string;
  ListenPort : Integer;
  RetValue : WordBool;

  bBindToListenIP: Boolean;
  sSIPOutBoundProxy: String;
  nSIPPort: Integer;
begin
  vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  bBindToListenIP := vArqIni.ReadBool('SIP', 'BindToListenIP', False);
  sSIPOutBoundProxy := vArqIni.ReadString('SIP', 'SIPOutBoundProxy', '');
  nSIPPort := vArqIni.ReadInteger('SIP', 'SIPPort', 5060);
  vArqIni.Free;

  FromURI := TMyInfoLogin.sRamal + ' <sip:' + TMyInfoLogin.sRamal + '@' + TMyInfoLogin.sIPPABX + '>';
  MyIP := Vax.GetMyIP();
  RetValue := True;
  for ListenPort := nSIPPort to (nSIPPort + 1) do
  Begin
    If False = Vax.Initialize(bBindToListenIP, MyIP, ListenPort, FromURI, sSIPOutBoundProxy, TMyInfoLogin.sIPPABX, TMyInfoLogin.sRamal, TMyInfoLogin.sSenha, true, 2) Then
    begin
      if Vax.GetVaxObjectError() <>  11 then
      begin
        ErrorMessages();
        RetValue := False;
        break;
      end;
    end
    else
    begin
      break;
    end;
  end;
  If ListenPort >= 7000 Then
  begin
    mensagem(APP_MB_ERR_OPEN_SIP_PORT[ID_LANG]);
    RetValue := False;
  end;
  Result := RetValue;
end;

procedure TfrmPrincipal.Integrador(nTipo: Integer; nSalaChat: Integer);
var
  nForInd: Integer;
  sTemp: String;
  nParamHttp: Integer;
begin
  if vintegrador[0] = 'False' then
    Exit;

  sTemp := '';
  nParamHttp := 1;

  for nForInd := 0 to 9 do
  begin
    if vintegradorParams[nForInd] = 'True' then
      if vintegradorParams[nForInd + 10] <> ''  then
      begin
        if sTemp <> '' then
        begin
          sTemp := sTemp + vintegrador[3];
          if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
          begin
            //sTemp := sTemp + 'p' + IntToStr(nParamHttp) + '=';
            Inc(nParamHttp);
          end;
        end;

        if sTemp = '' then
        begin
          if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
          begin
            nParamHttp := 1;
            //sTemp := 'p' + IntToStr(nParamHttp) + '=';
            //Inc(nParamHttp);
          end;
        end;

        if vintegradorParams[nForInd + 10] = 'AGE_CODIGO' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sIDUsuario
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sIDUsuario;

        if vintegradorParams[nForInd + 10] = 'AGE_CODIGO_EXTERNO' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sCodigoExterno
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sCodigoExterno;

        if vintegradorParams[nForInd + 10] = 'AGE_NOME' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sNome
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sNome;

        if vintegradorParams[nForInd + 10] = 'AGE_LOGIN' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sUsuario
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sUsuario;

        if vintegradorParams[nForInd + 10] = 'AGE_EMAIL' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sEMail
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sEMail;

        if vintegradorParams[nForInd + 10] = 'AGE_OPERACAO' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sIDOperacao
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sIDOperacao;

        if vintegradorParams[nForInd + 10] = 'AGE_EMPRESA' then
          //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
            if vintegradorParams[nForInd + 20] = 'True' then
              sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyInfoLogin.sIDEmpresa
            else
              sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyInfoLogin.sIDEmpresa;

        case nTipo of
          INTEGRADOR_TEL:
          begin
            if vintegradorParams[nForInd + 10] = 'CALL_TELEFONE' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyAppStatus.sNumero
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyAppStatus.sNumero;

            if vintegradorParams[nForInd + 10] = 'CALL_FILA_CODIGO' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sFila
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sFila;

            if vintegradorParams[nForInd + 10] = 'CALL_FILA_NOME' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sFilaDSC
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sFilaDSC;

            if vintegradorParams[nForInd + 10] = 'CALL_UNIQUEID' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sUniqueID
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sUniqueID;

            if vintegradorParams[nForInd + 10] = 'DISC_CLIENTE_COD' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCodTipo
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCodTipo;

            if vintegradorParams[nForInd + 10] = 'CALL_PROTOCOLO' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sProtocolo
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sProtocolo;

            if vintegradorParams[nForInd + 10] = 'CALL_TIPO_CHAMADA' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sTipoOperacao
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sTipoOperacao;

            if vintegradorParams[nForInd + 10] = 'CAMPO01' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[1]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[1];

            if vintegradorParams[nForInd + 10] = 'CAMPO02' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[2]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[2];

            if vintegradorParams[nForInd + 10] = 'CAMPO03' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[3]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[3];

            if vintegradorParams[nForInd + 10] = 'CAMPO04' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[4]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[4];

            if vintegradorParams[nForInd + 10] = 'CAMPO05' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[5]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[5];

            if vintegradorParams[nForInd + 10] = 'CAMPO06' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[6]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[6];

            if vintegradorParams[nForInd + 10] = 'CAMPO07' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[7]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[7];

            if vintegradorParams[nForInd + 10] = 'CAMPO08' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[8]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[8];

            if vintegradorParams[nForInd + 10] = 'CAMPO09' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[9]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[9];

            if vintegradorParams[nForInd + 10] = 'CAMPO10' then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + TMyVaxIncomingCallParam.sCampo[10]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + TMyVaxIncomingCallParam.sCampo[10];
          end;

          INTEGRADOR_CHAT:
          begin
            if vintegradorParams[nForInd + 10] = 'CHAT_NOME'      then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 2]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 2];

            if vintegradorParams[nForInd + 10] = 'CHAT_EMAIL'      then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 3]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 3];

            if vintegradorParams[nForInd + 10] = 'CHAT_TELEFONE'      then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 4]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 4];

            if vintegradorParams[nForInd + 10] = 'CHAT_FILA_NOME'      then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 6]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 6];

            if vintegradorParams[nForInd + 10] = 'CHAT_FILA_CODIGO'      then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 7]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 7];

            if vintegradorParams[nForInd + 10] = 'CAMPO01'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 9]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 9];

            if vintegradorParams[nForInd + 10] = 'CAMPO02'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 10]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 10];

            if vintegradorParams[nForInd + 10] = 'CAMPO03'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 11]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 11];

            if vintegradorParams[nForInd + 10] = 'CAMPO04'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 12]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 12];

            if vintegradorParams[nForInd + 10] = 'CAMPO05'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 13]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 13];

            if vintegradorParams[nForInd + 10] = 'CAMPO06'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 14]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 14];

            if vintegradorParams[nForInd + 10] = 'CAMPO07'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 15]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 15];

            if vintegradorParams[nForInd + 10] = 'CAMPO08'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 16]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 16];

            if vintegradorParams[nForInd + 10] = 'CAMPO09'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 17]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 17];

            if vintegradorParams[nForInd + 10] = 'CAMPO10'   then
              //if (vintegrador[1] = '2') or (vintegrador[1] = '3') then
                if vintegradorParams[nForInd + 20] = 'True' then
                  sTemp := sTemp + vintegradorParams[nForInd + 30] + '=' + matrizchatsala[nSalaChat, 18]
                else
                  sTemp := sTemp + 'p' +IntToStr(nParamHttp) + '=' + matrizchatsala[nSalaChat, 18];
          end;
        end;
      end; //if vintegradorParams[nForInd] <> ''  then
  end; //for nForInd := 4 to 13 do

  try
    with TExecIntegradorThread.Create(True) do
    begin
      nTipoIntegrador := StrToInt(vintegrador[1]);
      sDest           := vintegrador[2];
      sText           := sTemp;
      sIPPABX         := TMyInfoLogin.sIPPABX;

      FreeOnTerminate := True;
      Priority        := tpLowest;

      Start;
    end;
  except
    Mensagem(APP_MB_ERR_THREADCREATE_INTEGRA[ID_LANG]);
  end;
end;

procedure TfrmPrincipal.LogCallStep(tipo: String; arg: String);
var
  tf_Arquivo: TextFile;
  sLogText: String;
  sNomeArquivo: String;
  ano,mes,dia,hora,minuto,segundo,mili: word;
begin
  if vLogCallStep[0] = 'True' then
  begin
    if ((tipo = 'log_login_act'   ) and (vLogCallStep[4]  = 'True')) or
       ((tipo = 'log_logout_act'  ) and (vLogCallStep[5]  = 'True')) or
       ((tipo = 'log_pause_act'   ) and (vLogCallStep[6]  = 'True')) or
       ((tipo = 'log_unpause_act' ) and (vLogCallStep[7]  = 'True')) or
       ((tipo = 'log_answer_act'  ) and (vLogCallStep[8]  = 'True')) or
       ((tipo = 'log_hangup_act'  ) and (vLogCallStep[9]  = 'True')) or
       ((tipo = 'log_dnd_on_act'  ) and (vLogCallStep[10] = 'True')) or
       ((tipo = 'log_dnd_off_act' ) and (vLogCallStep[11] = 'True')) or
       ((tipo = 'log_registro_act') and (vLogCallStep[12] = 'True')) or
       ((tipo = 'log_xfer_act'    ) and (vLogCallStep[13] = 'True')) or
       ((tipo = 'log_sip_err'     ) and (vLogCallStep[14] = 'True')) then
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

procedure TfrmPrincipal.LogPing(sTipo: String; sMsg: String);
var
  tf_Arquivo: TextFile;
  sLogText: String;
  sNomeArquivo: String;
  ano,mes,dia,hora,minuto,segundo,mili: word;
  sDir: String;
begin
  sDir := ExtractFilePath(Application.ExeName)+'log';

  decodedate(now,ano,mes,dia);
  decodetime(now,hora,minuto,segundo,mili);

  sLogText := IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano) + ' ';
  sLogText := sLogText + IntToStr(hora) + ':' + IntToStr(minuto) + ':' + IntToStr(segundo) + ' - ';
  sLogText := sLogText + sTipo + ' >> ';

  if Trim(sMsg) <> '' then
    sLogText := sLogText + '(' + sMsg + ')';

  try
    if not DirectoryExists(sDir) then
    begin
      ForceDirectories(sDir);
    end;
    sNomeArquivo := 'ICMP_Ping.log';
    AssignFile(tf_Arquivo, sDir + '\' + sNomeArquivo);

    if FileExists(sDir + '\' + sNomeArquivo) then
      Append(tf_Arquivo)
    else
      Rewrite(tf_Arquivo);

    Writeln(tf_Arquivo, sLogText);
  finally
    CloseFile(tf_Arquivo);
  end;
end;

procedure TfrmPrincipal.lstConfCallFindClick(Sender: TObject);
var
  nFor: Integer;
begin
  if lstConfCallFind.ItemIndex = -1 then
    Exit;

  cmdExecConf.Enabled := True;
  TMyConfCallClass.sNum2Dial := '';

  case cboConfCallFilter.ItemIndex of
    0:
    begin
      for nFor := 0 to TMyConfCallClass.nQtdIntConfCall-1 do
        if TMyConfCallClass.matrizIntConfCall[nFor, 1] = lstConfCallFind.Items.Strings[lstConfCallFind.ItemIndex] then
        begin
          TMyConfCallClass.bExterno := False;
          TMyConfCallClass.sNum2Dial := TMyConfCallClass.matrizIntConfCall[nFor, 0];
          Break;
        end;
    end;
    1:
    begin
      for nFor := 0 to TMyConfCallClass.nQtdExtConfCall-1 do
        if TMyConfCallClass.matrizExtConfCall[nFor, 1] = lstConfCallFind.Items.Strings[lstConfCallFind.ItemIndex] then
        begin
          TMyConfCallClass.bExterno := True;
          TMyConfCallClass.sNum2Dial := TMyConfCallClass.matrizExtConfCall[nFor, 0];
          Break;
        end;
    end;
  end;
end;

procedure TfrmPrincipal.lstFAQFindClick(Sender: TObject);
var
  nFor: Integer;
  sIdGroupSel: String;
begin
  if lstFAQFind.ItemIndex = -1 then
    Exit;

  lstFAQFindSub.Items.Clear;

  case cboFAQFilter.ItemIndex of
    0:
    begin
      sIdGroupSel := '';

      for nFor := 0 to TMyFaqClass.nQtdGrupoConf-1 do
        if TMyFaqClass.matrizGrupoConf[nFor, 1] = lstFAQFind.Items.Strings[lstFAQFind.ItemIndex] then
        begin
          sIdGroupSel := TMyFaqClass.matrizGrupoConf[nFor, 0];
          Break;
        end;

      for nFor := 0 to TMyFaqClass.nQtdRespostaConf-1 do
        if TMyFaqClass.matrizRespostaConf[nFor, 3] = sIdGroupSel then
          lstFAQFindSub.Items.Add(TMyFaqClass.matrizRespostaConf[nFor, 1]);
    end;
    1:
    begin
      for nFor := 0 to TMyFaqClass.nQtdRespostaConf-1 do
        if TMyFaqClass.matrizRespostaConf[nFor, 1] = lstFAQFind.Items.Strings[lstFAQFind.ItemIndex] then
        begin
          {txtChatFAQURL.Text := TMyFaqClass.matrizRespostaConf[nFor, 2];
          browserChatFAQ.Navigate(txtChatFAQURL.Text);}
          memChatFAQText.Lines.Clear;
          memChatFAQText.Lines.Add(TMyFaqClass.matrizRespostaConf[nFor, 2]);
          Break;
        end;
    end;
  end;
end;

procedure TfrmPrincipal.lstFAQFindSubClick(Sender: TObject);
var
  nFor: Integer;
begin
  if lstFAQFindSub.ItemIndex = -1 then
    Exit;

  for nFor := 0 to TMyFaqClass.nQtdRespostaConf-1 do
    if TMyFaqClass.matrizRespostaConf[nFor, 1] = lstFAQFindSub.Items.Strings[lstFAQFindSub.ItemIndex] then
    begin
      {txtChatFAQURL.Text := TMyFaqClass.matrizRespostaConf[nFor, 2];
      browserChatFAQ.Navigate(txtChatFAQURL.Text);}
      memChatFAQText.Lines.Clear;
      memChatFAQText.Lines.Add(TMyFaqClass.matrizRespostaConf[nFor, 2]);
      Break;
    end;
end;

procedure TfrmPrincipal.memChatSendClick(Sender: TObject);
begin
  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.memChatSendExit(Sender: TObject);
begin
  if TMyChat.nChatAtivo <> -1 then
    sChatTextToSend[TMyChat.nChatAtivo] := memChatSend.Lines.GetText;
end;

procedure TfrmPrincipal.memChatSendKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13{#} then
    if Trim(memChatSend.Text) <> '' then
      cmdChatSendClick(Self)
    else
    begin
      memChatSend.Lines.Clear;
      sChatTextToSend[TMyChat.nChatAtivo] := '';
    end;
end;

procedure TfrmPrincipal.Ligar(vparamnumero: string);
var
  nFor: Integer;
begin
  TMyVaxIncomingCallParam.sFila := '';
  TMyVaxIncomingCallParam.sUniqueID := '';
  TMyVaxIncomingCallParam.sCodTipo := '';
  TMyVaxIncomingCallParam.sProtocolo := '';
  TMyVaxIncomingCallParam.sFilaDSC := '';
  TMyVaxIncomingCallParam.sTipoOperacao := '';

  for nFor := 1 to 10 do
    TMyVaxIncomingCallParam.sCampo[nFor] := '';

  if (vparamnumero <> '') then
  begin
    if TMyAppStatus.bLogado = true then
    begin
      TMyAppStatus.bSainte := true;
      discar(vparamnumero, False);
      //discar(vparamnumero);
      lbstatus.Caption := APP_FRM_MAIN_STATUS_DIALING[ID_LANG];
      lbstatus.Color := $0015A8FF;
      tmativo.enabled := false;
      tmlogoff.enabled := false;

      btnDesligar.Enabled := True;
    end
    else
    begin
      application.MessageBox(PChar(APP_MB_ERR_LOGIN_NEEDED[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    application.MessageBox(PChar(APP_MB_ERR_INSERT_DIALNUMBER[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)) ,MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmPrincipal.Mensagem(str_mensagem: string);
begin
  application.MessageBox(PChar(str_mensagem), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.mitChatURLClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if mnuChatMoreOptions.Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
          ShellExecute(self.WindowHandle, 'open', PChar(matrizchatsala[nFor, 5]), nil, nil, SW_SHOWNORMAL);
      Break;
    end;
  end;

  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.mitChatXFerAssuntoClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if mnuChatMoreOptions.Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          vChatXFer := True;
          vChatXFerDst := IntToStr(TMenuItem(Sender).Tag);

          qryChatXFer[nFor].Active := False;
          qryChatXFer[nFor].SQL.Clear;
          qryChatXFer[nFor].SQL.Add('update easy_core_contatos_msg_hist set ');
          qryChatXFer[nFor].SQL.Add('active = ' + QuotedStr('Y'));
          qryChatXFer[nFor].SQL.Add('where easy_core_contatos_ctrl_id = ' + matrizchatsala[nFor, 1]);
          qryChatXFer[nFor].ExecSQL;

          qryChatXFer[nFor].Active := False;
          qryChatXFer[nFor].SQL.Clear;
          qryChatXFer[nFor].SQL.Add('insert into easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist ');
          qryChatXFer[nFor].SQL.Add('(datahora, ');
          qryChatXFer[nFor].SQL.Add('data, ');
          qryChatXFer[nFor].SQL.Add('hora, ');
          qryChatXFer[nFor].SQL.Add('emfila_temp, ');
          qryChatXFer[nFor].SQL.Add('emfila, ');
          qryChatXFer[nFor].SQL.Add('cliente_nome, ');
          qryChatXFer[nFor].SQL.Add('cliente_mail, ');
          qryChatXFer[nFor].SQL.Add('telefone, ');
          qryChatXFer[nFor].SQL.Add('web_url, ');
          qryChatXFer[nFor].SQL.Add('transfered_act, ');
          qryChatXFer[nFor].SQL.Add('transfered_id, ');
          qryChatXFer[nFor].SQL.Add('easy_chat_motor_conf_id, ');
          qryChatXFer[nFor].SQL.Add('easy_pabx_serv_fila_universal_ctr_id, ');
          qryChatXFer[nFor].SQL.Add('canal, ');
          qryChatXFer[nFor].SQL.Add('classe, ');
          qryChatXFer[nFor].SQL.Add('is_queue_entry_act, ');
          qryChatXFer[nFor].SQL.Add('is_queue_entry_tmp, ');
          qryChatXFer[nFor].SQL.Add('easy_call_empresa_conf_id');
          qryChatXFer[nFor].SQL.Add(') values (');
          qryChatXFer[nFor].SQL.Add('now(), curdate(), curtime(), now(), ');
          qryChatXFer[nFor].SQL.Add(QuotedStr('Y') + ', ');
          qryChatXFer[nFor].SQL.Add(QuotedStr(matrizchatsala[nFor, 2]) + ', ');
          qryChatXFer[nFor].SQL.Add(QuotedStr(matrizchatsala[nFor, 3]) + ', ');
          qryChatXFer[nFor].SQL.Add(QuotedStr(matrizchatsala[nFor, 4]) + ', ');
          qryChatXFer[nFor].SQL.Add(QuotedStr(matrizchatsala[nFor, 5]) + ', ');
          qryChatXFer[nFor].SQL.Add(QuotedStr('Y') + ', ');
          qryChatXFer[nFor].SQL.Add(matrizchatsala[nFor, 1] + ', ');
          qryChatXFer[nFor].SQL.Add(matrizchatsala[nFor, 8] + ', ');
          qryChatXFer[nFor].SQL.Add(IntToStr(TMenuItem(Sender).Tag) + ', ');
          qryChatXFer[nFor].SQL.Add('2, ');
          qryChatXFer[nFor].SQL.Add('1, ');
          qryChatXFer[nFor].SQL.Add('1, ');
          qryChatXFer[nFor].SQL.Add('now(), ');
          qryChatXFer[nFor].SQL.Add(TMyInfoLogin.sIDEmpresa);
          qryChatXFer[nFor].SQL.Add(')');
          qryChatXFer[nFor].ExecSQL;
          qryChatXFer[nFor].Active := False;

          DesconectaChat(nFor, 0);
        end;
      Break;
    end;
  end;

  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.mitChatBlobClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if mnuChatMoreOptions.Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if matrizchatsala[nFor, 20] = 'False' then
          if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
          begin
            ShellExecute(Handle, 'open', PChar(TMyChat.sDirBlobReceived + matrizchatsala[nFor, 1] + '\'), '', nil, SW_SHOWNORMAL);
          end;
      Break;
    end;
  end;

  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.mitChatCopyInfoClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if mnuChatMoreOptions.Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          if TMenuItem(Sender).Tag = 0 then
            Clipboard.asText := panChatDinamico[nFor].Hint
          else
            Clipboard.asText := mitChatCopyInfo[TMenuItem(Sender).Tag].Caption;
        end;

      Break;
    end;
  end;

  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.mitChatFAQFindAnswerClick(Sender: TObject);
var
  sSelText: String;
begin
  if Trim(memChatHistory[mnuChatFAQ.Tag].SelText) = '' then
    Exit;

  cboFAQFilter.ItemIndex := 1;
  cboFAQFilterChange(Self);
  sSelText := memChatHistory[mnuChatFAQ.Tag].SelText;
  sSelText := TrimLeft(sSelText);
  sSelText := TrimRight(sSelText);
  txtFAQFind.Text := sSelText;

  if tabFAQ.TabVisible = False then
    tabFAQ.TabVisible := True;

  pgcBrowser.ActivePage := tabFAQ;
  {txtChatFAQURL.Text := 'about:blank';
  browserChatFAQ.Navigate(txtChatFAQURL.Text);}
  memChatFAQText.Lines.Clear;
end;

procedure TfrmPrincipal.mitChatFAQFindGroupClick(Sender: TObject);
var
  sSelText: String;
begin
  if Trim(memChatHistory[mnuChatFAQ.Tag].SelText) = '' then
    Exit;

  cboFAQFilter.ItemIndex := 0;
  cboFAQFilterChange(Self);
  sSelText := memChatHistory[mnuChatFAQ.Tag].SelText;
  sSelText := TrimLeft(sSelText);
  sSelText := TrimRight(sSelText);
  txtFAQFind.Text := sSelText;

  if tabFAQ.TabVisible = False then
    tabFAQ.TabVisible := True;

  pgcBrowser.ActivePage := tabFAQ;
  {txtChatFAQURL.Text := 'about:blank';
  browserChatFAQ.Navigate(txtChatFAQURL.Text);}
  memChatFAQText.Lines.Clear;
end;

procedure TfrmPrincipal.mitChatSupClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if mnuChatMoreOptions.Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if matrizchatsala[nFor, 20] = 'False' then
          if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
          begin
            //Update Dash Board
            qryChatSup[nFor].Active := False;
            qryChatSup[nFor].SQL.Clear;
            qryChatSup[nFor].SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
            qryChatSup[nFor].SQL.Add('set sala' + IntToStr(nFor+1) + '_sup_act = ' + QuotedStr('Y'));
            qryChatSup[nFor].SQL.Add('where ');
            qryChatSup[nFor].SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
            qryChatSup[nFor].ExecSQL;
            qryChatSup[nFor].Active := False;

            matrizchatsala[nFor, 20] := 'True';
            radChatSendTo.Enabled := True;
          end;
      Break;
    end;
  end;

  AtivaFlashWindow(False);
end;

function TfrmPrincipal.navegador(tipo: string): string;
var
  ind: integer;
  temp : string;
begin
  temp := '';
  for ind := 0 to vnumsites-1 do
  begin
    if matrizurl[1,ind] = tipo then
    begin
      temp := matrizurl[2,ind];
    end;
  end;

  if temp <> '' then
  begin
    temp := stringreplace(temp, '${SERVIDOR_HTTP}' , TMyInfoLogin.sIPPABX                 , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_USUARIO}'    , TMyInfoLogin.sIDUsuario              , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_TELEFONE}'   , TMyAppStatus.sNumero                 , [rfReplaceAll, rfIgnoreCase]);
  //temp := stringreplace(temp, '${ID_TIPOCHAMADA}', TMyVaxIncomingCallParam.sTipoLigacao , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_UNIQUEID}'   , TMyVaxIncomingCallParam.sUniqueID    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_TIPO}'       , TMyVaxIncomingCallParam.sTipoOperacao, [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CLIENTE}'    , TMyVaxIncomingCallParam.sCodTipo     , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_FILA}'       , TMyVaxIncomingCallParam.sFila        , [rfReplaceAll, rfIgnoreCase]);
  //temp := stringreplace(temp, '${ID_FILADSC}'    , TMyVaxIncomingCallParam.sFilaDSC     , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_PROTOCOLO}'  , TMyVaxIncomingCallParam.sProtocolo   , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO01}'    , TMyVaxIncomingCallParam.sCampo[1]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO02}'    , TMyVaxIncomingCallParam.sCampo[2]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO03}'    , TMyVaxIncomingCallParam.sCampo[3]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO04}'    , TMyVaxIncomingCallParam.sCampo[4]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO05}'    , TMyVaxIncomingCallParam.sCampo[5]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO06}'    , TMyVaxIncomingCallParam.sCampo[6]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO07}'    , TMyVaxIncomingCallParam.sCampo[7]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO08}'    , TMyVaxIncomingCallParam.sCampo[8]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO09}'    , TMyVaxIncomingCallParam.sCampo[9]    , [rfReplaceAll, rfIgnoreCase]);
    temp := stringreplace(temp, '${ID_CAMPO10}'    , TMyVaxIncomingCallParam.sCampo[10]   , [rfReplaceAll, rfIgnoreCase]);
  end;
  edtbrowser.Text := temp;
  result := temp;
end;

{
function TfrmPrincipal.OpenLines: WordBool;
var
  MyIP : string;
  PortRTP : Integer;
  LineNo : Integer;
  RetValue : WordBool;
  ErrorCount : Integer;
Begin
   MyIP := Vax.GetMyIP();
   PortRTP := 7000;
   LineNo  := 0;
   ErrorCount := 0;
   RetValue := True;
   while (LineNo < 2) do
   Begin
      If Vax.OpenLine(LineNo, False, MyIP, PortRTP) = False Then
      begin
        if Vax.GetVaxObjectError() =  11 then
          begin
            ErrorCount := ErrorCount + 1;
            LineNo := LineNo - 1;
          end
          else
          begin
            ErrorMessages();
            RetValue := False;
            break;
        end;
      end;
      LineNo  := LineNo + 1;
      PortRTP := PortRTP + 2;// It is importent to increament RTP Listen Port by 2
      If ErrorCount >= (2 + 1000) Then
      begin
        mensagem(APP_MB_ERR_OPEN_RTP_PORT[ID_LANG]);
        RetValue := False;
        break;
      end;
   end;
   Result := RetValue;
end;
}

procedure TfrmPrincipal.pausar(tipo: string);
var
  ind, vpausaid: integer;
begin
  vpausaid := 0;
  for ind := 0 to vnumpausa-1 do
  begin
    if matrizpausa[1,ind] = tipo then
    begin
      vpausaid:= ind;
      TMyPausa.sIDPausa := matrizpausa[0,ind];
      TMyPausa.bAtivoPausa := strtobool(matrizpausa[14,ind]);

      if matrizpausa[5,ind] = 'True' then
      begin
        lbpausarest.Caption := matrizpausa[6,ind];
        lbpausarest.Visible := true;
      end;
    end;
  end;

  //verifica Pausa Quantitativa
  if (matrizpausa[7,vpausaid] = 'Y') or (matrizpausa[7,vpausaid] = 'True') then
  begin
    datam.qr_verifica_pausa_quantidade.active := false;
    datam.qr_verifica_pausa_quantidade.params[0].value := TMyInfoLogin.sIDUsuario;
    datam.qr_verifica_pausa_quantidade.params[1].value := TMyPausa.sIDPausa;
    datam.qr_verifica_pausa_quantidade.active := true;

    if strtoint(matrizpausa[8,vpausaid]) <= datam.qr_verifica_pausa_quantidade.Fields[0].asinteger then
    begin
      mensagem(APP_MB_ERR_PAUSE_EXCEEDED_MSG_1[ID_LANG] + tipo + APP_MB_ERR_PAUSE_EXCEEDED_MSG_2[ID_LANG] + matrizpausa[8,vpausaid] + APP_MB_ERR_PAUSE_EXCEEDED_MSG_3[ID_LANG] + datam.qr_verifica_pausa_quantidade.Fields[0].asstring);
      datam.qr_verifica_pausa_quantidade.active := false;
      exit;
    end;
    datam.qr_verifica_pausa_quantidade.active := false;

  end;

  if matrizpausa[15,vpausaid] = 'True' then
  begin
    TMyPausa.nPausaDurMinAct := 1;
    TMyPausa.tPausaDurMinVal := StrToTime(matrizpausa[16,vpausaid]);
  end
  else//Executa de qualquer forma a dura��o minima de pausa, evitando uma concorrencia de comandos para o Asterisk.
  begin
    TMyPausa.nPausaDurMinAct := 1;
    TMyPausa.tPausaDurMinVal := StrToTime('00:00:02');
  end;

  TMyAppStatus.dtvInicioPausa := now;
  tmrPausa.enabled := true;

  TMyAppStatus.sTipoEvento := APP_EVENT_TYPE_PAUSE[ID_LANG];
  TMyPausa.bPausado := true;

  vax.EnableDonotDisturb;
  LogCallStep('log_dnd_on_act', 'pausar');
  discar('AGE03'+TMyInfoLogin.sIDUsuario+TMyPausa.sIDPausa, True);

  TMyPausa.sPausaTipo := tipo;

  lbstatus.Caption := APP_FRM_MAIN_STATUS_PAUSE_DB[ID_LANG] + tipo;
  lbstatus.Color := clyellow;

  framebar.openitem(2,true);
  Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_END_PAUSE[ID_LANG];

  try
    Tfrmpausa(framebar.items[2].frame).carregapausa;
  except

  end;

  if tipo = APP_PAUSE_TYPE_AFTER_HU[ID_LANG] then
  begin
    framebar.OpenItem(5,true);
  end;

  actlogoff.Enabled := False;
end;

function TfrmPrincipal.processacallername(campo: string;
  indice: integer): string;
var
  i, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, pos10, pos11, pos12, pos13, pos14, pos15, pos16, pos17, pos18, achou: integer;
begin
{
Old
  //1 Tipo / 2 Numero / 3 fila / 4 uniqueid / 5 Cliente / 6 protocolo / 7 fila dsc
  //TEL   + NUMERO + FILA + UNIQUEID + id_Cliente

New
1  TEL
2  #NUMERO_TELEFONE
3  #UNIQUEID
4  #TIPO
5  #CODIGO_TIPO
6  #FILA_CODIGO
7  #FILA_DESCRICAO
8  #PROTOCOLO
9  #LOJA
10  #CAMPO01
11 #CAMPO02
12 #CAMPO03
13 #CAMPO04
14 #CAMPO05
15 #CAMPO06
16 #CAMPO07
17 #CAMPO08
18 #CAMPO09
19 #CAMPO10
}

  i := 0;
  pos1 := 0;
  pos2 := 0;
  pos3 := 0;
  pos4 := 0;
  pos5 := 0;
  pos6 := 0;
  pos7 := 0;
  pos8 := 0;
  pos9 := 0;
  pos10 := 0;
  pos11 := 0;
  pos12 := 0;
  pos13 := 0;
  pos14 := 0;
  pos15 := 0;
  pos16 := 0;
  pos17 := 0;
  pos18 := 0;
  achou:= 0;
  while i <= length(Campo) do
  begin
    if copy(Campo,i,1) = '#' then
    begin
      inc(achou);

      if achou = 1 then pos1 := i;
      if achou = 2 then pos2 := i;
      if achou = 3 then pos3 := i;
      if achou = 4 then pos4 := i;
      if achou = 5 then pos5 := i;
      if achou = 6 then pos6 := i;
      if achou = 7 then pos7 := i;
      if achou = 8 then pos8 := i;
      if achou = 9 then pos9 := i;
      if achou = 10 then pos10 := i;
      if achou = 11 then pos11 := i;
      if achou = 12 then pos12 := i;
      if achou = 13 then pos13 := i;
      if achou = 14 then pos14 := i;
      if achou = 15 then pos15 := i;
      if achou = 16 then pos16 := i;
      if achou = 17 then pos17 := i;
      if achou = 18 then pos18 := i;
    end;
    inc(i);
  end;

  case indice of
    1:  result := copy(Campo,1,pos1-1);
    2:  result := copy(campo,pos1+1,pos2 - pos1 -1);
    3:  result := copy(campo,pos2+1,pos3 - pos2 -1);
    4:  result := copy(campo,pos3+1,pos4 - pos3 -1);
    5:  result := copy(campo,pos4+1,pos5 - pos4 -1);
    6:  result := copy(campo,pos5+1,pos6 - pos5 -1);
    7:  result := copy(campo,pos6+1,pos7 - pos6 -1);
    8:  result := copy(campo,pos7+1,pos8 - pos7 -1);
    9:  result := copy(campo,pos8+1,pos9 - pos8 -1);
    10: result := copy(campo,pos9+1,pos10 - pos9 -1);
    11: result := copy(campo,pos10+1,pos11 - pos10 -1);
    12: result := copy(campo,pos11+1,pos12 - pos11 -1);
    13: result := copy(campo,pos12+1,pos13 - pos12 -1);
    14: result := copy(campo,pos13+1,pos14 - pos13 -1);
    15: result := copy(campo,pos14+1,pos15 - pos14 -1);
    16: result := copy(campo,pos15+1,pos16 - pos15 -1);
    17: result := copy(campo,pos16+1,pos17 - pos16 -1);
    18: result := copy(campo,pos17+1,pos18 - pos17 -1);
    19: result := copy(campo,pos18+1,length(campo) - pos18);
  end;
end;

procedure TfrmPrincipal.rotinageral(Sender: TObject; E: Exception);
var
  arq: TextFile;
  dir, arquivo, comp: string;
  ano,mes,dia,hora,minuto,segundo,mili: word;
begin
  if (Sender is TZquery) then comp := Tzquery(Sender).name;
  if (Sender is TZConnection) then comp := TZConnection(Sender).name;
  if (Sender is TidFTP) then comp := Tidftp(Sender).name;
  if (Sender is TVaxSIPUserAgentOCX) then comp := TVaxSIPUserAgentOCX(Sender).name;
  if (Sender is TsPageControl) then comp := TsPageControl(Sender).Name;
  if (Sender is TsTabSheet) then comp := TsTabSheet(Sender).Name;
  if (Sender is TWebBrowser) then comp := TWebBrowser(Sender).Name;

  dir := extractfilepath(Application.ExeName)+'log';

  if not DirectoryExists(Dir) then
  begin
    ForceDirectories(Dir);
  end;

  decodedate(now,ano,mes,dia);
  decodetime(now,hora,minuto,segundo,mili);

  arquivo := dir+'\'+inttostr(dia)+inttostr(mes)+inttostr(ano)+inttostr(hora)+inttostr(minuto)+inttostr(segundo)+'.log';

  AssignFile ( arq, arquivo);
  Rewrite ( arq );
  Write ( arq, 'C',comp+': '+E.Classname+' >> '+E.message);

  CloseFile ( arq );

  mensagem(APP_MB_ERR_GENERATED[ID_LANG]);

  if E.Message = 'SQL Error: MySQL server has gone away' then
  begin
    try
      Vax.UnInitialize();
    except
    end;
    Application.Terminate;
  end;

  if E.Message = 'SQL Error: Lost connection to MySQL server during query' then
  begin
    try
      Vax.UnInitialize();
    except
    end;
    Application.Terminate;
  end;

  if AnsiPos('SQL Error: Can''t connect to MySQL server on', E.Message) > 0 then
  begin
    try
      Vax.UnInitialize();
    except
    end;
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.sctRecClientOldDataAvailable(Sender: TObject;
  ErrCode: Word);
{var
  Buf: array [0..511] of AnsiChar;
  Len: Integer;
  sDadoRecebido: String;

  List: TStringList;
  nFor: Integer;}
begin
{  Len := TWSocket(Sender).Receive(@Buf, Sizeof(Buf) - 1);
  if Len <= 0 then
    Exit;
  { Remove any trailing CR/LF
  while (Len > 0) and (Buf[Len - 1] in [#13, #10]) do
    Dec(Len);
  { Nul terminate the data
  Buf[Len] := #0;

  sDadoRecebido := String(StrPas(Buf));
  Memo1.Lines.Add('Dado recebido: ''' + sDadoRecebido + '''');

  try
    List := TStringList.Create;
    try
      Split(',', sDadoRecebido, List);
      for nFor := 0 to List.Count -1 do
      begin
        Memo1.Lines.Add('Dado pos ' + IntToStr(nFor) + ': ''' + List[nFor] + '''');
      end;

      if List[0] = 'ok' then
      begin
        if TMyCaptureScreen.bCapturing then
        begin
          stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_CAPTURING[ID_LANG];
        end
        else
        begin
          stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_STOPPED[ID_LANG];

          DesconectaGravacaoTela;
        end;
      end
      else
        if List[0] = 'err' then
        begin
          stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_STOPPED[ID_LANG];

          tmrGravacaoTelaSplit.Enabled := False;
          TMyCaptureScreen.nSplitStep := 0;

          DesconectaGravacaoTela;

          TMyCaptureScreen.bCapturing := False;
          TMyCaptureScreen.sCaptureCurrentDirRec := '';
          TMyCaptureScreen.sCaptureCurrentFileRec := '';
        end;
    finally
      List.Free;
    end;
  except
    Memo1.Lines.Add('Erro durante o tratamento dos comandos gerais');
  end;}
end;

procedure TfrmPrincipal.sctRecClientOldSessionConnected(Sender: TObject; ErrCode: Word);
begin
{  if sctRecClient.State in [wsConnected] then
    sctRecClient.SendStr('start_record' + ',' +
                         TMyCaptureScreen.sCaptureCurrentDirRec + ', '+
                         TMyCaptureScreen.sCaptureCurrentFileRec + ',' +
                         BoolToStr(TMyCaptureScreen.bCaptureAudio, True) + ',' +
                         BoolToStr(TMyCaptureScreen.bCaptureCursor, True) + #13#10)
  else
  begin
    Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_SEND[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    Exit;
  end;

  TMyCaptureScreen.bCapturing := True;

  tmrGravacaoTelaSplit.Enabled := False;
  tmrGravacaoTelaSplit.Interval := TMyCaptureScreen.nSplitInterval;
  tmrGravacaoTelaSplit.Enabled := True;}
end;

procedure TfrmPrincipal.cmdChatGerarPDFClick(Sender: TObject);
begin
  ImprimeChatHistorico(1,
                       memChatHistory[vChatClassificandoSala].Lines.Count,
                       tabChat.Caption,
                       matrizchatsala[vChatClassificandoSala, 2],
                       matrizchatsala[vChatClassificandoSala, 4],
                       matrizchatsala[vChatClassificandoSala, 1],
                       matrizchatsala[vChatClassificandoSala, 3],
                       matrizchatsala[vChatClassificandoSala, 6]);
end;

procedure TfrmPrincipal.cmdDestroyConfClick(Sender: TObject);
begin
  if TMyConfCallClass.bInConfCall = True then
    DesmontaConferencia(1);
end;

procedure TfrmPrincipal.cmdExecConfClick(Sender: TObject);
begin
  CriaConferencia(1);
end;

procedure TfrmPrincipal.cmdIntegradorClick(Sender: TObject);
begin
  Integrador(INTEGRADOR_TEL, -1);
end;

procedure TfrmPrincipal.btnDesligarClick(Sender: TObject);
begin
  try
    framebar.SetFocus;
  except
    try
      edtbrowser.SetFocus;
    except
    end;
  end;

  if TMyConsultaCallClass.bInConsCall = True then
  begin
    DesmontaConsulta(1);
    vax.UnHoldLine(0);

    Exit;
  end;

  if vax.IsLinebusy(0) then
  begin
    If Vax.Disconnect(0) = False Then
    begin
      ErrorMessages();
    end;
  end;

  if TMyConfCallClass.bInConfCall = True then
    DesmontaConferencia(1);

  if (frmPrincipal.TMyVaxIncomingCallParam.bAutoAnswer = False) and
     (frmPrincipal.TMyVaxIncomingCallParam.bIncomingCall = True) then
    AtivaFlashWindow(False);

  try
    frmRingPopup.Hide;
  except
  end;

  Desligar('A');
end;

procedure TfrmPrincipal.tempo_fila(vcallid: string);
var
  vtempo: integer;
begin
  datam.qryTempoFila.Active := False;
  datam.qryTempoFila.SQL.Clear;
  datam.qryTempoFila.SQL.Add('select time_to_sec(espera) ');
  datam.qryTempoFila.SQL.Add('from easy_dash_pabx_serv_fila_de_atendimento ');
  datam.qryTempoFila.SQL.Add('where uniqueid = ' + QuotedStr(vcallid));
  datam.qryTempoFila.SQL.Add('and easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryTempoFila.Active := True;

  if datam.qryTempoFila.Fields[0].AsString <> '' then
  begin
    vtempo := datam.qryTempoFila.Fields[0].AsInteger;
    datam.qryTempoFila.active := False;;

    imgtempo.picture.bitmap := nil;

    case vtempo of
      0..10: imltempo.Getbitmap(0,imgtempo.picture.bitmap);
      11..30: imltempo.Getbitmap(1,imgtempo.picture.bitmap);
      //31..60: imltempo.Getbitmap(2,imgtempo.picture.bitmap);
    else
      imltempo.Getbitmap(2,imgtempo.picture.bitmap);
    end;
    lbtempo.caption := formatSecsToHMS(vtempo);
  end;
end;

procedure TfrmPrincipal.timerstatuslinhaTimer(Sender: TObject);
begin
  if vax.IsLineBusy(0) = true then
  begin
    shpStatus.brush.Color := clred;
  end
  else
  begin
    shpStatus.brush.Color := cllime;
  end;
end;

procedure TfrmPrincipal.tmativoTimer(Sender: TObject);
{var
  ind, linha: integer;
  arq: textfile;
  vfilatemp, vnumerotemp: string;
  discou : boolean;}
begin
 { if FileExists(extractfilepath(Application.ExeName)+'CALLS\OUTGOING.CFG') then
  begin
    if mmativo.lines.count <= 0 then
    begin
      AssignFile (arq, extractfilepath(Application.ExeName)+'CALLS\OUTGOING.CFG');
      mmativo.lines.loadfromfile(extractfilepath(Application.ExeName)+'CALLS\OUTGOING.CFG');
      Rewrite(arq);
      closefile(arq);
    end;
    //cbfila.ItemIndex := -1;
    discou := false;
    if mmativo.lines.count > 0 then
    begin
      for linha := 1 to mmativo.lines.count do
      begin
        if discou = false then
        begin
          vnumerotemp := copy(mmativo.Lines.Strings[0],1,pos('%',mmativo.Lines.Strings[0])-1);
          vfilatemp := copy(mmativo.Lines.Strings[0],pos('%',mmativo.Lines.Strings[0])+1,length(mmativo.lines.strings[0]));
          for ind := 0 to cbfila.Items.Count - 1 do
          begin
            if vfilatemp = copy(cbfila.Items.Strings[ind],1,pos('<>',cbfila.Items.Strings[ind])-1) then
            begin
              cbfila.ItemIndex := ind;
            end;
          end;
          if cbfila.itemindex > -1 then // DISCAR
          begin
           ednumero.Text := vnumerotemp;
           btnLigaclick(self);
           discou := true;
           mmativo.Lines.Delete(0);
          end;
        end;
      end;
    end;
  end;}
end;

procedure TfrmPrincipal.tmrDuracaoTimer(Sender: TObject);
var
  sDuracaoAtual: String;
  //sDuracaoAntes: String;
  //sDuracaoDepois: String;
begin
  TMyAppStatus.dtvFimChamada := now;
  sDuracaoAtual := TimeToStr(TMyAppStatus.dtvFimChamada-TMyAppStatus.dtvInicioChamada);
  lbduracao.Caption := sDuracaoAtual;

  if matrizparametros[12] = 'True' then
  begin
    //sDuracaoAntes := TimeToStr((TMyAppStatus.dtvFimChamada-TMyAppStatus.dtvInicioChamada) - StrToTime('00:00:01'));
    //sDuracaoDepois := TimeToStr((TMyAppStatus.dtvFimChamada-TMyAppStatus.dtvInicioChamada) + StrToTime('00:00:01'));

    if sDuracaoAtual = matrizparametros[13] then//if (sDuracaoAtual = matrizparametros[13]) or (sDuracaoAntes = matrizparametros[13]) or (sDuracaoDepois = matrizparametros[13]) then
      NotificaTrayIcon(matrizparametros[14], 5000, 1)
    else
      if sDuracaoAtual = matrizparametros[15] then//if (sDuracaoAtual = matrizparametros[15]) or (sDuracaoAntes = matrizparametros[15]) or (sDuracaoDepois = matrizparametros[15]) then
        NotificaTrayIcon(matrizparametros[16], 5000, 2)
      else
        if sDuracaoAtual = matrizparametros[17] then//if (sDuracaoAtual = matrizparametros[17]) or (sDuracaoAntes = matrizparametros[17]) or (sDuracaoDepois = matrizparametros[17]) then
          NotificaTrayIcon(matrizparametros[18], 5000, 3);
  end;
end;

procedure TfrmPrincipal.tmrEnableConferenceTimer(Sender: TObject);
begin
  tmrEnableConference.Enabled := False;
  cmdCreateConfClick(Self);
end;

procedure TfrmPrincipal.tmrGravacaoTelaSplitTimer(Sender: TObject);
begin
  tmrGravacaoTelaSplit.Enabled := False;

  if TMyCaptureScreen.bCapturing then
  begin
    stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_SPLITTING[ID_LANG];
    Inc(TMyCaptureScreen.nSplitStep);

    {if sctRecClient.State in [wsConnected] then
    begin
      Memo1.Lines.Add('enviando stop_record no tmrGravacaoTelaSplit');

      sctRecClient.SendStr('stop_record' + #13#10);
    end
    else
    begin
      Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_SEND[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
      Exit;
    end;}

    Screen2video.Stop;

    IniciaGravacaoTela(True);
  end;
end;

procedure TfrmPrincipal.tmrIcmpPingTimer(Sender: TObject);
begin
  try
    icmpClientPing.Ping;
    Application.ProcessMessages;
  except
    LogPing('PingError', 'Error at Ping function to IP ' + icmpClientPing.Host);
  end;
end;

procedure TfrmPrincipal.tmlogoffTimer(Sender: TObject);
begin
  verificalogoff;
end;

procedure TfrmPrincipal.tmrPausaLoginTimer(Sender: TObject);
var
  sMsgPausaLogin: String;
  TimerId: UINT_PTR;
begin
  tmrPausaLogin.Enabled := False;

  if TMyAppStatus.bLogado then
    if matrizparametros[7] = 'True' then
    begin
      if matrizparametros[9] = 'True' then
      begin
        if Trim(matrizparametros[11]) = '' then
          sMsgPausaLogin := PChar(APP_MB_WAR_PAUSE_LOGIN_MSG_1[ID_LANG]) + matrizparametros[10] + PChar(APP_MB_WAR_PAUSE_LOGIN_MSG_2[ID_LANG])
        else
          sMsgPausaLogin := StringReplace(matrizparametros[11],'${SEG}', matrizparametros[10], [rfReplaceAll, rfIgnoreCase]);

        TimerId := SetTimer(0, 0, StrToInt(matrizparametros[10]) * 1000, @CloseMessageBox);
        Application.MessageBox(pchar(sMsgPausaLogin), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
        // prevent timer callback if user already closed the message box
        KillTimer(0, TimerId);
      end;

      framebar.OpenItem(2,true);
      Sleep(500);
      Tfrmpausa(framebar.items[2].frame).btnPausaClick(self);
    end;
end;

procedure TfrmPrincipal.tmrPausaPosTimer(Sender: TObject);
var
  sMsgPausaPos: String;
  TimerId: UINT_PTR;
begin
  //Grava Classifica��o Autom�tica...
  tmrPausaPos.Enabled := False;

  tmrLastClassAuto.Enabled := False;
  tmrLastClassAuto.Interval := 1000;

  if matrizparametros[4] = 'True' then
  begin
    tmrLastClassAuto.Interval := 1000 + (StrToInt(matrizparametros[5]) * 1000);
    tmrLastClassAuto.Enabled := True;

    if Trim(matrizparametros[6]) = '' then
      sMsgPausaPos := PChar(APP_MB_WAR_CLASSIFICATION_MSG_1[ID_LANG]) + matrizparametros[5] + PChar(APP_MB_WAR_CLASSIFICATION_MSG_2[ID_LANG])
    else
      sMsgPausaPos := StringReplace(matrizparametros[6],'${SEG}', matrizparametros[5], [rfReplaceAll, rfIgnoreCase]);

    TimerId := SetTimer(0, 0, StrToInt(matrizparametros[5]) * 1000, @CloseMessageBox);
    Application.MessageBox(pchar(sMsgPausaPos), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    // prevent timer callback if user already closed the message box
    KillTimer(0, TimerId);
  end
  else
    tmrLastClassAuto.Enabled := True;
end;

procedure TfrmPrincipal.tmrPausaTimer(Sender: TObject);
begin
  TMyPausa.tTempoPausa := now-TMyAppStatus.dtvInicioPausa;
  lbtempopausa.Caption := timetostr(TMyPausa.tTempoPausa);

  if lbpausarest.Visible = true then
  begin
    if lbtempopausa.Caption = lbpausarest.Caption then
    begin
      travapausarestritiva;
    end;
  end;
end;

procedure TfrmPrincipal.tmrRestricaoTimer(Sender: TObject);
begin
  datam.qr_verifica_pausa_restritiva.Active := false;
  datam.qr_verifica_pausa_restritiva.params[0].Value := TMyInfoLogin.sIDUsuario;
  datam.qr_verifica_pausa_restritiva.Active := true;

  if (datam.qr_verifica_pausa_restritiva.Fields[0].Asstring = 'N') or (datam.qr_verifica_pausa_restritiva.Fields[0].Asstring = 'False') then
  begin
    pnrestricao.visible := false;
    tmrRestricao.Enabled := false;
    TMyPausa.bTravaRestricao := false;

    framebar.OpenItem(2,true);
    framebar.CloseItem(3,true);
    framebar.CloseItem(0,true);

    Tfrmpausa(framebar.items[2].frame).btnPausaClick(self);
  end;

  datam.qr_verifica_pausa_restritiva.Active := false;
end;

procedure TfrmPrincipal.tmrLastClassAutoTimer(Sender: TObject);
var
  temp: string;
  nForCsf: Integer;
  nForAgd: Integer;
  nForInd: Integer;

  tmpTranscricao: String;
  tmpGravacaoVideoAct: String;
  tmpGravacaoVideoPath: String;
  tmpAgendamento_tipo: String;
  tmpAgendamento_data: String;
  tmpAgendamento_hora: String;
  tmpEasy_callcenter_classif_chamada_conf_id: String;
  tmpEasy_callcenter_classif_sub_chamada_conf_id: String;
  tmpTelefone: String;
begin
  tmrLastClassAuto.Enabled := False;
  TMyClassificacao.bClassificando := False;

  tmpAgendamento_tipo := '';
  tmpAgendamento_data := '';
  tmpAgendamento_hora := '';
  tmpEasy_callcenter_classif_chamada_conf_id := '';
  tmpEasy_callcenter_classif_sub_chamada_conf_id := '';
  tmpTelefone := '';

  {var sTempTel: String;
  if frmprincipal.TMyAppStatus.sNumero[1] = '0' then
  begin
    sTempTel := frmprincipal.TMyAppStatus.sNumero;
    Delete(sTempTel, 1, 1);
    tmpTelefone := '%' + sTempTel;
  end
  else}
  tmpTelefone := frmPrincipal.TMyAppStatus.sNumero;

  tmpTranscricao := '';
  try
    tmpTranscricao := frmPrincipal.memTranscricao.Text;
  except
    tmpTranscricao := APP_FRM_CLASSIFICATION_ERR_TRANSCRIPT[ID_LANG];
  end;

  tmpGravacaoVideoAct := 'N';
  tmpGravacaoVideoPath := '';
  if (frmPrincipal.TMyCaptureScreen.bCapture) and
     (frmPrincipal.TMyCaptureScreen.bCapturing) and
     (frmPrincipal.TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE) then
  begin
    tmpGravacaoVideoAct := 'Y';
    tmpGravacaoVideoPath := frmPrincipal.TMyCaptureScreen.sCaptureStorageFile +
                            IntToStr(frmPrincipal.TMyCaptureScreen.nSplitStep) +
                            frmPrincipal.TMyCaptureScreen.sCaptureFileFormat;
  end;

  if (frmprincipal.TMyAppStatus.sTipoChamada = 'Ativo') then//Chamada Ativa
  begin
    frmPrincipal.ClassificaChamadaAtiva(
                                        TMyAppStatus.nCallQuality,
                                        tmpTranscricao,
                                        tmpGravacaoVideoAct,
                                        tmpGravacaoVideoPath,
                                        '',
                                        tmpAgendamento_tipo,
                                        tmpAgendamento_data,
                                        tmpAgendamento_hora,
                                        TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                        TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                        TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                        'N',
                                        'Y',
                                        'TIMEOUT',
                                        TMyAppStatus.sSipDialStatus,
                                        IfThen(frmPrincipal.TMyPausa.bPausado, '1', '0'),
                                        IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                        IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                        frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                        '',
                                        tmpEasy_callcenter_classif_chamada_conf_id,
                                        tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                        TMyAppStatus.sSipDialID,
                                        tmpTelefone
    );
  end//if (frmprincipal.TMyAppStatus.sTipoChamada = 'Ativo') then
  else
    if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) = '')) then//Chamada Receptiva DDR
    begin
      frmPrincipal.ClassificaChamadaReceptiva(
                                          TMyAppStatus.nCallQuality,
                                          tmpTranscricao,
                                          tmpGravacaoVideoAct,
                                          tmpGravacaoVideoPath,
                                          '',
                                          tmpAgendamento_tipo,
                                          tmpAgendamento_data,
                                          tmpAgendamento_hora,
                                          TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                          TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                          TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                          'N',
                                          'Y',
                                          'TIMEOUT',
                                          IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                          IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                          frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                          '',
                                          tmpEasy_callcenter_classif_chamada_conf_id,
                                          tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                          frmPrincipal.TMyVaxIncomingCallParam.sTipoOperacao,//Old -> '4',
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[1],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[2],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[3],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[4],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[5],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[6],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[7],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[8],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[9],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[10]
      );
    end//if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) = '')) then
    else
      if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) <> '')) then//Chamada Receptiva Fila
      begin
        frmPrincipal.ClassificaChamadaReceptiva(
                                            TMyAppStatus.nCallQuality,
                                            tmpTranscricao,
                                            tmpGravacaoVideoAct,
                                            tmpGravacaoVideoPath,
                                            '',
                                            tmpAgendamento_tipo,
                                            tmpAgendamento_data,
                                            tmpAgendamento_hora,
                                            TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                            TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                            TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                            'N',
                                            'Y',
                                            'TIMEOUT',
                                            IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                            IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                            frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                            TMyVaxIncomingCallParam.sFila,
                                            tmpEasy_callcenter_classif_chamada_conf_id,
                                            tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                            frmPrincipal.TMyVaxIncomingCallParam.sTipoOperacao,
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[1],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[2],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[3],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[4],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[5],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[6],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[7],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[8],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[9],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[10]
        );
      end;

  frmprincipal.TMyClassificacao.bClassificou := True;
  frmprincipal.TMyXFer.bXFerExec := False;
  frmprincipal.memTranscricao.Lines.Clear;
  ClearImgCallQuality(False);

  if TMyAppStatus.bAtendido = False then
  begin
    frmprincipal.despausapos;
  end
  else
  begin
    frmprincipal.framebar.closeItem(4, True);
    gravaarq('err1', 'Verificar, nao executou despausapos');
  end;
end;

procedure TfrmPrincipal.tmrVaxRequestFailureTimer(Sender: TObject);
begin
  tmrVaxRequestFailure.Enabled := False;

  TMyClassificacao.bClassificou := False;
  TMyClassificacao.bAutoAgendouPausa := False;
  TMyClassificacao.sAutoAgendouPausaTipo := '';
  btnDesligarClick(self);
end;

procedure TfrmPrincipal.tmrVerificaLoginAtivoTimer(Sender: TObject);
begin
  tmrVerificaLoginAtivo.Enabled := False;

  if TMyAppStatus.bAtendido then
    Exit;

  if TMyAppStatus.bLogado = false then
    Exit;

  datam.qryVerificaLoginAtivo.Active := False;
  datam.qryVerificaLoginAtivo.SQL.Clear;
  datam.qryVerificaLoginAtivo.SQL.Add('select deslogado ');
  datam.qryVerificaLoginAtivo.SQL.Add('from easy_dash_pabx_serv_fila_de_atendimento ');
  datam.qryVerificaLoginAtivo.SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryVerificaLoginAtivo.ExecSQL;
  datam.qryVerificaLoginAtivo.Active := True;

  if datam.qryVerificaLoginAtivo.RecordCount > 0 then
  begin
    if datam.qryVerificaLoginAtivo.Fields[0].AsBoolean = True then
    begin
      datam.qryVerificaLoginAtivo.Active := False;
      tmrVerificaLoginAtivo.Enabled := False;
      application.MessageBox(PChar(APP_MB_WAR_ROOT_LOGGEDOUT[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_OK+MB_ICONEXCLAMATION);
      frmlogin.Hide;
      frmprincipal.Hide;
      application.Terminate;
      Exit;
    end;
  end;

  datam.qryVerificaLoginAtivo.Active := False;

  tmrVerificaLoginAtivo.Enabled := True;
end;

procedure TfrmPrincipal.tmrVerificaTrocaPausaTimer(Sender: TObject);
var
  TimerId: UINT_PTR;
begin
  TMyPausa.bTrocandoPausa := False;

  if (tmrVerificaTrocaPausa.Enabled = False) or
     (Tfrmpausa(framebar.items[2].frame).btnPausa.Caption = APP_FRM_PAUSE_END_PAUSE[ID_LANG]) then
    Exit;

  tmrVerificaTrocaPausa.Enabled := False;

  TimerId := SetTimer(0, 0, 10 * 1000, @CloseMessageBox);
  Application.MessageBox(PChar(APP_MB_WAR_USER_AVAILABLE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
  // prevent timer callback if user already closed the message box
  KillTimer(0, TimerId);

  framebar.CloseItem(2,true);
  TMyAppStatus.sTipoEvento := APP_EVENT_TYPE_PAUSE[ID_LANG];
  despausapos;
end;

procedure TfrmPrincipal.cmdMaximizarClick(Sender: TObject);
begin
  if cmdMaximizar.Tag = 0 then
  begin
    frmPrincipal.WindowState := wsMaximized;
    cmdMaximizar.Tag := 1;

    tbrSeparator.Width := tbrTop.Width - (cmdMaximizar.Width * 5) - 3;
  end
  else
  begin
    tbrSeparator.Width := tbrSeparator.Tag;

    frmPrincipal.WindowState := wsNormal;
    cmdMaximizar.Tag := 0;
  end;

  CriaTelaEMail;
end;

procedure TfrmPrincipal.cmdMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.tmrSendAGE0XTimer(Sender: TObject);
begin
  tmrSendAGE0X.Enabled := False;
  LogCallStep('log_pause_act', 'tmrSendAGE0XTimer');
  discar('AGE05'+TMyInfoLogin.sIDUsuario+TMyPausa.sIDPausa, True);
end;

procedure TfrmPrincipal.tmrSoundLevelTimer(Sender: TObject);
begin
  pbvolumein.Position := frmprincipal.Vax.GetSpkSoundLevel();
  pbvolumeout.Position := frmprincipal.Vax.GetMicSoundLevel();
end;

procedure TfrmPrincipal.tmrTryPrincipalTimer(Sender: TObject);
begin
  tryPrincipal.Visible := False;
end;

procedure TfrmPrincipal.btnFAQClick(Sender: TObject);
begin
  if tabFAQ.TabVisible = false then
  begin
    tabFAQ.TabVisible := true;
    {txtChatFAQURL.Text := 'about:blank';
    browserChatFAQ.Navigate(txtChatFAQURL.Text);}
    memChatFAQText.Lines.Clear;
  end
  else
  begin
    pgcBrowser.ActivePage := tabFAQ;
  end;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
//  IniciaGravacaoTela(False);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
//  TerminaGravacaoTela;
end;

procedure TfrmPrincipal.travapausarestritiva;
begin
  datam.qr_update_pausa_restritiva.Active := false;
  datam.qr_update_pausa_restritiva.Params[0].Value := TMyInfoLogin.sIDUsuario;
  datam.qr_update_pausa_restritiva.ExecSQL;

  TMyPausa.bTravaRestricao := true;
  tmrRestricao.enabled := true;
  pnrestricao.visible := true;
  framebar.CloseItem(2,true);
end;

procedure TfrmPrincipal.txtConfCallFindChange(Sender: TObject);
var
  nFor: Integer;
begin
  cmdExecConf.Enabled := False;

  case cboConfCallFilter.ItemIndex of
    0:
    begin
      lstConfCallFind.Items.Clear;

      for nFor := 0 to TMyConfCallClass.nQtdIntConfCall-1 do
        if ((Trim(txtConfCallFind.Text) = '') or
            (AnsiPos(UpperCase(txtConfCallFind.Text), UpperCase(TMyConfCallClass.matrizIntConfCall[nFor, 1])) <> 0)) then
          lstConfCallFind.Items.Add(TMyConfCallClass.matrizIntConfCall[nFor, 1]);
    end;
    1:
    begin
      lstConfCallFind.Items.Clear;

      for nFor := 0 to TMyConfCallClass.nQtdExtConfCall-1 do
        if ((Trim(txtConfCallFind.Text) = '') or
            (AnsiPos(UpperCase(txtConfCallFind.Text), UpperCase(TMyConfCallClass.matrizExtConfCall[nFor, 1])) <> 0)) then
          lstConfCallFind.Items.Add(TMyConfCallClass.matrizExtConfCall[nFor, 1]);
    end;
  end;
end;

procedure TfrmPrincipal.txtEMailPesquisarEnter(Sender: TObject);
begin
  if txtEMailPesquisar.Text = APP_FRM_MAIN_EMAIL_READ_PESQUISAR_TXT[ID_LANG] then
    txtEMailPesquisar.Text := '';
end;

procedure TfrmPrincipal.txtEMailPesquisarExit(Sender: TObject);
begin
  if Trim(txtEMailPesquisar.Text) = '' then
    txtEMailPesquisar.Text := APP_FRM_MAIN_EMAIL_READ_PESQUISAR_TXT[ID_LANG];
end;

procedure TfrmPrincipal.txtFAQFindChange(Sender: TObject);
var
  nFor: Integer;
begin
  case cboFAQFilter.ItemIndex of
    0:
    begin
      lstFAQFind.Items.Clear;
      lstFAQFindSub.Items.Clear;

      for nFor := 0 to TMyFaqClass.nQtdGrupoConf-1 do
        if ((Trim(txtFAQFind.Text) = '') or
            (AnsiPos(UpperCase(txtFAQFind.Text), UpperCase(TMyFaqClass.matrizGrupoConf[nFor, 1])) <> 0)) then
          lstFAQFind.Items.Add(TMyFaqClass.matrizGrupoConf[nFor, 1]);
    end;
    1:
    begin
      lstFAQFind.Items.Clear;
      lstFAQFindSub.Items.Clear;

      for nFor := 0 to TMyFaqClass.nQtdRespostaConf-1 do
        if ((Trim(txtFAQFind.Text) = '') or
            (AnsiPos(UpperCase(txtFAQFind.Text), UpperCase(TMyFaqClass.matrizRespostaConf[nFor, 1])) <> 0)) then
          lstFAQFind.Items.Add(TMyFaqClass.matrizRespostaConf[nFor, 1]);
    end;
  end;
end;

procedure TfrmPrincipal.vaxDisconnectCall(ASender: TObject; LineNo: Integer);
begin
  if TMyConsultaCallClass.bInConsCall = True then
  begin
    DesmontaConsulta(1);
    vax.UnHoldLine(0);

    if LineNo = 1 then
      Exit;
  end;

  if TMyAtxferCallClass.bInAtxferCall then
    if LineNo = 1 then
    begin
      DesmontaXFerAssistida(1);
      vax.UnHoldLine(0);
      Exit;
    end;

  if TMyConfCallClass.bInConfCall = False then
  begin
    if vax.IsLineBusy(0) then
      If Vax.Disconnect(0) = False Then
        ErrorMessages();
  end
  else
  begin
    DesmontaConferencia(1);

    if LineNo = 0 then
      if vax.IsLineBusy(0) then
        If Vax.Disconnect(0) = False Then
          ErrorMessages();
  end;

  Desligar('C');
end;

procedure TfrmPrincipal.vaxDTMFDigit(ASender: TObject; LineNo: Integer;
  const Digit: WideString);
begin
  if LineNo = 0 then
  begin
    memConfDigitsL0.Lines.Add('Linha ' + IntToStr(LineNo) + ' - Digito recebido: ' + Digit);
    vax.DigitDTMF(1, Digit);
  end;

  if LineNo = 1 then
    memConfDigitsL1.Lines.Add('Linha ' + IntToStr(LineNo) + ' - Digito recebido: ' + Digit);
end;

procedure TfrmPrincipal.vaxFailToRegister(Sender: TObject);
begin
  LogCallStep('log_registro_act', 'FailToRegister');

  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_UNREGISTERED[ID_LANG];
  actlogin.Enabled := false;
  actsair.enabled := true;
  //btpausa.Enabled := false;

  lbstatus.Caption := APP_FRM_MAIN_STATUS_UNREGISTERED[ID_LANG];
  lbstatus.Color := clred;

  TMyAppStatus.bLogado := false;
  tmrPausaLogin.Enabled := False;
end;

procedure TfrmPrincipal.vaxFailToReRegister(Sender: TObject);
begin
  LogCallStep('log_registro_act', 'FailToReRegister');

  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_UNREGISTERED[ID_LANG];
  actlogin.Enabled := false;
  actsair.enabled := true;
  //btpausa.Enabled := false;

  lbstatus.Caption := APP_FRM_MAIN_STATUS_UNREGISTERED[ID_LANG];
  lbstatus.Color := clred;

  TMyAppStatus.bLogado := false;
  tmrPausaLogin.Enabled := False;
end;

procedure TfrmPrincipal.vaxGeneralFailureResponse(ASender: TObject; LineNo,
  StatusCode: Integer; const ReasonPhrase: WideString);
begin
  if (TMyConfCallClass.bInConfCall = True) and (LineNo = 1) then
  begin
    DesmontaConferencia(LineNo);
    Exit;
  end;

  LogCallStep('log_sip_err', 'vaxGeneralFailureRes0ponse:StatusCode=' + IntToStr(StatusCode) + ';Telefone=' + TMyAppStatus.sNumero);

  if statuscode = 603 then
  begin
    TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

    TMyClassificacao.bClassificou := false;
    TMyClassificacao.bAutoAgendouPausa := False;
    TMyClassificacao.sAutoAgendouPausaTipo := '';
    btnDesligarClick(self);
  end;
end;

procedure TfrmPrincipal.vaxIncomingCall(ASender: TObject; const CallId,
  DisplayName, UserName, FromURI, ToURI: WideString);
begin
  if TMyAppStatus.bLogado = False then
    Exit;

  if vax.IsLineBusy(0) = true then
  begin
    vax.RejectCall(callid);
  end
  else
  begin
    if TMyVaxIncomingCallParam.bSetAudioFromDB = True then
    begin
      try
        Tfrmdialpad(framebar.items[0].frame).tbvolumeout.position := TMyVaxIncomingCallParam.SetMicVolume;
        Tfrmdialpad(framebar.items[0].frame).tbvolumein.position := TMyVaxIncomingCallParam.SetSpkVolume;
      except
      end;

      vax.SetMicVolume((10 - TMyVaxIncomingCallParam.SetMicVolume) * 25);
      vax.SetSpkVolume((10 - TMyVaxIncomingCallParam.SetSpkVolume) * 25);

      vArqIni := tIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
      varqini.Writeinteger('Controle', 'volumeout', TMyVaxIncomingCallParam.SetMicVolume);
      varqini.Writeinteger('Controle', 'volumein' , TMyVaxIncomingCallParam.SetSpkVolume);
      varqini.free;
    end;

    TMyVaxIncomingCallParam.CallId := CallId;
    TMyVaxIncomingCallParam.DisplayName := DisplayName;
    TMyVaxIncomingCallParam.UserName := UserName;
    TMyVaxIncomingCallParam.FromURI := FromURI;
    TMyVaxIncomingCallParam.ToURI := ToURI;

    if TMyVaxIncomingCallParam.bAutoAnswer = True then
      AtendeChamada
    else
      AtivaFlashWindow(True);
  end;
end;

procedure TfrmPrincipal.vaxIncomingCallRingingStart(ASender: TObject;
  const CallId: WideString);
begin
  if TMyAppStatus.bLogado = False then
    Exit;

  if TMyVaxIncomingCallParam.bAutoAnswer = False then
  begin
    TMyVaxIncomingCallParam.bIncomingCall := True;
    try
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_PICKUP[ID_LANG];
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := True;
    except
      try
        framebar.OpenItem(0, True);
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_PICKUP[ID_LANG];
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := True;
      except
      end;
    end;

    TMyVaxIncomingCallParam.nTotalDevices := WaveOutGetNumDevs;
    TMyVaxIncomingCallParam.nCurrentDevice := 0;
    PlayAudioRing(TMyVaxIncomingCallParam.nCurrentDevice);

    frmRingPopup.lblStatus.Caption := APP_FRM_MAIN_STATUS_RINGING[ID_LANG];
    frmRingPopup.lblBina.Caption := TMyVaxIncomingCallParam.DisplayName + ' - ' + TMyVaxIncomingCallParam.UserName;
    frmRingPopup.Show;
  end;
end;

procedure TfrmPrincipal.vaxIncomingCallRingingStop(ASender: TObject;
  const CallId: WideString);
begin
  if TMyAppStatus.bLogado = False then
    Exit;

  if TMyVaxIncomingCallParam.bAutoAnswer = False then
  begin
    TMyVaxIncomingCallParam.bIncomingCall := False;
    try
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_DIAL[ID_LANG];
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := TMyInfoLogin.bDialPad;
    except
      try
        framebar.OpenItem(0, True);
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_DIAL[ID_LANG];
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := TMyInfoLogin.bDialPad;
      except
      end;
    end;

    TMyVaxIncomingCallParam.nTotalDevices := 0;
    tmrAudioRing.Enabled := False;
    try
      wavAudioRing.Notify := False;
    except
    end;

    try
      frmRingPopup.Hide;
    except
    end;
  end;
end;

procedure TfrmPrincipal.vaxRequestFailureResponse(ASender: TObject; LineNo,
  StatusCode: Integer; const ReasonPhrase: WideString);
begin
  if (TMyConfCallClass.bInConfCall = True) and (LineNo = 1) then
  begin
    DesmontaConferencia(LineNo);
    Exit;
  end;

  LogCallStep('log_sip_err', 'vaxRequestFailureResponse:StatusCode=' + IntToStr(StatusCode) + ';Telefone=' + TMyAppStatus.sNumero);

  if TMyAppStatus.bSainte then
  begin
    TMyAppStatus.sTipoChamada := 'Ativo';

    case StatusCode of
      404://Hangup Cause XX (Congestion)
      begin
        lbstatus.Caption := APP_FRM_MAIN_STATUS_DIAL_CONGESTION[ID_LANG];
        btnDesligar.Enabled := True;
        TMyAppStatus.bAtendido := True;
        TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

        if framebar.Items[2].State = stOpened then
          Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

        tmrVaxRequestFailure.Enabled := False;
        tmrVaxRequestFailure.Interval := 3000;
        tmrVaxRequestFailure.Enabled := True;
      end;

      486://Hangup Cause 17 (Chan unavailable or busy)
      begin
        lbstatus.Caption := APP_FRM_MAIN_STATUS_DIAL_BUSY[ID_LANG];
        btnDesligar.Enabled := True;
        TMyAppStatus.bAtendido := True;
        TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

        if framebar.Items[2].State = stOpened then
          Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

        tmrVaxRequestFailure.Enabled := False;
        tmrVaxRequestFailure.Interval := 3000;
        tmrVaxRequestFailure.Enabled := True;
      end;

      480://Hangup Cause 19 (no answer)
      begin
        lbstatus.Caption := APP_FRM_MAIN_STATUS_DIAL_NO_ANSWER[ID_LANG];
        btnDesligar.Enabled := True;
        TMyAppStatus.bAtendido := True;
        TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

        if framebar.Items[2].State = stOpened then
          Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

        tmrVaxRequestFailure.Enabled := False;
        tmrVaxRequestFailure.Interval := 3000;
        tmrVaxRequestFailure.Enabled := True;
      end;

      487://no mapping (request terminated)
      begin
        TMyAppStatus.bAtendido := True;
        TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

        if framebar.Items[2].State = stOpened then
          Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

        TMyClassificacao.bClassificou := False;
        TMyClassificacao.bAutoAgendouPausa := False;
        TMyClassificacao.sAutoAgendouPausaTipo := '';
        btnDesligarClick(self);
      end;

      else
      begin
        TMyAppStatus.bAtendido := True;
        TMyAppStatus.sSipDialStatus := IntToStr(StatusCode);

        if framebar.Items[2].State = stOpened then
          Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

        TMyClassificacao.bClassificou := False;
        TMyClassificacao.bAutoAgendouPausa := False;
        TMyClassificacao.sAutoAgendouPausaTipo := '';
        btnDesligarClick(self);
      end;
    end;
  end;
end;

procedure TfrmPrincipal.vaxSuccessToConnect(ASender: TObject; LineNo: Integer;
  const ToRTPIP: WideString; ToRTPPort: Integer);
begin
  if TMyAppStatus.bLogado = false then
  begin
    Exit;
  end;

  if (TMyConfCallClass.bInConfCall = True) and (LineNo = 1) then
  begin
    //cmdCreateConf.Enabled := True;
    cmdDestroyConf.Enabled := True;

    vax.UnHoldLine(0);
    vax.HoldLine(1);

    tmrEnableConference.Enabled := False;
    tmrEnableConference.Interval := 3000;
    tmrEnableConference.Enabled := True;

    Exit;
  end;

  if TMyVaxIncomingCallParam.bRecord then
    IniciaGravacaoAudio(0);

  if TMyCaptureScreen.bCapture then
    if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE then
      IniciaGravacaoTela(False);

  TMyAppStatus.tTempoHoldTotal := 0;
  TMyClassificacao.bClassificou := false;
  TMyClassificacao.bAutoAgendouPausa := False;
  TMyClassificacao.sAutoAgendouPausaTipo := '';
  TMyAppStatus.dtvInicioChamada := now;
  tmrSoundLevel.enabled := true;

  lbinicio.Caption := timetostr(TMyAppStatus.dtvInicioChamada);

  btnDesligar.Enabled := True;

  if TMyAppStatus.bSainte = true then
  begin
    TMyAppStatus.sTipoChamada := 'Ativo';
    tmrDuracao.Enabled := true;

    vax.EnableDonotDisturb;
    LogCallStep('log_dnd_on_act', 'vaxSuccessToConnect');

    lbstatus.Caption := APP_FRM_MAIN_STATUS_ACTIVE[ID_LANG];
    lbstatus.Color := $0015A8FF;
    TMyAppStatus.bAtendido := True;
    TMyAppStatus.sSipDialStatus := '200';
    Integrador(INTEGRADOR_TEL, -1);
    LogCallStep('log_answer_act', lbstatus.Caption);
    tmrVerificaLoginAtivo.Enabled := False;

    actclientesExecute(self);

    if framebar.Items[0].State = stOpened then
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := False;

    if framebar.Items[2].State = stOpened then
      Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

    actlogoff.Enabled := False;
  end
  else
  begin
    if TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG] then
    begin
      if TMyVaxIncomingCallParam.sTipoLigacao = 'TRA' then
        lbstatus.Caption := APP_FRM_MAIN_STATUS_TRANSFERRED[ID_LANG]
      else
        lbstatus.Caption := APP_FRM_MAIN_STATUS_ANSWERED[ID_LANG];
      lbstatus.Color := cllime;

      if TMyVaxIncomingCallParam.sProtocolo <> '' then
      begin
        lbprotocolo.Caption := TMyVaxIncomingCallParam.sProtocolo;
      end;
    end;
  end;

  if (TMyConsultaCallClass.bInConsCall = True) then
  begin
    TMyConsultaCallClass.sLastAppState := lbstatus.Caption;
    lbstatus.Caption := APP_FRM_MAIN_STATUS_CONSULTATION[ID_LANG];
  end;
end;

procedure TfrmPrincipal.vaxSuccessToRegister(Sender: TObject);
begin
  LogCallStep('log_registro_act', 'SuccessToRegister');

  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_REGISTERED[ID_LANG];

  while actlogin.Enabled <> True do
    actlogin.Enabled := True;

  actlogin.Execute;

  btnDesligar.Enabled  := False;
  frameBar.Enabled     := True;
  tbrNavegacao.Enabled := True;
  actsair.Enabled      := False;

  framebar.OpenItem(2,true);

  timerstatuslinha.Enabled := True;

  if TMyAppStatus.bLogado then
    if matrizparametros[7] = 'True' then
    begin
      tmrPausaLogin.Enabled := False;
      tmrPausaLogin.Interval := StrToInt(matrizparametros[8])*1000;
      tmrPausaLogin.Enabled := True;
    end;
end;

procedure TfrmPrincipal.vaxTryingToRegister(Sender: TObject);
begin
  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_REGISTERING[ID_LANG];
end;

procedure TfrmPrincipal.vaxTryingToReRegister(Sender: TObject);
begin
  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_REGISTERING[ID_LANG];
end;

procedure TfrmPrincipal.vaxTryingToUnRegister(Sender: TObject);
begin
  stbStatusBar.Panels[1].text := APP_FRM_MAIN_STATUS_BAR_EXTEN[ID_LANG] + TMyInfoLogin.sRamal + APP_FRM_MAIN_STATUS_BAR_UNREGISTERED[ID_LANG];
end;

procedure TfrmPrincipal.verificalogoff;
begin
  datam.qr_verifica_logoff.active := false;
  datam.qr_verifica_logoff.params[0].value := TMyInfoLogin.sRamal;
  datam.qr_verifica_logoff.active := true;
  if (datam.qr_verifica_logoff.fields[1].asstring = 'AGENTQUEUELOGOFF') and (datam.qr_verifica_logoff.fields[2].asstring = 'Supervis�o') then
  begin
    tmlogoff.enabled := false;

    //Atualiza Status .INI
    lbstatus.Caption := APP_FRM_MAIN_STATUS_ROOT_LOGGEDOUT[ID_LANG];
    lbstatus.Color := clred;

    TMyAppStatus.bLogado := false;
    tmrPausaLogin.Enabled := False;
    actsair.enabled := true;
    actlogin.Enabled := false;
    actlogoff.Enabled := false;

    TMyAppStatus.sTipoEvento := APP_EVENT_TYPE_LOGOFF[ID_LANG];
  end;
  datam.qr_verifica_logoff.active := false;

end;

procedure TfrmPrincipal.PlayAudioRing(nDevice: Integer);
var
  lpset: MCI_WAVE_SET_PARMS;
begin
  with wavAudioRing do
  begin
    try
      if (FileExists(TMyVaxIncomingCallParam.sRingFile)) and
         (not DirectoryExists(TMyVaxIncomingCallParam.sRingFile)) then
      begin
        DeviceType := dtAutoSelect;
        FileName := TMyVaxIncomingCallParam.sRingFile;
        Open;
        lpset.wOutput := nDevice; {number of the sound card. zero through number of outputs-1}
        mciSendCommand(DeviceID, MCI_SET, MCI_WAVE_OUTPUT, longint(@lpset));
        Notify := True;
        Play;
      end;
    except
    end;
  end;
end;

function TfrmPrincipal.ConvertCharToDB(sTexto: String): String;
var
  nFor: Integer;
  sNewText: String;
begin
  sNewText := sTexto;
  for nFor := 1 to MAX_CONVERT_CHARS do
    sNewText := StringReplace(sNewText, ConvertCharItems[nFor].FE, ConvertCharItems[nFor].DB, [rfReplaceAll]);
  Result := sNewText;
end;

function TfrmPrincipal.ConvertCharToFE(sTexto: String): String;
var
  nFor: Integer;
  sNewText: String;
begin
  sNewText := sTexto;
  for nFor := 1 to MAX_CONVERT_CHARS do
    sNewText := StringReplace(sNewText, ConvertCharItems[nFor].DB, ConvertCharItems[nFor].FE, [rfReplaceAll]);
  Result := sNewText;
end;

procedure TfrmPrincipal.CriaChatDinamicos(nQtdChat: Integer);
var
  nFor: Integer;
begin
  if (nChatDinamicosCriados = nQtdChat-1) and (nQtdChat > 1) then
    Exit;

  for nFor := 0 to nQtdChat-1 do
  begin
    if nChatDinamicosCriados < MAX_CHAT_ROOM+1 then
    begin
      //painel
      panChatDinamico[nChatDinamicosCriados]                      := TsPanel.Create(Self);
      panChatDinamico[nChatDinamicosCriados].BorderStyle          := bsNone;
      panChatDinamico[nChatDinamicosCriados].Parent               := panChatRoom;//panChat;
      panChatDinamico[nChatDinamicosCriados].Height               := 112;
      if nChatDinamicosCriados = 0 then
        panChatDinamico[nChatDinamicosCriados].Left               := 10
      else
        panChatDinamico[nChatDinamicosCriados].Left               := 10 + panChatDinamico[nChatDinamicosCriados-1].Left + panChatDinamico[nChatDinamicosCriados-1].Width;
      panChatDinamico[nChatDinamicosCriados].Top                  := 11;
      panChatDinamico[nChatDinamicosCriados].Width                := 123;
      panChatDinamico[nChatDinamicosCriados].Caption              := '';
      panChatDinamico[nChatDinamicosCriados].Name                 := '';
      panChatDinamico[nChatDinamicosCriados].SkinData.SkinManager := frmLogin.sSkinManager1;
      panChatDinamico[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      panChatDinamico[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;
      panChatDinamico[nChatDinamicosCriados].ShowHint             := False;
      panChatDinamico[nChatDinamicosCriados].Hint                 := '';

      //labels por painel
      lblChatCabecalho[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatCabecalho[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatCabecalho[nChatDinamicosCriados].Align                := alTop;
      //lblChatCabecalho[nChatDinamicosCriados].Alignment            := taCenter;
      lblChatCabecalho[nChatDinamicosCriados].Font.Color           := clBlack;
      lblChatCabecalho[nChatDinamicosCriados].Color                := clSkyBlue;
      lblChatCabecalho[nChatDinamicosCriados].Height               := 15;
      lblChatCabecalho[nChatDinamicosCriados].Transparent          := False;
      lblChatCabecalho[nChatDinamicosCriados].Caption              := APP_FRM_MAIN_CHAT_STATUS_PAUSE[ID_LANG];
      lblChatCabecalho[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatCabecalho[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatNome[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatNome[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatNome[nChatDinamicosCriados].Left                 := 3;
      lblChatNome[nChatDinamicosCriados].Top                  := 15;
      lblChatNome[nChatDinamicosCriados].Font.Size            := 7;
      lblChatNome[nChatDinamicosCriados].Caption              := APP_FRM_MAIN_CHAT_NAME[ID_LANG];
      lblChatNome[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatNome[nChatDinamicosCriados].Visible              := False;
      lblChatNome[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatNomeDesc[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatNomeDesc[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatNomeDesc[nChatDinamicosCriados].Left                 := 3;
      lblChatNomeDesc[nChatDinamicosCriados].Top                  := 25;
      lblChatNomeDesc[nChatDinamicosCriados].Height               := 24;
      lblChatNomeDesc[nChatDinamicosCriados].Width                := 112;
      lblChatNomeDesc[nChatDinamicosCriados].AutoSize             := False;
      lblChatNomeDesc[nChatDinamicosCriados].WordWrap             := True;
      lblChatNomeDesc[nChatDinamicosCriados].Font.Size            := 7;
      lblChatNomeDesc[nChatDinamicosCriados].Font.Style           := [fsBold];
      lblChatNomeDesc[nChatDinamicosCriados].Caption              := '';
      lblChatNomeDesc[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatNomeDesc[nChatDinamicosCriados].Visible              := False;
      lblChatNomeDesc[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoInativoAgente[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoInativoAgente[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoInativoAgente[nChatDinamicosCriados].Left                 := 3;
      lblChatTempoInativoAgente[nChatDinamicosCriados].Top                  := 48;
      lblChatTempoInativoAgente[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoInativoAgente[nChatDinamicosCriados].Caption              := APP_FRM_MAIN_CHAT_AGENT_INACTIVE[ID_LANG];
      lblChatTempoInativoAgente[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoInativoAgente[nChatDinamicosCriados].Visible              := False;
      lblChatTempoInativoAgente[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Left                 := 70;
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Top                  := 48;
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Font.Style           := [fsBold];
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Caption              := '00:00:00';
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].Visible              := False;
      lblChatTempoInativoAgenteDesc[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoInativoCliente[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoInativoCliente[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoInativoCliente[nChatDinamicosCriados].Left                 := 3;
      lblChatTempoInativoCliente[nChatDinamicosCriados].Top                  := 58;
      lblChatTempoInativoCliente[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoInativoCliente[nChatDinamicosCriados].Caption              := APP_FRM_MAIN_CHAT_CLIENT_INACTIVE[ID_LANG];
      lblChatTempoInativoCliente[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoInativoCliente[nChatDinamicosCriados].Visible              := False;
      lblChatTempoInativoCliente[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoInativoClienteDesc[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Left                 := 70;
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Top                  := 58;
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Font.Style           := [fsBold];
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Caption              := '00:00:00';
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].Visible              := False;
      lblChatTempoInativoClienteDesc[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoTotal[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoTotal[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoTotal[nChatDinamicosCriados].Left                 := 3;
      lblChatTempoTotal[nChatDinamicosCriados].Top                  := 68;
      lblChatTempoTotal[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoTotal[nChatDinamicosCriados].Caption              := APP_FRM_MAIN_CHAT_TOTAL_DURATION[ID_LANG];
      lblChatTempoTotal[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoTotal[nChatDinamicosCriados].Visible              := False;
      lblChatTempoTotal[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      lblChatTempoTotalDesc[nChatDinamicosCriados]                      := TsLabel.Create(Self);
      lblChatTempoTotalDesc[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      lblChatTempoTotalDesc[nChatDinamicosCriados].Left                 := 70;
      lblChatTempoTotalDesc[nChatDinamicosCriados].Top                  := 68;
      lblChatTempoTotalDesc[nChatDinamicosCriados].Font.Size            := 7;
      lblChatTempoTotalDesc[nChatDinamicosCriados].Font.Style           := [fsBold];
      lblChatTempoTotalDesc[nChatDinamicosCriados].Caption              := '00:00:00';
      lblChatTempoTotalDesc[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      lblChatTempoTotalDesc[nChatDinamicosCriados].Visible              := False;
      lblChatTempoTotalDesc[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      //image
      imgChatCabecalho[nChatDinamicosCriados]                      := TImage.Create(Self);
      imgChatCabecalho[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      imgChatCabecalho[nChatDinamicosCriados].Left                 := 99;
      imgChatCabecalho[nChatDinamicosCriados].Width                := 22;
      imgChatCabecalho[nChatDinamicosCriados].Height               := 26;
      imgChatCabecalho[nChatDinamicosCriados].Top                  := 1;
      imgChatCabecalho[nChatDinamicosCriados].Transparent          := True;
      imgChatCabecalho[nChatDinamicosCriados].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\icoChat.png');
      imgChatCabecalho[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      imgChatCabecalho[nChatDinamicosCriados].Visible              := False;
      imgChatCabecalho[nChatDinamicosCriados].OnClick              := panChatDinamicoClick;

      //Botoes
      imgChatDiscar[nChatDinamicosCriados]                      := TImage.Create(Self);
      imgChatDiscar[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      imgChatDiscar[nChatDinamicosCriados].Left                 := 4;
      imgChatDiscar[nChatDinamicosCriados].Width                := 40;
      imgChatDiscar[nChatDinamicosCriados].Height               := 26;
      imgChatDiscar[nChatDinamicosCriados].Top                  := 81;
      imgChatDiscar[nChatDinamicosCriados].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\icoChatDiscar2.png');
      imgChatDiscar[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      imgChatDiscar[nChatDinamicosCriados].Visible              := False;
      imgChatDiscar[nChatDinamicosCriados].ShowHint             := True;
      imgChatDiscar[nChatDinamicosCriados].Hint                 := APP_FRM_MAIN_CHAT_DIAL[ID_LANG];
      imgChatDiscar[nChatDinamicosCriados].OnClick              := imgChatDiscarClick;

      imgChatEncerrar[nChatDinamicosCriados]                      := TImage.Create(Self);
      imgChatEncerrar[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      imgChatEncerrar[nChatDinamicosCriados].Left                 := 47;
      imgChatEncerrar[nChatDinamicosCriados].Width                := 40;
      imgChatEncerrar[nChatDinamicosCriados].Height               := 26;
      imgChatEncerrar[nChatDinamicosCriados].Top                  := 81;
      imgChatEncerrar[nChatDinamicosCriados].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\icoChatEncerrar.png');
      imgChatEncerrar[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      imgChatEncerrar[nChatDinamicosCriados].Visible              := False;
      imgChatEncerrar[nChatDinamicosCriados].ShowHint             := True;
      imgChatEncerrar[nChatDinamicosCriados].Hint                 := APP_FRM_MAIN_CHAT_HANGUP[ID_LANG];
      imgChatEncerrar[nChatDinamicosCriados].OnClick              := imgChatEncerrarClick;

      imgChatMore[nChatDinamicosCriados]                      := TImage.Create(Self);
      imgChatMore[nChatDinamicosCriados].Parent               := panChatDinamico[nChatDinamicosCriados];
      imgChatMore[nChatDinamicosCriados].Left                 := 90;
      imgChatMore[nChatDinamicosCriados].Width                := 40;
      imgChatMore[nChatDinamicosCriados].Height               := 26;
      imgChatMore[nChatDinamicosCriados].Top                  := 81;
      imgChatMore[nChatDinamicosCriados].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\icoChatURL2.png');
      imgChatMore[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      imgChatMore[nChatDinamicosCriados].Visible              := False;
      imgChatMore[nChatDinamicosCriados].ShowHint             := True;
      imgChatMore[nChatDinamicosCriados].Hint                 := APP_FRM_MAIN_CHAT_OPEN_MORE[ID_LANG];
      imgChatMore[nChatDinamicosCriados].OnMouseDown          := imgChatMoreMouseDown;

      //memo
      memChatHistory[nChatDinamicosCriados]                      := TsRichEdit.Create(Self);
      memChatHistory[nChatDinamicosCriados].Align                := alClient;
      memChatHistory[nChatDinamicosCriados].Parent               := panChatHistorico;
      memChatHistory[nChatDinamicosCriados].Height               := 10;
      memChatHistory[nChatDinamicosCriados].Left                 := 10;
      memChatHistory[nChatDinamicosCriados].Top                  := 10;
      memChatHistory[nChatDinamicosCriados].Width                := 10;
      memChatHistory[nChatDinamicosCriados].SkinData.SkinManager := frmLogin.sSkinManager1;
      memChatHistory[nChatDinamicosCriados].ReadOnly             := True;
      memChatHistory[nChatDinamicosCriados].Tag                  := nChatDinamicosCriados;
      memChatHistory[nChatDinamicosCriados].Visible              := False;
      memChatHistory[nChatDinamicosCriados].ScrollBars           := ssVertical;
      memChatHistory[nChatDinamicosCriados].OnClick              := memChatHistoryClick;
      memChatHistory[nChatDinamicosCriados].OnMouseDown          := memChatHistoryMouseDown;

      //timers
      tmrChatRead[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatRead[nChatDinamicosCriados].Interval := CHAT_NEW_DEFAULT_INTERVAL + ((nChatDinamicosCriados) * 100);
      tmrChatRead[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatRead[nChatDinamicosCriados].Enabled  := False;
      tmrChatRead[nChatDinamicosCriados].OnTimer  := tmrChatReadTimer;

      tmrChatAlerta[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatAlerta[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatAlerta[nChatDinamicosCriados].Enabled  := False;
      tmrChatAlerta[nChatDinamicosCriados].OnTimer  := tmrChatAlertaTimer;

      tmrChatTimeoutCliente[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatTimeoutCliente[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatTimeoutCliente[nChatDinamicosCriados].Enabled  := False;
      tmrChatTimeoutCliente[nChatDinamicosCriados].OnTimer  := tmrChatTimeoutClienteTimer;

      tmrChatTempoInativoAgente[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatTempoInativoAgente[nChatDinamicosCriados].Interval := 1000;
      tmrChatTempoInativoAgente[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatTempoInativoAgente[nChatDinamicosCriados].Enabled  := False;
      tmrChatTempoInativoAgente[nChatDinamicosCriados].OnTimer  := tmrChatTempoInativoAgenteTimer;

      tmrChatTempoInativoCliente[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatTempoInativoCliente[nChatDinamicosCriados].Interval := 1000;
      tmrChatTempoInativoCliente[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatTempoInativoCliente[nChatDinamicosCriados].Enabled  := False;
      tmrChatTempoInativoCliente[nChatDinamicosCriados].OnTimer  := tmrChatTempoInativoClienteTimer;

      tmrChatTempoTotal[nChatDinamicosCriados]          := TTimer.Create(Self);
      tmrChatTempoTotal[nChatDinamicosCriados].Interval := 1000;
      tmrChatTempoTotal[nChatDinamicosCriados].Tag      := nChatDinamicosCriados;
      tmrChatTempoTotal[nChatDinamicosCriados].Enabled  := False;
      tmrChatTempoTotal[nChatDinamicosCriados].OnTimer  := tmrChatTempoTotalTimer;

      //query
      qryChatRead[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatRead[nChatDinamicosCriados].Active     := False;
      qryChatRead[nChatDinamicosCriados].Connection := datam.con_connect;

      qryChatWrite[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatWrite[nChatDinamicosCriados].Active     := False;
      qryChatWrite[nChatDinamicosCriados].Connection := datam.con_connect;

      qryChatXFer[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatXFer[nChatDinamicosCriados].Active     := False;
      qryChatXFer[nChatDinamicosCriados].Connection := datam.con_connect;

      qryChatDesconecta[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatDesconecta[nChatDinamicosCriados].Active     := False;
      qryChatDesconecta[nChatDinamicosCriados].Connection := datam.con_connect;

      qryChatSup[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatSup[nChatDinamicosCriados].Active     := False;
      qryChatSup[nChatDinamicosCriados].Connection := datam.con_connect;

      qryChatBlobGet[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatBlobGet[nChatDinamicosCriados].Active     := False;
      qryChatBlobGet[nChatDinamicosCriados].Connection := datam.con_connect;

      {
      qryChatBlobPut[nChatDinamicosCriados]            := TZQuery.Create(Self);
      qryChatBlobPut[nChatDinamicosCriados].Active     := False;
      qryChatBlobPut[nChatDinamicosCriados].Connection := datam.con_connect;
      }

      sChatTextToSend[nChatDinamicosCriados] := '';

      if nChatDinamicosCriados < nQtdChat-1 then
        Inc(nChatDinamicosCriados);
    end;
  end; //for nFor := 0 to nQtdChat-1 do

  TMyChat.nChatAtivo := -1;

  vFlashWindowActive := 2;

  if nChatDinamicosCriados >= 0 then
    panChatRoom.Height := panChatDinamico[0].Top + panChatDinamico[0].Height + 10;

  chkChatRolagem.Checked := True;
  radChatSendTo.ItemIndex := 0;
  radChatSendTo.Enabled := False;

  SetLength(matrizchatsala, 6, 21);//matriz, sala, campo
  for nFor := 0 to nQtdChat-1 do
  begin
    matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_FREE);//Chat livre
    vchatverificaclientefechou[nFor] := 0;
  end;

  vChatClassificando := 0;
  vChatClassificandoSala := -1;
  vChatClassificandoTipo := -1;
  vChatDesconexaoCliente := False;
  vChatXFer := False;
  vChatXFerDst := '';

  TMyChat.sDirBlobReceived := ExtractFilePath(Application.ExeName) + 'arquivos_chat\recebidos\';

  tmrChatQueue.Enabled := False;
  tmrChatQueue.Interval := CHAT_NEW_DEFAULT_INTERVAL;
  tmrChatQueue.Tag := 1;
  if TMyInfoLogin.nTipo = 1 then
  begin
    tmrChatQueue.Enabled := True;

    {tmrChatRead          := TTimer.Create(Self);
    tmrChatRead.Interval := CHAT_NEW_DEFAULT_INTERVAL + ((nChatDinamicosCriados) * 100);
    tmrChatRead.Tag      := nChatDinamicosCriados;
    tmrChatRead.Enabled  := True;
    tmrChatRead.OnTimer  := tmrChatReadTimer;}
  end;

  AddictSpell.AddControl(memChatSend);
end;

procedure TfrmPrincipal.panChatDinamicoClick(Sender: TObject);
var
  nFor: Integer;
begin
  AtivaFlashWindow(False);

  if TMyChat.nChatAtivo <> -1 then
    sChatTextToSend[TMyChat.nChatAtivo] := memChatSend.Lines.GetText;

  for nFor := 0 to nChatDinamicosCriados do
  begin
    panChatDinamico[nFor].BorderStyle := bsNone;
    memChatHistory[nFor].Visible := False;
  end;

  for nFor := 0 to nChatDinamicosCriados do
  begin
    if (TsLabel(Sender).Tag = nFor) or (TsPanel(Sender).Tag = nFor) or (TImage(Sender).Tag = nFor) then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          imgChatCabecalho[nFor].Visible := False;

          stbChat.Panels[0].Text := APP_FRM_MAIN_CHAT_NAME[ID_LANG] + ' ' + matrizchatsala[nFor, 2];
          stbChat.Panels[1].Text := APP_FRM_MAIN_CHAT_ROOM[ID_LANG] + matrizchatsala[nFor, 6];
          stbChat.Panels[0].Width := panChatHistorico.Width + 2;

          memChatSend.Lines.Text := sChatTextToSend[nFor];

          panChatMessages.Top := panChatDinamico[nFor].Top + panChatDinamico[nFor].Height + 10;
          panChatMessages.Height := panChat.Height - (panChatDinamico[nFor].Top * 2) - panChatDinamico[nFor].Height;
          panChatMessages.Visible := True;

          panChatDinamico[nFor].BorderStyle := bsSingle;
          memChatHistory[nFor].Visible := True;

          if matrizchatsala[nFor, 20] = 'True' then
            radChatSendTo.Enabled := True
          else
            radChatSendTo.Enabled := False;

          TMyChat.nChatAtivo := nFor;
        end
        else
        begin
          stbChat.Panels[0].Text := APP_FRM_MAIN_CHAT_NAME[ID_LANG];
          stbChat.Panels[1].Text := APP_FRM_MAIN_CHAT_ROOM[ID_LANG];
          stbChat.Panels[0].Width := panChatHistorico.Width + 2;

          panChatMessages.Visible := False;

          panChatDinamico[nFor].BorderStyle := bsNone;
          memChatHistory[nFor].Visible := False;
          radChatSendTo.Enabled := False;

          TMyChat.nChatAtivo := -1;
        end;

      Break;
    end
  end;
end;

procedure TfrmPrincipal.panInfoChamadaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  nInd: Integer;
  nForCopyMenu: Integer;
begin
  if not TMyAppStatus.bAtendido then
    Exit;

  if Button = mbRight then
  begin
    //Menu para copiar informacoes
    nInd := 0;
    mitCopyInfoCall.Clear;

    mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
    mitCopyInfoCallItens[nInd].Caption := '(Todas as Informa��es)';
    mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
    mitCopyInfoCallItens[nInd].Tag := nInd;
    mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
    Inc(nInd);

    mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
    mitCopyInfoCallItens[nInd].Caption := 'Protocolo: ' + TMyVaxIncomingCallParam.sProtocolo;
    mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
    mitCopyInfoCallItens[nInd].Tag := nInd;
    mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
    Inc(nInd);

    mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
    mitCopyInfoCallItens[nInd].Caption := 'N�mero: ' + TMyVaxIncomingCallParam.username;
    mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
    mitCopyInfoCallItens[nInd].Tag := nInd;
    mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
    Inc(nInd);

    mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
    mitCopyInfoCallItens[nInd].Caption := 'Fila: ' + TMyVaxIncomingCallParam.sFilaDSC;
    mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
    mitCopyInfoCallItens[nInd].Tag := nInd;
    mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
    Inc(nInd);

    mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
    mitCopyInfoCallItens[nInd].Caption := 'Cliente: ' + TMyVaxIncomingCallParam.sCodTipo;
    mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
    mitCopyInfoCallItens[nInd].Tag := nInd;
    mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
    Inc(nInd);

    for nForCopyMenu := 1 to 10 do
    begin
      if Trim(TMyVaxIncomingCallParam.sCampo[nForCopyMenu]) <> '' then
      begin
        mitCopyInfoCallItens[nInd] := TMenuItem.Create(mnuCopyInfoCall);
        mitCopyInfoCallItens[nInd].Caption := 'Campo' + IntToStr(nForCopyMenu) + ': ' + TMyVaxIncomingCallParam.sCampo[nForCopyMenu];
        mitCopyInfoCallItens[nInd].OnClick := mitCopyInfoCallItensClick;
        mitCopyInfoCallItens[nInd].Tag := nInd;
        mitCopyInfoCall.Add(mitCopyInfoCallItens[nInd]);
        Inc(nInd);
      end;
    end;

    mnuCopyInfoCall.Popup(10 + X + panInfoChamada.Left + pnprincipal.Left + panInfo.Left + frmPrincipal.Left,
                          35 + Y + panInfoChamada.Top  + pnprincipal.Top  + panInfo.Top  + frmPrincipal.Top);
  end;
end;

procedure TfrmPrincipal.mitCopyInfoCallItensClick(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 0 then
    Clipboard.asText := panInfoChamada.Hint
  else
    Clipboard.asText := mitCopyInfoCallItens[TMenuItem(Sender).Tag].Caption;
end;

procedure TfrmPrincipal.icmpClientPingReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
var
  sTime, sTipo, sMsg: String;
begin
  if (AReplyStatus.ReplyStatusType = rsTimeOut) or (AReplyStatus.ReplyStatusType = rsErrorUnreachable) then
  begin
    if (AReplyStatus.ReplyStatusType = rsTimeOut) then
      sTipo := 'Ping_rsTimeOut';

    if (AReplyStatus.ReplyStatusType = rsErrorUnreachable) then
      sTipo := 'Ping_rsErrorUnreachable';

    if (AReplyStatus.MsRoundTripTime = 0) then
      sTime := '<1'
    else
      sTime := '=';

    sMsg := 'Computer ' + icmpClientPing.Host + ' is down. (' + Format('%d bytes from %s ( %s ): icmp_seq=%d ttl=%d time%s%d ms msg=%s)',
            [AReplyStatus.BytesReceived,
            AReplyStatus.FromIpAddress,
            AReplyStatus.HostName,
            AReplyStatus.SequenceId,
            AReplyStatus.TimeToLive,
            sTime,
            AReplyStatus.MsRoundTripTime,
            AReplyStatus.Msg]);

    LogPing(sTipo, sMsg);
  end;

  Application.processmessages;
end;

procedure TfrmPrincipal.imgCallQ1Click(Sender: TObject);
begin
  TMyAppStatus.nCallQuality := 1;

  imlCallQuality.GetBitmap(0, imgCallQ1.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ2.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ3.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ4.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ5.Picture.Bitmap);

  ClearImgCallQuality(False);
end;

procedure TfrmPrincipal.imgCallQ2Click(Sender: TObject);
begin
  TMyAppStatus.nCallQuality := 2;

  imlCallQuality.GetBitmap(0, imgCallQ1.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ2.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ3.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ4.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ5.Picture.Bitmap);

  ClearImgCallQuality(False);
end;

procedure TfrmPrincipal.imgCallQ3Click(Sender: TObject);
begin
  TMyAppStatus.nCallQuality := 3;

  imlCallQuality.GetBitmap(0, imgCallQ1.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ2.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ3.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ4.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ5.Picture.Bitmap);

  ClearImgCallQuality(False);
end;

procedure TfrmPrincipal.imgCallQ4Click(Sender: TObject);
begin
  TMyAppStatus.nCallQuality := 4;

  imlCallQuality.GetBitmap(0, imgCallQ1.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ2.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ3.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ4.Picture.Bitmap);
  imlCallQuality.GetBitmap(1, imgCallQ5.Picture.Bitmap);

  ClearImgCallQuality(False);
end;

procedure TfrmPrincipal.imgCallQ5Click(Sender: TObject);
begin
  TMyAppStatus.nCallQuality := 5;

  imlCallQuality.GetBitmap(0, imgCallQ1.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ2.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ3.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ4.Picture.Bitmap);
  imlCallQuality.GetBitmap(0, imgCallQ5.Picture.Bitmap);

  ClearImgCallQuality(False);
end;

procedure TfrmPrincipal.imgChatDiscarClick(Sender: TObject);
var
  nFor: Integer;
begin
  AtivaFlashWindow(False);

  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TImage(Sender).Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          framebar.OpenItem(0, True);
          Tfrmdialpad(framebar.items[0].frame).cboAtivo.Text := matrizchatsala[nFor, 4];
          Tfrmdialpad(framebar.items[0].frame).btnLigaClick(Self);
        end;
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.imgChatEncerrarClick(Sender: TObject);
var
  nFor: Integer;
begin
  AtivaFlashWindow(False);

  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TImage(Sender).Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
          if application.MessageBox(PChar(APP_MB_ASK_HANGUP_CHAT[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), mb_yesno+mb_iconquestion) = idyes then
            DesconectaChat(nFor, 0);
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.imgChatMoreMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  nFor: Integer;
  nForCopyMenu: Integer;
  nInd: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TImage(Sender).Tag = nFor then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          if matrizchatsala[nFor, 19] = 'True' then
            mitChatXFer.Enabled := True
          else
            mitChatXFer.Enabled := False;

          if matrizchatsala[nFor, 20] = 'True' then
            mitChatSup.Enabled := False
          else
            mitChatSup.Enabled := True;

          if DirectoryExists(TMyChat.sDirBlobReceived + matrizchatsala[nFor, 1] + '\') then
            mitChatBlob.Enabled := True
          else
            mitChatBlob.Enabled := False;

          //Menu para copiar informacoes
          nInd := 0;
          mitChatCopy.Clear;

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := '(Todas as Informa��es)';
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := 'Nome: ' + matrizchatsala[nFor, 2];
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := 'E-Mail: ' + matrizchatsala[nFor, 3];
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := 'Telefone: ' + matrizchatsala[nFor, 4];
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := 'Sala: ' + matrizchatsala[nFor, 6];
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
          mitChatCopyInfo[nInd].Caption := 'Protocolo: ' + matrizchatsala[nFor, 1];
          mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
          mitChatCopyInfo[nInd].Tag := nInd;
          mitChatCopy.Add(mitChatCopyInfo[nInd]);
          Inc(nInd);

          for nForCopyMenu := 9 to 18 do
          begin
            if Trim(matrizchatsala[nFor, nForCopyMenu]) <> '' then
            begin
              mitChatCopyInfo[nInd] := TMenuItem.Create(mnuChatMoreOptions);
              mitChatCopyInfo[nInd].Caption := matrizchatsala[nFor, nForCopyMenu];
              mitChatCopyInfo[nInd].OnClick := mitChatCopyInfoClick;
              mitChatCopyInfo[nInd].Tag := nInd;
              mitChatCopy.Add(mitChatCopyInfo[nInd]);
              Inc(nInd);
            end;
          end;

          mnuChatMoreOptions.Tag := nFor;
          mnuChatMoreOptions.Popup(10 + X + TImage(Sender).Left + panChatDinamico[nFor].Left + panChat.Left + tabChat.Left + pgcBrowser.Left + panGeral.Left + frmPrincipal.Left,
                                   35 + Y + TImage(Sender).Top  + panChatDinamico[nFor].Top  + panChat.Top  + tabChat.Top  + pgcBrowser.Top  + panGeral.Top  + frmPrincipal.Top );
        end;
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.memChatHistoryClick(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TRichEdit(Sender).Tag = nFor then
    begin
      AtivaFlashWindow(False);

      Break;
    end;
  end;
end;

procedure TfrmPrincipal.memChatHistoryMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  nFor: Integer;
  //mitChatFAQWord: TMenuItem;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TRichEdit(Sender).Tag = nFor then
    begin
      if Button = mbRight then
      begin
        if Trim(memChatHistory[nFor].SelText) = '' then
          Exit;

        mnuChatFAQ.Tag := nFor;
        mnuChatFAQ.Popup(10  + X + TRichEdit(Sender).Left + memChatHistory[nFor].Left + panChatHistorico.Left + tabChat.Left + pgcBrowser.Left + panGeral.Left + frmPrincipal.Left,
                         170 + Y + TRichEdit(Sender).Top  + memChatHistory[nFor].Top  + panChatHistorico.Top  + tabChat.Top  + pgcBrowser.Top  + panGeral.Top  + frmPrincipal.Top );

      end;

      Break;
    end;
  end;
end;

procedure TfrmPrincipal.tmrChatQueueTimer(Sender: TObject);
var
  nFor: Integer;
  nCountSP: Integer;
  sTextoHint: String;
begin
  tmrChatQueue.Enabled := False;

  if vChatClassificando <> 1 then
  begin
    if tmrChatQueue.Tag = 1 then
    begin
      tmrChatQueue.Tag := 0;
      tmrChatQueue.Enabled := True;
      Exit;
    end
    else
    begin
      if tmrChatQueue.Interval <> CHAT_NEW_DEFAULT_INTERVAL then
      begin
        tmrChatQueue.Interval := CHAT_NEW_DEFAULT_INTERVAL;

        //Update Dash Board - Retornando da pausa configurada...
        datam.qryChatUpdateDash.Active := False;
        datam.qryChatUpdateDash.SQL.Clear;
        datam.qryChatUpdateDash.SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
        datam.qryChatUpdateDash.SQL.Add('set wrapup_chat_act = ' + QuotedStr('N'));
        datam.qryChatUpdateDash.SQL.Add('where ');
        datam.qryChatUpdateDash.SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
        datam.qryChatUpdateDash.ExecSQL;
        datam.qryChatUpdateDash.Active := False;

        tmrChatQueue.Enabled := True;
        Exit;
      end;
    end;

    if (TMyAppStatus.bLogado) and (TMyAppStatus.sTipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG]) then
    begin
      for nFor := 0 to nChatDinamicosCriados do
      begin
        if matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_FREE) then
        begin
          datam.conChatQueue.Disconnect;
          datam.conChatQueue.HostName := frmLogin.TMyConfigInfo.sDatabaseIP;
          datam.conChatQueue.Database := frmLogin.TMyConfigInfo.sDatabaseName;
          datam.conChatQueue.User     := frmLogin.TMyConfigInfo.sDatabaseUser;
          datam.conChatQueue.Password := frmLogin.TMyConfigInfo.sDatabasePass;
          datam.conChatQueue.Port := frmLogin.TMyConfigInfo.nDatabasePort;
          datam.conChatQueue.Connect;

          datam.qryChatQueue.Active := False;
          datam.qryChatQueue.SQL.Clear;
          datam.qryChatQueue.SQL.Add('call spChatCtr(' + TMyInfoLogin.sIDOperacao + ',' + TMyInfoLogin.sIDUsuario  + ')');
          datam.qryChatQueue.Active := True;
          nCountSP := datam.qryChatQueue.RecordCount;

          if nCountSP > 0 then
          begin
            if datam.qryChatQueue.Fields[0].AsString = '0' then
            begin
              datam.qryChatQueue.Active := False;
              datam.conChatQueue.Disconnect;

              Break;
            end;

            if tabChat.TabVisible = False then
              actchat.Execute;

            matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_ALERT_1);//Chat em conversacao - Alerta 1
            matrizchatsala[nFor, 1] := datam.qryChatQueue.Fields[0].AsString;//id
            matrizchatsala[nFor, 2] := ConvertCharToFE(datam.qryChatQueue.Fields[1].AsString);//nome
            matrizchatsala[nFor, 3] := ConvertCharToFE(datam.qryChatQueue.Fields[2].AsString);//email
            matrizchatsala[nFor, 4] := datam.qryChatQueue.Fields[3].AsString;//telefone
            matrizchatsala[nFor, 5] := ConvertCharToFE(datam.qryChatQueue.Fields[4].AsString);//site
            matrizchatsala[nFor, 6] := ConvertCharToFE(datam.qryChatQueue.Fields[5].AsString);//sala
            matrizchatsala[nFor, 7] := datam.qryChatQueue.Fields[6].AsString;//id sala
            matrizchatsala[nFor, 8] := datam.qryChatQueue.Fields[7].AsString;//id do chat (conf do chat)
            matrizchatsala[nFor, 9] := ConvertCharToFE(datam.qryChatQueue.Fields[8].AsString);//Campo 1
            matrizchatsala[nFor, 10] := ConvertCharToFE(datam.qryChatQueue.Fields[9].AsString);//Campo 2
            matrizchatsala[nFor, 11] := ConvertCharToFE(datam.qryChatQueue.Fields[10].AsString);//Campo 3
            matrizchatsala[nFor, 12] := ConvertCharToFE(datam.qryChatQueue.Fields[11].AsString);//Campo 4
            matrizchatsala[nFor, 13] := ConvertCharToFE(datam.qryChatQueue.Fields[12].AsString);//Campo 5
            matrizchatsala[nFor, 14] := ConvertCharToFE(datam.qryChatQueue.Fields[13].AsString);//Campo 6
            matrizchatsala[nFor, 15] := ConvertCharToFE(datam.qryChatQueue.Fields[14].AsString);//Campo 7
            matrizchatsala[nFor, 16] := ConvertCharToFE(datam.qryChatQueue.Fields[15].AsString);//Campo 8
            matrizchatsala[nFor, 17] := ConvertCharToFE(datam.qryChatQueue.Fields[16].AsString);//Campo 9
            matrizchatsala[nFor, 18] := ConvertCharToFE(datam.qryChatQueue.Fields[17].AsString);//Campo 10
            matrizchatsala[nFor, 19] := 'True';//XFer
            matrizchatsala[nFor, 20] := 'False';//Sup

            lblChatCabecalho[nFor].Caption := APP_FRM_MAIN_CHAT_INCHAT[ID_LANG];
            lblChatCabecalho[nFor].Font.Color := clWhite;
            lblChatCabecalho[nFor].Color := clTeal;
            lblChatNomeDesc[nFor].Caption := matrizchatsala[nFor, 2];

            imgChatCabecalho[nFor].Visible := True;
            AtivaFlashWindow(True);

            lblChatNome[nFor].Visible                    := True;
            lblChatNomeDesc[nFor].Visible                := True;
            lblChatTempoInativoAgente[nFor].Visible      := True;
            lblChatTempoInativoAgenteDesc[nFor].Visible  := True;
            lblChatTempoInativoCliente[nFor].Visible     := True;
            lblChatTempoInativoClienteDesc[nFor].Visible := True;
            lblChatTempoTotal[nFor].Visible              := True;
            lblChatTempoTotalDesc[nFor].Visible          := True;
            imgChatEncerrar[nFor].Visible                := True;
            imgChatMore[nFor].Visible                    := True;
            imgChatDiscar[nFor].Visible                  := True;

            Integrador(INTEGRADOR_CHAT, nFor);

            sTextoHint := '';
            sTextoHint := 'Nome: ' + matrizchatsala[nFor, 2] + #13#10 +
                          'E-Mail: '+ matrizchatsala[nFor, 3] + #13#10 +
                          'Telefone: ' + matrizchatsala[nFor, 4] + #13#10 +
                          'Sala: ' + matrizchatsala[nFor, 6] + #13#10 +
                          'Protocolo: ' + matrizchatsala[nFor, 1];

            if Trim(matrizchatsala[nFor, 9]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 9];
            if Trim(matrizchatsala[nFor, 10]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 10];
            if Trim(matrizchatsala[nFor, 11]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 11];
            if Trim(matrizchatsala[nFor, 12]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 12];
            if Trim(matrizchatsala[nFor, 13]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 13];
            if Trim(matrizchatsala[nFor, 14]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 14];
            if Trim(matrizchatsala[nFor, 15]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 15];
            if Trim(matrizchatsala[nFor, 16]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 16];
            if Trim(matrizchatsala[nFor, 17]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 17];
            if Trim(matrizchatsala[nFor, 18]) <> '' then
              sTextoHint := sTextoHint + #13#10 + matrizchatsala[nFor, 18];

            panChatDinamico[nFor].ShowHint := True;
            panChatDinamico[nFor].Hint     := sTextoHint;

            memChatHistory[nFor].Lines.Clear;

            tmrChatAlerta[nFor].Interval := 1000;
            tmrChatAlerta[nFor].Enabled := True;

            dtvChatTempoInativoAgenteIni[nFor] := Now;
            dtvChatTempoInativoClienteIni[nFor] := Now;
            dtvChatTempoTotalIni[nFor] := Now;

            tmrChatRead[nFor].Enabled := True;

            tmrChatTempoInativoAgente[nFor].Enabled  := True;
            tmrChatTempoInativoCliente[nFor].Enabled  := True;
            tmrChatTempoTotal[nFor].Enabled  := True;

            if vchat[0] = 'True' then
            begin
              tmrChatTimeoutCliente[nFor].Interval := StrToInt(vchat[1]) * 1000;
              tmrChatTimeoutCliente[nFor].Enabled := True;
            end;

            if TMyChat.nChatAtivo = -1 then
            begin
              txtChatHistoricoNome.Text := '';
              txtChatHistoricoTelefone.Text := '';
              txtChatHistoricoProtocolo.Text := '';
              txtChatHistoricoEMail.Text := '';
              txtChatHistoricoSala.Text := '';
              txtChatHistoricoData.Date := 0;
              grdChatPesquisaHist.Visible := False;

              panChatDinamicoClick(panChatDinamico[nFor]);
              vFlashWindowActive := 2;
            end;

            //Update Dash Board
            datam.qryChatUpdateDash.Active := False;
            datam.qryChatUpdateDash.SQL.Clear;
            datam.qryChatUpdateDash.SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
            datam.qryChatUpdateDash.SQL.Add('set tipo = ' + QuotedStr('CHAT') + ', ');
            datam.qryChatUpdateDash.SQL.Add('sala' + IntToStr(nFor+1) + '_act = ' + QuotedStr('Y') + ', ');
            datam.qryChatUpdateDash.SQL.Add('sala' + IntToStr(nFor+1) + '_ctr_id = ' + matrizchatsala[nFor, 1] + ' ');
            datam.qryChatUpdateDash.SQL.Add('where ');
            datam.qryChatUpdateDash.SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
            datam.qryChatUpdateDash.ExecSQL;
            datam.qryChatUpdateDash.Active := False;
          end; //if nCountSP > 0 then

          datam.qryChatQueue.Active := False;
          datam.conChatQueue.Disconnect;

          Break;
        end; //if matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_FREE) then
      end; //for nFor := 0 to nChatDinamicosCriados do
    end; //if (TMyAppStatus.bLogado) and (vtipoEvento <> APP_EVENT_TYPE_PAUSE[ID_LANG]) then
  end
  else //if vChatClassificando <> 1 then
  begin
    if tmrChatQueue.Interval = CHAT_NEW_DEFAULT_INTERVAL then
    begin
      tmrChatQueue.Interval := StrToInt(vchat[3]) * 1000;//Rodando com tempo determinado pelo adm

      //Update Dash Board - Aguardando pausa configurada...
      datam.qryChatUpdateDash.Active := False;
      datam.qryChatUpdateDash.SQL.Clear;
      datam.qryChatUpdateDash.SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
      datam.qryChatUpdateDash.SQL.Add('set wrapup_chat_act = ' + QuotedStr('Y') + ', ');
      datam.qryChatUpdateDash.SQL.Add('wrapup_chat_tmp = now(), ');
      datam.qryChatUpdateDash.SQL.Add('sala' + IntToStr(vChatClassificandoSala+1) + '_sup_act = ' + QuotedStr('N'));
      datam.qryChatUpdateDash.SQL.Add('where ');
      datam.qryChatUpdateDash.SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
      datam.qryChatUpdateDash.ExecSQL;
      datam.qryChatUpdateDash.Active := False;
    end
    else
    begin
      ClassificaChatAuto(True);
    end;
  end; //if vChatClassificando <> 1 then

  tmrChatQueue.Enabled := True;
end;

procedure TfrmPrincipal.tmrChatReadTimer(Sender: TObject);
var
  nFor: Integer;
  nCountMsg: Integer;
  sUpdateId: String;
  sMensagem: String;
  sHoraMensagem: String;
  sTipoMensagem: String;
  sNomeMensagem: String;
  sIDUsuarioMensagem: String;
  nHasChatXFer: Integer;
  nIdChatXFer: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
      begin
        tmrChatRead[nFor].Enabled := False;

        nHasChatXFer := 0;
        nIdChatXFer := 0;
        qryChatRead[nFor].Active := False;
        qryChatRead[nFor].SQL.Clear;
        qryChatRead[nFor].SQL.Add('select transfered_act, transfered_id ');
        qryChatRead[nFor].SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist where id = ' + matrizchatsala[nFor, 1]);
        qryChatRead[nFor].Active := True;
        if qryChatRead[nFor].RecordCount > 0 then
        begin
          if qryChatRead[nFor].Fields[0].AsString = 'True' then
          begin
            nHasChatXFer := 1;
            nIdChatXFer := qryChatRead[nFor].Fields[1].AsInteger;

            matrizchatsala[nFor, 19] := 'False';
          end;
        end;

        qryChatRead[nFor].Active := False;
        qryChatRead[nFor].SQL.Clear;
        qryChatRead[nFor].SQL.Add('select d.id, d.msg, date_format(d.chora, "%H:%i:%s %p"), d.tipo, ');
        qryChatRead[nFor].SQL.Add('u.descricao, u.id ');
        qryChatRead[nFor].SQL.Add('from easy_core_contatos_ctrl c ');
        qryChatRead[nFor].SQL.Add('left join easy_core_contatos_msg_hist d on c.id = d.easy_core_contatos_ctrl_id ');
        qryChatRead[nFor].SQL.Add('left join easy_work_colaborador_conf u on d.easy_work_colaborador_conf_id = u.id ');
        qryChatRead[nFor].SQL.Add('where d.active = ' + QuotedStr('Y') + ' and ');
        if nHasChatXFer = 1 then
          qryChatRead[nFor].SQL.Add('d.easy_core_contatos_ctrl_id IN (' + matrizchatsala[nFor, 1] +
                                    ',' + IntToStr(nIdChatXFer) + ')')
        else
          qryChatRead[nFor].SQL.Add('d.easy_core_contatos_ctrl_id = ' + matrizchatsala[nFor, 1]);
        qryChatRead[nFor].Active := True;

        if (matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_FREE)) or (matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_ENDING)) then
          Exit;

        if qryChatRead[nFor].RecordCount > 0 then
        begin
          if vchat[0] = 'True' then
          begin
            tmrChatTimeoutCliente[nFor].Enabled := False;
            tmrChatTimeoutCliente[nFor].Interval := StrToInt(vchat[1]) * 1000;
            tmrChatTimeoutCliente[nFor].Enabled := True;
          end;

          sUpdateId := '';
          nCountMsg := 0;
          while not qryChatRead[nFor].Eof do
          begin
            Inc(nCountMsg);
            if nCountMsg = 1 then
              sUpdateId := qryChatRead[nFor].Fields[0].AsString
            else
              sUpdateId := sUpdateId + ',' + qryChatRead[nFor].Fields[0].AsString;

            sMensagem := ConvertCharToFE(qryChatRead[nFor].Fields[1].AsString);
            sHoraMensagem := qryChatRead[nFor].Fields[2].AsString;
            sTipoMensagem := qryChatRead[nFor].Fields[3].AsString;
            sNomeMensagem := qryChatRead[nFor].Fields[4].AsString;
            sIDUsuarioMensagem := qryChatRead[nFor].Fields[5].AsString;

            if (sTipoMensagem = 'C') or
               (sTipoMensagem = 'A') or
               (sTipoMensagem = 'CON') or
               (sTipoMensagem = 'SPR') or
               (sTipoMensagem = 'APR') then
            begin
              memChatHistory[nFor].SelStart := memChatHistory[nFor].GetTextLen;
              memChatHistory[nFor].SelAttributes.Style := [fsBold];

              if sTipoMensagem = 'C' then
              begin
                AtivaFlashWindow(True);
                if TMyChat.nChatAtivo <> nFor then
                  imgChatCabecalho[nFor].Visible := True;

                memChatHistory[nFor].SelAttributes.Color := clNavy;
                memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + matrizchatsala[nFor, 2] + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                memChatHistory[nFor].SelAttributes.Color := clNavy;

                dtvChatTempoInativoClienteIni[nFor] := Now
              end
              else
                if sTipoMensagem = 'A' then
                begin
                  memChatHistory[nFor].SelAttributes.Color := clMaroon;
                  memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                  memChatHistory[nFor].SelAttributes.Color := clMaroon;

                  dtvChatTempoInativoAgenteIni[nFor] := Now;
                end
                else
                  if sTipoMensagem = 'CON' then
                  begin
                    if TMyInfoLogin.sIDUsuario = sIDUsuarioMensagem then
                    begin
                      memChatHistory[nFor].SelAttributes.Color := clMaroon;
                      memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                      memChatHistory[nFor].SelAttributes.Color := clMaroon;

                      dtvChatTempoInativoAgenteIni[nFor] := Now;
                    end
                    else
                    begin
                      AtivaFlashWindow(True);
                      if TMyChat.nChatAtivo <> nFor then
                        imgChatCabecalho[nFor].Visible := True;

                      memChatHistory[nFor].SelAttributes.Color := clTeal;
                      memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                      memChatHistory[nFor].SelAttributes.Color := clTeal;
                    end;
                  end
                  else
                    if sTipoMensagem = 'SPR' then
                    begin
                      memChatHistory[nFor].SelAttributes.Color := clMaroon;
                      memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                      memChatHistory[nFor].SelAttributes.Color := clMaroon;
                    end
                    else
                      if sTipoMensagem = 'APR' then
                      begin
                        AtivaFlashWindow(True);
                        if TMyChat.nChatAtivo <> nFor then
                          imgChatCabecalho[nFor].Visible := True;

                        memChatHistory[nFor].SelAttributes.Color := clTeal;
                        memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                        memChatHistory[nFor].SelAttributes.Color := clTeal;
                      end;

              memChatHistory[nFor].SelAttributes.Style := [];
              memChatHistory[nFor].SelText := sMensagem + #13#10;
            end;

            qryChatRead[nFor].Next;
          end;//while not qryChatRead[nFor].Eof do

          qryChatRead[nFor].Active := False;
          qryChatRead[nFor].SQL.Clear;
          qryChatRead[nFor].SQL.Add('update easy_core_contatos_msg_hist set ');
          qryChatRead[nFor].SQL.Add('active = ' + QuotedStr('N'));
          qryChatRead[nFor].SQL.Add('where id in (' + sUpdateId + ')');
          qryChatRead[nFor].ExecSQL;

          try
             if chkChatRolagem.Checked then
               SendMessage(memChatHistory[nFor].Handle, WM_VSCROLL, SB_BOTTOM, 0);
          except
          end;
        end
        else// if qryChatRead[nFor].RecordCount > 0 then
        begin
          if vChatClassificando <> 1 then
          begin
            Inc(vchatverificaclientefechou[nFor]);
            if vchatverificaclientefechou[nFor] >= 4 then
            begin
              vchatverificaclientefechou[nFor] := 0;

              qryChatRead[nFor].Active := False;
              qryChatRead[nFor].SQL.Clear;
              qryChatRead[nFor].SQL.Add('select id ');
              qryChatRead[nFor].SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist ');
              qryChatRead[nFor].SQL.Add('where ');
              qryChatRead[nFor].SQL.Add('desconexao = ' + QuotedStr('C') + ' ');
              qryChatRead[nFor].SQL.Add('and id = ' + (matrizchatsala[nFor, 1]));
              qryChatRead[nFor].Active := True;

              if qryChatRead[nFor].RecordCount > 0 then
              begin
                if vChatClassificando <> 1 then
                begin
                  vChatDesconexaoCliente := True;
                  DesconectaChat(nFor, 0);
                end;
              end;
              qryChatRead[nFor].Active := False;
            end;
          end;
        end;// if qryChatRead[nFor].RecordCount > 0 then

        RecebeBlobChat(nFor);

        tmrChatRead[nFor].Enabled := True;
        Break;
      end;//if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
    end; //if TTimer(Sender).Tag = nFor then
  end; //for nFor := 0 to nChatDinamicosCriados do
end;

{New version - procedure TfrmPrincipal.tmrChatReadTimer(Sender: TObject);
var
  nFor: Integer;
  nCountMsg: Integer;
  sUpdateId: String;
  sMensagem: String;
  sHoraMensagem: String;
  sTipoMensagem: String;
  sNomeMensagem: String;
  sIDUsuarioMensagem: String;
  nHasChatXFer: Integer;
  nIdChatXFer: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
    begin
      nHasChatXFer := 0;
      nIdChatXFer := 0;
      qryChatRead[nFor].Active := False;
      qryChatRead[nFor].SQL.Clear;
      qryChatRead[nFor].SQL.Add('select transfered_act, transfered_id ');
      qryChatRead[nFor].SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist where id = ' + matrizchatsala[nFor, 1]);
      qryChatRead[nFor].Active := True;
      if qryChatRead[nFor].RecordCount > 0 then
      begin
        if qryChatRead[nFor].Fields[0].AsString = 'True' then
        begin
          nHasChatXFer := 1;
          nIdChatXFer := qryChatRead[nFor].Fields[1].AsInteger;

          matrizchatsala[nFor, 19] := 'False';
        end;
      end;

      qryChatRead[nFor].Active := False;
      qryChatRead[nFor].SQL.Clear;
      qryChatRead[nFor].SQL.Add('select d.id, d.msg, date_format(d.chora, "%H:%i:%s %p"), d.tipo, ');
      qryChatRead[nFor].SQL.Add('u.descricao, u.id ');
      qryChatRead[nFor].SQL.Add('from easy_core_contatos_ctrl c ');
      qryChatRead[nFor].SQL.Add('left join easy_core_contatos_msg_hist d on c.id = d.easy_core_contatos_ctrl_id ');
      qryChatRead[nFor].SQL.Add('left join easy_work_colaborador_conf u on d.easy_work_colaborador_conf_id = u.id ');
      qryChatRead[nFor].SQL.Add('where d.active = ' + QuotedStr('Y') + ' and ');
      if nHasChatXFer = 1 then
        qryChatRead[nFor].SQL.Add('d.easy_core_contatos_ctrl_id IN (' + matrizchatsala[nFor, 1] +
                                  ',' + IntToStr(nIdChatXFer) + ')')
      else
        qryChatRead[nFor].SQL.Add('d.easy_core_contatos_ctrl_id = ' + matrizchatsala[nFor, 1]);
      qryChatRead[nFor].Active := True;

      if (matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_FREE)) or (matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_ENDING)) then
        Exit;

      if qryChatRead[nFor].RecordCount > 0 then
      begin
        if vchat[0] = 'True' then
        begin
          tmrChatTimeoutCliente[nFor].Enabled := False;
          tmrChatTimeoutCliente[nFor].Interval := StrToInt(vchat[1]) * 1000;
          tmrChatTimeoutCliente[nFor].Enabled := True;
        end;

        sUpdateId := '';
        nCountMsg := 0;
        while not qryChatRead[nFor].Eof do
        begin
          Inc(nCountMsg);
          if nCountMsg = 1 then
            sUpdateId := qryChatRead[nFor].Fields[0].AsString
          else
            sUpdateId := sUpdateId + ',' + qryChatRead[nFor].Fields[0].AsString;

          sMensagem := ConvertCharToFE(qryChatRead[nFor].Fields[1].AsString);
          sHoraMensagem := qryChatRead[nFor].Fields[2].AsString;
          sTipoMensagem := qryChatRead[nFor].Fields[3].AsString;
          sNomeMensagem := qryChatRead[nFor].Fields[4].AsString;
          sIDUsuarioMensagem := qryChatRead[nFor].Fields[5].AsString;

          if (sTipoMensagem = 'C') or
             (sTipoMensagem = 'A') or
             (sTipoMensagem = 'CON') or
             (sTipoMensagem = 'SPR') or
             (sTipoMensagem = 'APR') then
          begin
            memChatHistory[nFor].SelStart := memChatHistory[nFor].GetTextLen;
            memChatHistory[nFor].SelAttributes.Style := [fsBold];

            if sTipoMensagem = 'C' then
            begin
              AtivaFlashWindow(True);
              if TMyChat.nChatAtivo <> nFor then
                imgChatCabecalho[nFor].Visible := True;

              memChatHistory[nFor].SelAttributes.Color := clNavy;
              memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + matrizchatsala[nFor, 2] + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
              memChatHistory[nFor].SelAttributes.Color := clNavy;

              dtvChatTempoInativoClienteIni[nFor] := Now
            end
            else
              if sTipoMensagem = 'A' then
              begin
                memChatHistory[nFor].SelAttributes.Color := clMaroon;
                memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                memChatHistory[nFor].SelAttributes.Color := clMaroon;

                dtvChatTempoInativoAgenteIni[nFor] := Now;
              end
              else
                if sTipoMensagem = 'CON' then
                begin
                  if TMyInfoLogin.sIDUsuario = sIDUsuarioMensagem then
                  begin
                    memChatHistory[nFor].SelAttributes.Color := clMaroon;
                    memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                    memChatHistory[nFor].SelAttributes.Color := clMaroon;

                    dtvChatTempoInativoAgenteIni[nFor] := Now;
                  end
                  else
                  begin
                    AtivaFlashWindow(True);
                    if TMyChat.nChatAtivo <> nFor then
                      imgChatCabecalho[nFor].Visible := True;

                    memChatHistory[nFor].SelAttributes.Color := clTeal;
                    memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                    memChatHistory[nFor].SelAttributes.Color := clTeal;
                  end;
                end
                else
                  if sTipoMensagem = 'SPR' then
                  begin
                    memChatHistory[nFor].SelAttributes.Color := clMaroon;
                    memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                    memChatHistory[nFor].SelAttributes.Color := clMaroon;
                  end
                  else
                    if sTipoMensagem = 'APR' then
                    begin
                      AtivaFlashWindow(True);
                      if TMyChat.nChatAtivo <> nFor then
                        imgChatCabecalho[nFor].Visible := True;

                      memChatHistory[nFor].SelAttributes.Color := clTeal;
                      memChatHistory[nFor].SelText := #13#10 + '(' + sHoraMensagem + ') ' + sNomeMensagem + APP_FRM_MAIN_CHAT_WROTE[ID_LANG] + #13#10;
                      memChatHistory[nFor].SelAttributes.Color := clTeal;
                    end;

            memChatHistory[nFor].SelAttributes.Style := [];
            memChatHistory[nFor].SelText := sMensagem + #13#10;
          end;

          qryChatRead[nFor].Next;
        end;//while not qryChatRead[nFor].Eof do

        qryChatRead[nFor].Active := False;
        qryChatRead[nFor].SQL.Clear;
        qryChatRead[nFor].SQL.Add('update easy_core_contatos_msg_hist set ');
        qryChatRead[nFor].SQL.Add('active = ' + QuotedStr('N'));
        qryChatRead[nFor].SQL.Add('where id in (' + sUpdateId + ')');
        qryChatRead[nFor].ExecSQL;

        try
           if chkChatRolagem.Checked then
             SendMessage(memChatHistory[nFor].Handle, WM_VSCROLL, SB_BOTTOM, 0);
        except
        end;
      end
      else// if qryChatRead[nFor].RecordCount > 0 then
      begin
        if vChatClassificando <> 1 then
        begin
          Inc(vchatverificaclientefechou[nFor]);
          if vchatverificaclientefechou[nFor] >= 4 then
          begin
            vchatverificaclientefechou[nFor] := 0;

            qryChatRead[nFor].Active := False;
            qryChatRead[nFor].SQL.Clear;
            qryChatRead[nFor].SQL.Add('select id ');
            qryChatRead[nFor].SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist ');
            qryChatRead[nFor].SQL.Add('where ');
            qryChatRead[nFor].SQL.Add('desconexao = ' + QuotedStr('C') + ' ');
            qryChatRead[nFor].SQL.Add('and id = ' + (matrizchatsala[nFor, 1]));
            qryChatRead[nFor].Active := True;

            if qryChatRead[nFor].RecordCount > 0 then
            begin
              if vChatClassificando <> 1 then
              begin
                vChatDesconexaoCliente := True;
                DesconectaChat(nFor, 0);
              end;
            end;
            qryChatRead[nFor].Active := False;
          end;
        end;
      end;// if qryChatRead[nFor].RecordCount > 0 then

      RecebeBlobChat(nFor);

      Break;
    end;//if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
  end; //for nFor := 0 to nChatDinamicosCriados do
end;}

procedure TfrmPrincipal.cboChatClassificaChange(Sender: TObject);
var
  nFor: Integer;
  nForSub: Integer;
begin
  cboChatClassificaSub.Items.Clear;
  cboChatClassificaSub.ItemIndex := -1;
  cboChatClassificaSub.Text := APP_FRM_MAIN_CHAT_SELECT_SUB_CLASS[ID_LANG];

  for nFor := 0 to vnumchatclassifica-1 do
  begin
    if matrizchatclassifica[1, nFor] = cboChatClassifica.Text then
    begin
      for nForSub := 0 to vnumchatclassificasub-1 do
      begin
        if matrizchatclassifica[0, nFor] = matrizchatclassificasub[2, nForSub] then
        begin
          cboChatClassificaSub.Items.Add(matrizchatclassificasub[1, nForSub]);
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.cboChatDefaultMsgChange(Sender: TObject);
var
  nFor: Integer;
  nForGrupo: Integer;
begin
  for nFor := 0 to vnumchatresp-1 do
  begin
    if matrizchatresposta[1, nFor] = cboChatGroup.Text then
    begin
      for nForGrupo := 0 to vnumchatrespgrupo-1 do
      begin
        if (matrizchatrespostagrupo[1, nForGrupo] = cboChatDefaultMsg.Text) and
           (matrizchatresposta[0, nFor] = matrizchatrespostagrupo[3, nForGrupo]) then
        begin
          memChatSend.Lines.Add(matrizchatrespostagrupo[2, nForGrupo]);
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.cboChatDefaultMsgClick(Sender: TObject);
begin
  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.cboChatGroupChange(Sender: TObject);
var
  nFor: Integer;
  nForGrupo: Integer;
begin
  cboChatDefaultMsg.Items.Clear;
  cboChatDefaultMsg.ItemIndex := -1;
  cboChatDefaultMsg.Text := APP_FRM_MAIN_CHAT_SELECT_ANSWER[ID_LANG];

  for nFor := 0 to vnumchatresp-1 do
  begin
    if matrizchatresposta[1, nFor] = cboChatGroup.Text then
    begin
      for nForGrupo := 0 to vnumchatrespgrupo-1 do
      begin
        if matrizchatresposta[0, nFor] = matrizchatrespostagrupo[3, nForGrupo] then
        begin
          cboChatDefaultMsg.Items.Add(matrizchatrespostagrupo[1, nForGrupo]);
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.cboChatGroupClick(Sender: TObject);
begin
  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.cboConfCallFilterChange(Sender: TObject);
var
  nFor: Integer;
begin
  txtConfCallFind.Text := '';

  cmdExecConf.Enabled := False;
  lstConfCallFind.Visible := False;
  lstConfCallFind.Items.Clear;

  case cboConfCallFilter.ItemIndex of
    0:
    begin
      for nFor := 0 to TMyConfCallClass.nQtdIntConfCall-1 do
        lstConfCallFind.Items.Add(TMyConfCallClass.matrizIntConfCall[nFor, 1]);

      txtConfCallFind.Enabled := True;
      lstConfCallFind.Visible := True;
    end;
    1:
    begin
      for nFor := 0 to TMyConfCallClass.nQtdExtConfCall-1 do
        lstConfCallFind.Items.Add(TMyConfCallClass.matrizExtConfCall[nFor, 1]);

      txtConfCallFind.Enabled := True;
      lstConfCallFind.Visible := True;
    end;
    else
    begin
      txtConfCallFind.Enabled := False;
    end;
  end;
end;

procedure TfrmPrincipal.cboFAQFilterChange(Sender: TObject);
var
  nFor: Integer;
begin
  txtFAQFind.Text := '';

  lstFAQFind.Visible := False;
  panFAQSub.Visible := False;

  lstFAQFind.Items.Clear;
  lstFAQFindSub.Items.Clear;

  case cboFAQFilter.ItemIndex of
    0:
    begin
      for nFor := 0 to TMyFaqClass.nQtdGrupoConf-1 do
        lstFAQFind.Items.Add(TMyFaqClass.matrizGrupoConf[nFor, 1]);

      txtFAQFind.Enabled := True;

      lstFAQFind.Visible := True;
      panFAQSub.Visible := True;

      lstFAQFind.Align := alTop;
      panFAQSub.Align  := alClient;

      lstFAQFind.Height    := 200;
    end;
    1:
    begin
      for nFor := 0 to TMyFaqClass.nQtdRespostaConf-1 do
        lstFAQFind.Items.Add(TMyFaqClass.matrizRespostaConf[nFor, 1]);

      txtFAQFind.Enabled := True;

      lstFAQFind.Visible := True;

      lstFAQFind.Align := alClient;
      panFAQSub.Align  := alCustom;
    end;
    else
    begin
      txtFAQFind.Enabled := False;
    end;
  end;
end;

procedure TfrmPrincipal.chkChatRolagemClick(Sender: TObject);
begin
  AtivaFlashWindow(False);
end;

procedure TfrmPrincipal.cmdChatClearClick(Sender: TObject);
begin
  AtivaFlashWindow(False);

  memChatSend.Lines.Clear;
  sChatTextToSend[TMyChat.nChatAtivo] := '';
end;

procedure TfrmPrincipal.cmdChatCopiarHistoricoClick(Sender: TObject);
begin
  Clipboard.asText := memChatHistory[vChatClassificandoSala].Text;
end;

procedure TfrmPrincipal.cmdChatHistoricoFecharClick(Sender: TObject);
begin
  tabChatHist.TabVisible := False;
  pgcBrowser.ActivePage := tabChat;

  memChatPesquisaHistorico.Lines.Clear;

  lblChatPesquisaHistoricoNome.Caption      := '';
  lblChatPesquisaHistoricoTelefone.Caption  := '';
  lblChatPesquisaHistoricoProtocolo.Caption := '';
  lblChatPesquisaHistoricoEMail.Caption     := '';
  lblChatPesquisaHistoricoSala.Caption      := '';

  cmdChatHistoricoGerarPDF.Enabled := False;
end;

procedure TfrmPrincipal.cmdChatHistoricoGerarPDFClick(Sender: TObject);
begin
  ImprimeChatHistorico(2,
                       memChatPesquisaHistorico.Lines.Count,
                       tabChatHist.Caption,
                       lblChatPesquisaHistoricoNome.Caption,
                       lblChatPesquisaHistoricoTelefone.Caption,
                       lblChatPesquisaHistoricoProtocolo.Caption,
                       lblChatPesquisaHistoricoEMail.Caption,
                       lblChatPesquisaHistoricoSala.Caption);
end;

procedure TfrmPrincipal.cmdChatPesquisarHistClick(Sender: TObject);
var
  sCamposPesquisa: String;
  sTemp: String;
begin
  if (Trim(txtChatHistoricoNome.Text) = '') and
     (Trim(txtChatHistoricoTelefone.Text) = '') and
     (Trim(txtChatHistoricoProtocolo.Text) = '') and
     (Trim(txtChatHistoricoEMail.Text) = '') and
     (Trim(txtChatHistoricoSala.Text) = '') and
     (txtChatHistoricoData.Date = 0) then
     Exit;

  datam.qryChatPesquisaHist.Active := False;
  datam.qryChatPesquisaHist.SQL.Clear;
  datam.qryChatPesquisaHist.SQL.Add('select ');
  datam.qryChatPesquisaHist.SQL.Add('h.id as Protocolo, ');
  datam.qryChatPesquisaHist.SQL.Add('date_format(h.datahora, "%d/%m/%Y") as Data, ');
  datam.qryChatPesquisaHist.SQL.Add('date_format(h.datahora, "%H:%i:%s %p") as Hora, ');
  datam.qryChatPesquisaHist.SQL.Add('h.cliente_nome as Nome, ');
  datam.qryChatPesquisaHist.SQL.Add('h.telefone as Telefone, ');
  datam.qryChatPesquisaHist.SQL.Add('h.cliente_mail as "E-Mail", ');
  datam.qryChatPesquisaHist.SQL.Add('c.descricao as Sala ');
  datam.qryChatPesquisaHist.SQL.Add('from ');
  datam.qryChatPesquisaHist.SQL.Add('easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist h ');
  datam.qryChatPesquisaHist.SQL.Add('left join easy_pabx_serv_fila_universal_ctr f on h.easy_pabx_serv_fila_universal_ctr_id = f.id ');
  datam.qryChatPesquisaHist.SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf c on c.easy_pabx_serv_fila_universal_ctr_id = f.id ');
  datam.qryChatPesquisaHist.SQL.Add('where ');
  datam.qryChatPesquisaHist.SQL.Add('h.easy_call_empresa_conf_id = ' + QuotedStr(TMyInfoLogin.sIDEmpresa) + ' and ');

  sCamposPesquisa := '';
  sTemp := '';

  if Trim(txtChatHistoricoNome.Text) <> '' then
    sCamposPesquisa := 'h.cliente_nome like ' + QuotedStr('%' + txtChatHistoricoNome.Text + '%');
  if Trim(txtChatHistoricoTelefone.Text) <> '' then
  begin
    sTemp := 'h.telefone like ' + QuotedStr('%' + txtChatHistoricoTelefone.Text + '%');
    if sCamposPesquisa = '' then
      sCamposPesquisa := sTemp
    else
      sCamposPesquisa := sCamposPesquisa + ' and ' + sTemp;
  end;
  if Trim(txtChatHistoricoProtocolo.Text) <> '' then
  begin
    sTemp := 'h.id = ' + txtChatHistoricoProtocolo.Text + ' ';
    if sCamposPesquisa = '' then
      sCamposPesquisa := sTemp
    else
      sCamposPesquisa := sCamposPesquisa + ' and ' + sTemp;
  end;
  if Trim(txtChatHistoricoEMail.Text) <> '' then
  begin
    sTemp := 'h.cliente_mail like ' + QuotedStr('%' + txtChatHistoricoEMail.Text + '%');
    if sCamposPesquisa = '' then
      sCamposPesquisa := sTemp
    else
      sCamposPesquisa := sCamposPesquisa + ' and ' + sTemp;
  end;
  if Trim(txtChatHistoricoSala.Text) <> '' then
  begin
    sTemp := 'c.descricao like ' + QuotedStr('%' + txtChatHistoricoSala.Text + '%');
    if sCamposPesquisa = '' then
      sCamposPesquisa := sTemp
    else
      sCamposPesquisa := sCamposPesquisa + ' and ' + sTemp;
  end;
  if txtChatHistoricoData.Date <> 0 then
  begin
    sTemp := 'date(h.datahora) = ' + QuotedStr(formatdatetime('yyyy-mm-dd', txtChatHistoricoData.date));
    if sCamposPesquisa = '' then
      sCamposPesquisa := sTemp
    else
      sCamposPesquisa := sCamposPesquisa + ' and ' + sTemp;
  end;
  datam.qryChatPesquisaHist.SQL.Add(sCamposPesquisa);
  datam.qryChatPesquisaHist.SQL.Add(' order by Protocolo desc');

  datam.qryChatPesquisaHist.Active := True;

  grdChatPesquisaHist.Height := grpChatPesquisaHist.Height - (cmdChatPesquisarHist.Top + cmdChatPesquisarHist.Height) - 8;
  grdChatPesquisaHist.Columns[0].Width := 50;
  grdChatPesquisaHist.Columns[1].Width := 65;
  grdChatPesquisaHist.Columns[2].Width := 70;
  grdChatPesquisaHist.Columns[3].Width := 125;
  grdChatPesquisaHist.Columns[4].Width := 100;
  grdChatPesquisaHist.Columns[5].Width := 150;
  grdChatPesquisaHist.Columns[6].Width := 200;
  grdChatPesquisaHist.Visible := True;
end;

procedure TfrmPrincipal.cmdChatSendClick(Sender: TObject);
var
  sMensagem: String;
  sSendTo: String;
begin
  AtivaFlashWindow(False);

  if Trim(memChatSend.Text) = '' then
    Exit;

  //Habilita abrir janela do corretor antes de enviar a mensagem
  //AddictSpell.CheckWinControl(memChatSend, ctAll);

  sMensagem := ConvertCharToDB(memChatSend.Lines.GetText);
  sMensagem := StringReplace(TrimRight(sMensagem), chr(13) + chr(10), chr(13) + '', [rfReplaceAll, rfIgnoreCase]);

  memChatSend.Lines.Clear;
  sChatTextToSend[TMyChat.nChatAtivo] := '';

  if matrizchatsala[TMyChat.nChatAtivo, 20] = 'True' then
  begin
    case radChatSendTo.ItemIndex of
      0: sSendTo := 'A';
      1: sSendTo := 'SPR';
      2: sSendTo := 'CON';
    end;
  end
  else
    sSendTo := 'A';

  EnviaMSGChat(TMyChat.nChatAtivo, sMensagem, sSendTo);
end;

procedure TfrmPrincipal.cmdCreateConfClick(Sender: TObject);
begin
  if TMyConfCallClass.bInConfCall = True then
    MontaConferencia(1);
end;

procedure TfrmPrincipal.tmrAudioRingTimer(Sender: TObject);
begin
  tmrAudioRing.Enabled := False;

  TMyVaxIncomingCallParam.nCurrentDevice := 0;
  PlayAudioRing(TMyVaxIncomingCallParam.nCurrentDevice);
end;

procedure TfrmPrincipal.tmrChatAlertaTimer(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      tmrChatAlerta[nFor].Enabled := False;

      case StrToInt(matrizchatsala[nFor, 0]) of
        CHAT_STATUS_ALERT_1:
        begin
          //Chat em conversacao - Alerta 1
          matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_ALERT_2);
          lblChatCabecalho[nFor].Font.Color := clBlack;
          lblChatCabecalho[nFor].Color := clSkyBlue;
          tmrChatAlerta[nFor].Enabled := True;
        end;

        CHAT_STATUS_ALERT_2:
        begin
          //Chat em conversacao - Alerta 2
          matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_ALERT_3);
          lblChatCabecalho[nFor].Font.Color := clWhite;
          lblChatCabecalho[nFor].Color := clTeal;
          tmrChatAlerta[nFor].Enabled := True;
        end;

        CHAT_STATUS_ALERT_3:
        begin
          //Chat em conversacao - Alerta 3
          matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_ALERT_4);
          lblChatCabecalho[nFor].Font.Color := clBlack;
          lblChatCabecalho[nFor].Color := clSkyBlue;
          tmrChatAlerta[nFor].Enabled := True;
        end;

        CHAT_STATUS_ALERT_4:
        begin
          //Chat em conversacao - Alerta 4
          matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_ALERT_5);
          lblChatCabecalho[nFor].Font.Color := clWhite;
          lblChatCabecalho[nFor].Color := clTeal;
          tmrChatAlerta[nFor].Enabled := True;
        end;

        CHAT_STATUS_ALERT_5:
        begin
          //Chat em conversacao - Alerta 5
          matrizchatsala[nFor, 0] := IntToStr(CHAT_STATUS_INUSE);
          lblChatCabecalho[nFor].Font.Color := clBlack;
          lblChatCabecalho[nFor].Color := clSkyBlue;
        end;
      end;
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.tmrChatTimeoutClienteTimer(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      if vChatClassificando <> 1 then
      begin
        tmrChatTimeoutCliente[nFor].Enabled := False;
        DesconectaChat(nFor, 1);
      end
      else
      begin
        tmrChatTimeoutCliente[nFor].Enabled := False;
        tmrChatTimeoutCliente[nFor].Interval := 5000;
        tmrChatTimeoutCliente[nFor].Enabled := True;
      end;
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.tmrChatTempoInativoAgenteTimer(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      lblChatTempoInativoAgenteDesc[nFor].Caption := TimeToStr(Now - dtvChatTempoInativoAgenteIni[nFor]);
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.tmrChatTempoInativoClienteTimer(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      lblChatTempoInativoClienteDesc[nFor].Caption := TimeToStr(Now - dtvChatTempoInativoClienteIni[nFor]);
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.tmrChatTempoTotalTimer(Sender: TObject);
var
  nFor: Integer;
begin
  for nFor := 0 to nChatDinamicosCriados do
  begin
    if TTimer(Sender).Tag = nFor then
    begin
      lblChatTempoTotalDesc[nFor].Caption := TimeToStr(Now - dtvChatTempoTotalIni[nFor]);
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.DesconectaChat(nSalaChat: Integer; nTipo: Integer);
var
  ind: Integer;
  nFor: Integer;
begin
  if (matrizchatsala[nSalaChat, 0] = IntToStr(CHAT_STATUS_FREE)) or (matrizchatsala[nSalaChat, 0] = IntToStr(CHAT_STATUS_ENDING)) then
    Exit;

  vChatClassificando := 1;
  vChatClassificandoSala := nSalaChat;
  vChatClassificandoTipo := nTipo;

  tmrChatAlerta[nSalaChat].Enabled := False;
  tmrChatRead[nSalaChat].Enabled := False;
  tmrChatTimeoutCliente[nSalaChat].Enabled := False;
  tmrChatTempoInativoAgente[nSalaChat].Enabled := False;
  tmrChatTempoInativoCliente[nSalaChat].Enabled := False;
  tmrChatTempoTotal[nSalaChat].Enabled := False;

  if nTipo = 1 then
    if vchat[0] = 'True' then
      EnviaMSGChat(nSalaChat, PChar(vchat[2]), 'A');

  matrizchatsala[nSalaChat, 0] := IntToStr(CHAT_STATUS_ENDING);//Chat em classificacao

  memChatClassificaObs.Lines.Clear;

  sChatTextToSend[nSalaChat] := '';

  for nFor := 0 to nChatDinamicosCriados do
  begin
    panChatDinamico[nFor].BorderStyle := bsNone;
    memChatHistory[nFor].Visible := False;
  end;

  stbChat.Panels[0].Text := APP_FRM_MAIN_CHAT_NAME[ID_LANG];
  stbChat.Panels[1].Text := APP_FRM_MAIN_CHAT_ROOM[ID_LANG];
  stbChat.Panels[0].Width := panChatHistorico.Width + 2;

  panChatHistorico.Visible := False;
  panChatMessages.Visible := True;

  TMyChat.nChatAtivo := -1;

  lblChatCabecalho[nSalaChat].Caption := APP_FRM_MAIN_CHAT_CLASSIFYING[ID_LANG];
  lblChatCabecalho[nSalaChat].Color := clRed;
  lblChatNomeDesc[nSalaChat].Caption := '';

  imgChatCabecalho[nSalaChat].Visible := False;

  lblChatNome[nSalaChat].Visible                    := False;
  lblChatNomeDesc[nSalaChat].Visible                := False;
  lblChatTempoInativoAgente[nSalaChat].Visible      := False;
  lblChatTempoInativoAgenteDesc[nSalaChat].Visible  := False;
  lblChatTempoInativoCliente[nSalaChat].Visible     := False;
  lblChatTempoInativoClienteDesc[nSalaChat].Visible := False;
  lblChatTempoTotal[nSalaChat].Visible              := False;
  lblChatTempoTotalDesc[nSalaChat].Visible          := False;
  imgChatEncerrar[nSalaChat].Visible                := False;
  imgChatMore[nSalaChat].Visible                    := False;
  imgChatDiscar[nSalaChat].Visible                  := False;

  dtvChatTempoPosAtendimento[nSalaChat] := Now;

  grpChatPesquisaHist.Visible := False;

  if TMyChat.bAutoClassificacao then
  begin
    ClassificaChatAuto(False);
    Exit;
  end;

  grpChatClassificacao.Visible := True;
  grpChatClassificacao.Caption := APP_FRM_MAIN_CHAT_TITLE_CLASSIFYING[ID_LANG] + IntToStr(nSalaChat) + ' ]';

  //Update Dash Board
  qryChatDesconecta[nSalaChat].Active := False;
  qryChatDesconecta[nSalaChat].SQL.Clear;
  qryChatDesconecta[nSalaChat].SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
  qryChatDesconecta[nSalaChat].SQL.Add('set tipo = ' + QuotedStr('CHAT') + ', ');
  qryChatDesconecta[nSalaChat].SQL.Add('sala' + IntToStr(nSalaChat+1) + '_act = ' + QuotedStr('N') + ', ');
  qryChatDesconecta[nSalaChat].SQL.Add('sala' + IntToStr(nSalaChat+1) + '_ctr_id = ' + QuotedStr('') + ' ');
  qryChatDesconecta[nSalaChat].SQL.Add('where ');
  qryChatDesconecta[nSalaChat].SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  qryChatDesconecta[nSalaChat].ExecSQL;
  qryChatDesconecta[nSalaChat].Active := False;

  //Chat Classifica
  qryChatDesconecta[nSalaChat].Active := False;
  qryChatDesconecta[nSalaChat].SQL.Clear;
  qryChatDesconecta[nSalaChat].SQL.Add('select ');
  qryChatDesconecta[nSalaChat].SQL.Add('c.id as class_id, ');
  qryChatDesconecta[nSalaChat].SQL.Add('c.descricao ');
  qryChatDesconecta[nSalaChat].SQL.Add('from ');
  qryChatDesconecta[nSalaChat].SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf c ');
  qryChatDesconecta[nSalaChat].SQL.Add('left join easy_pabx_serv_fila_universal_has_classificacao a on a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
  qryChatDesconecta[nSalaChat].SQL.Add('left join easy_pabx_serv_fila_universal_ctr f on a.easy_pabx_serv_fila_universal_ctr_id = f.id ');
  qryChatDesconecta[nSalaChat].SQL.Add('where ');
  qryChatDesconecta[nSalaChat].SQL.Add('a.active = ' + QuotedStr('Y'));
  qryChatDesconecta[nSalaChat].SQL.Add('and c.active = ' + QuotedStr('Y'));
  qryChatDesconecta[nSalaChat].SQL.Add('and a.disp_chat = ' + QuotedStr('Y'));
  qryChatDesconecta[nSalaChat].SQL.Add('and c.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa);
  qryChatDesconecta[nSalaChat].SQL.Add('group by c.id');
  qryChatDesconecta[nSalaChat].SQL.Add('order by c.descricao asc ');
  qryChatDesconecta[nSalaChat].Active := True;

  cboChatClassifica.Items.Clear;
  cboChatClassifica.ItemIndex := -1;
  cboChatClassifica.Text := APP_FRM_MAIN_CHAT_SELECT_CLASS[ID_LANG];

  vnumchatclassifica := qryChatDesconecta[nSalaChat].RecordCount;
  SetLength(matrizchatclassifica, 2, vnumchatclassifica);
  ind := 0;
  while not qryChatDesconecta[nSalaChat].Eof do
  begin
    matrizchatclassifica[0, ind] := qryChatDesconecta[nSalaChat].Fields[0].AsString;
    matrizchatclassifica[1, ind] := qryChatDesconecta[nSalaChat].Fields[1].AsString;

    cboChatClassifica.Items.Add(matrizchatclassifica[1, ind]);
    Inc(ind);
    qryChatDesconecta[nSalaChat].Next;
  end; //while not qryChatDesconecta[nSalaChat].Eof do

  qryChatDesconecta[nSalaChat].Active := False;
  qryChatDesconecta[nSalaChat].SQL.Clear;
  qryChatDesconecta[nSalaChat].SQL.Add('select ');
  qryChatDesconecta[nSalaChat].SQL.Add('s.id as subclass_id, ');
  qryChatDesconecta[nSalaChat].SQL.Add('s.descricao, ');
  qryChatDesconecta[nSalaChat].SQL.Add('a.easy_pabx_serv_fila_universal_classificacao_conf_id ');
  qryChatDesconecta[nSalaChat].SQL.Add('from ');
  qryChatDesconecta[nSalaChat].SQL.Add('easy_pabx_serv_fila_universal_classificacao_sub_conf s ');
  qryChatDesconecta[nSalaChat].SQL.Add('left join easy_pabx_serv_fila_universal_classificacao_has_sub a on a.easy_pabx_serv_fila_universal_classificacao_sub_conf_id = s.id ');
  qryChatDesconecta[nSalaChat].SQL.Add('left join easy_pabx_serv_fila_universal_classificacao_conf c on a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
  qryChatDesconecta[nSalaChat].SQL.Add('where ');
  qryChatDesconecta[nSalaChat].SQL.Add('s.active = ' + QuotedStr('Y'));
  qryChatDesconecta[nSalaChat].SQL.Add('and a.active = ' + QuotedStr('Y'));
  qryChatDesconecta[nSalaChat].SQL.Add('and s.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa);
  qryChatDesconecta[nSalaChat].Active := True;

  cboChatClassificaSub.Items.Clear;
  cboChatClassificaSub.ItemIndex := -1;
  cboChatClassificaSub.Text := APP_FRM_MAIN_CHAT_SELECT_SUB_CLASS[ID_LANG];

  vnumchatclassificasub := qryChatDesconecta[nSalaChat].RecordCount;
  SetLength(matrizchatclassificasub, 3, vnumchatclassificasub);
  ind := 0;
  while not qryChatDesconecta[nSalaChat].Eof do
  begin
    matrizchatclassificasub[0, ind] := qryChatDesconecta[nSalaChat].Fields[0].AsString;
    matrizchatclassificasub[1, ind] := qryChatDesconecta[nSalaChat].Fields[1].AsString;
    matrizchatclassificasub[2, ind] := qryChatDesconecta[nSalaChat].Fields[2].AsString;

    Inc(ind);
    qryChatDesconecta[nSalaChat].Next;
  end;

  qryChatDesconecta[nSalaChat].Active := False;
  //Chat Classifica
end;

procedure TfrmPrincipal.LimpaChatPosClassificacao(nSalaChat: Integer);
var
  nFor: Integer;
begin
  memChatHistory[nSalaChat].Lines.Clear;

  if frmprincipal.TMyAppStatus.sTipoEvento = APP_EVENT_TYPE_PAUSE[ID_LANG] then
    lblChatCabecalho[nSalaChat].Caption := APP_FRM_MAIN_CHAT_STATUS_PAUSE[ID_LANG]
  else
    lblChatCabecalho[nSalaChat].Caption := APP_FRM_MAIN_CHAT_AVAILABLE[ID_LANG];

  lblChatCabecalho[nSalaChat].Font.Color := clBlack;
  lblChatCabecalho[nSalaChat].Color := clSkyBlue;

  grpChatPesquisaHist.Visible := True;
  grpChatClassificacao.Visible := False;
  grpChatClassificacao.Caption := APP_FRM_MAIN_CHAT_TITLE_CLASS[ID_LANG];

  matrizchatsala[nSalaChat, 0] := IntToStr(CHAT_STATUS_FREE);//Chat livre
  matrizchatsala[nSalaChat, 1] := '';
  matrizchatsala[nSalaChat, 2] := '';
  matrizchatsala[nSalaChat, 3] := '';
  matrizchatsala[nSalaChat, 4] := '';
  matrizchatsala[nSalaChat, 5] := '';
  matrizchatsala[nSalaChat, 6] := '';
  matrizchatsala[nSalaChat, 7] := '';
  matrizchatsala[nSalaChat, 8] := '';
  matrizchatsala[nSalaChat, 9] := '';
  matrizchatsala[nSalaChat, 10] := '';
  matrizchatsala[nSalaChat, 11] := '';
  matrizchatsala[nSalaChat, 12] := '';
  matrizchatsala[nSalaChat, 13] := '';
  matrizchatsala[nSalaChat, 14] := '';
  matrizchatsala[nSalaChat, 15] := '';
  matrizchatsala[nSalaChat, 16] := '';
  matrizchatsala[nSalaChat, 17] := '';
  matrizchatsala[nSalaChat, 18] := '';
  matrizchatsala[nSalaChat, 19] := 'True';
  matrizchatsala[nSalaChat, 20] := 'False';

  panChatDinamico[nSalaChat].ShowHint := False;
  panChatDinamico[nSalaChat].Hint     := '';

  panChatMessages.Visible := False;
  panChatHistorico.Visible := True;

  for nFor := 0 to nChatDinamicosCriados do
  begin
    if matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE) then
    begin
      txtChatHistoricoNome.Text := '';
      txtChatHistoricoTelefone.Text := '';
      txtChatHistoricoProtocolo.Text := '';
      txtChatHistoricoEMail.Text := '';
      txtChatHistoricoSala.Text := '';
      txtChatHistoricoData.Date := 0;
      grdChatPesquisaHist.Visible := False;

      panChatDinamicoClick(panChatDinamico[nFor]);
      Break;
    end;
  end;

  vChatClassificando := 0;
  vChatClassificandoSala := -1;
  vChatClassificandoTipo := -1;
  vChatDesconexaoCliente := False;
  vChatXFer := False;
  vChatXFerDst := '';
end;

procedure TfrmPrincipal.EnviaMSGChat(nSalaChat: Integer; sMensagem: String; sMsgTo: String);
begin
  if nSalaChat <> -1 then
  begin
    if (matrizchatsala[nSalaChat, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nSalaChat, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
    begin
      qryChatWrite[nSalaChat].Active := False;
      qryChatWrite[nSalaChat].SQL.Clear;
      qryChatWrite[nSalaChat].SQL.Add('insert into easy_core_contatos_msg_hist ');
      qryChatWrite[nSalaChat].SQL.Add('(cdata,');
      qryChatWrite[nSalaChat].SQL.Add('tipo,');
      qryChatWrite[nSalaChat].SQL.Add('usou_mensagem_auto_act,');
      qryChatWrite[nSalaChat].SQL.Add('msg,');
      qryChatWrite[nSalaChat].SQL.Add('easy_work_colaborador_conf_id,');
      qryChatWrite[nSalaChat].SQL.Add('easy_core_contatos_ctrl_id,');
      qryChatWrite[nSalaChat].SQL.Add('waittime_ag,');
      qryChatWrite[nSalaChat].SQL.Add('waittime_cl) ');
      qryChatWrite[nSalaChat].SQL.Add('values ');
      qryChatWrite[nSalaChat].SQL.Add('(now(),');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr(sMsgTo) + ',');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr('N') + ',');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr(sMensagem) + ',');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr(TMyInfoLogin.sIDUsuario) + ',');
      qryChatWrite[nSalaChat].SQL.Add((matrizchatsala[nSalaChat, 1]) + ',');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr(TimeToStr(Now - dtvChatTempoInativoAgenteIni[nSalaChat])) + ',');
      qryChatWrite[nSalaChat].SQL.Add(QuotedStr(TimeToStr(Now - dtvChatTempoInativoClienteIni[nSalaChat])) + ')');
      qryChatWrite[nSalaChat].ExecSQL;
      qryChatWrite[nSalaChat].Active := False;
    end;
  end;
end;

procedure TfrmPrincipal.RecebeBlobChat(nSalaChat: Integer);
var
  sDirBlob: String;
  nIdBlob: Integer;
  sHoraBlob: String;
  sMensagem: String;
begin
  qryChatBlobGet[nSalaChat].Active := False;
  qryChatBlobGet[nSalaChat].SQL.Clear;
  qryChatBlobGet[nSalaChat].SQL.Add('select id, fname, descricao, date_format(now(), "%H:%i:%s %p") as data');
  qryChatBlobGet[nSalaChat].SQL.Add('from easy_core_contatos_msg_arq_hist ');
  qryChatBlobGet[nSalaChat].SQL.Add('where easy_core_contatos_ctrl_id = ' + (matrizchatsala[nSalaChat, 1]));
  qryChatBlobGet[nSalaChat].SQL.Add('and active = ' + QuotedStr('Y'));
  qryChatBlobGet[nSalaChat].Active := True;

  if qryChatBlobGet[nSalaChat].RecordCount > 0 then
  begin
    try
      sDirBlob := TMyChat.sDirBlobReceived + matrizchatsala[nSalaChat, 1] + '\';
      CreateDir(sDirBlob);
      sDirBlob := sDirBlob + qryChatBlobGet[nSalaChat].FieldByName('arquivo_nome').AsString;
      nIdBlob := qryChatBlobGet[nSalaChat].FieldByName('id').AsInteger;
      sHoraBlob := qryChatBlobGet[nSalaChat].FieldByName('data').AsString;
      TBlobField(qryChatBlobGet[nSalaChat].FieldByName('arquivo')).SaveToFile(sDirBlob);

      qryChatBlobGet[nSalaChat].Active := False;
      qryChatBlobGet[nSalaChat].SQL.Clear;
      qryChatBlobGet[nSalaChat].SQL.Add('update easy_core_contatos_msg_arq_hist set ');
      qryChatBlobGet[nSalaChat].SQL.Add('active = ' + QuotedStr('N'));
      qryChatBlobGet[nSalaChat].SQL.Add('where id = ' + IntToStr(nIdBlob));
      qryChatBlobGet[nSalaChat].ExecSQL;
      qryChatBlobGet[nSalaChat].Active := False;

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
         if chkChatRolagem.Checked then
           SendMessage(memChatHistory[nSalaChat].Handle, WM_VSCROLL, SB_BOTTOM, 0);
      except
      end;
    except
    end;
  end;
end;

{
procedure TfrmPrincipal.EnviaBlobChat(nSalaChat: Integer);
begin
  qryChatBlobGet[nSalaChat].Active := False;
  qryChatBlobGet[nSalaChat].SQL.Clear;
  qryChatBlobGet[nSalaChat].SQL.Add('insert into easy_rept_pabx_serv_fila_universal_chat_arquivos_hist ');
  qryChatBlobGet[nSalaChat].SQL.Add('(arquivo, arquivo_tipo, tipo, easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist_id) ');
  qryChatBlobGet[nSalaChat].SQL.Add('values ');
  qryChatBlobGet[nSalaChat].SQL.Add('(:o_arquivo, :o_mime, "A", 0)');
  qryChatBlobGet[nSalaChat].Params.Clear;
  qryChatBlobGet[nSalaChat].Params.CreateParam(ftBlob, 'o_arquivo', ptInput);
  qryChatBlobGet[nSalaChat].Params.CreateParam(ftBlob, 'o_mime', ptInput);
  qryChatBlobGet[nSalaChat].ParamByName('o_arquivo').LoadFromFile('C:\...\arquivo.jpg', ftBlob);
  qryChatBlobGet[nSalaChat].ParamByName('o_mime').AsString := GetMIMEtype('C:\...\arquivo.jpg');
  qryChatBlobGet[nSalaChat].ExecSQL;
  qryChatBlobGet[nSalaChat].Active := False;
end;
}

function TfrmPrincipal.LimpaDirBlobChatGeral(const sDiretorio: String): Boolean;
var
  sr: TSearchRec;
  FullName: string;
begin
  Result := True;
  if (FindFirst(sDiretorio + '\*.*', faAnyFile, sr) = 0) then
    try
      repeat
        FullName := IncludeTrailingPathDelimiter(sDiretorio) + sr.Name;
        if (sr.Name <> '.') and (sr.Name <> '..') then
        begin
          if ((sr.Attr and faDirectory) = 0) then
            Result := DeleteFile(FullName)
          else
            Result := LimpaDirBlobChatGeral(FullName);
        end;
      until (FindNext(sr) <> 0) or not Result;
    finally
      FindClose(sr);
    end;
    Result := Result and DirectoryExists(sDiretorio) and LimpaDirBlobChatExt(sDiretorio);
end;

function TfrmPrincipal.LimpaDirBlobChatExt(const sDiretorio: String): Boolean;
begin
  Result := True;
  if sDiretorio <> TMyChat.sDirBlobReceived then
    RemoveDir(sDiretorio);
end;

procedure TfrmPrincipal.CriaConferencia(nNumLinha: Integer);
var
  ToConf: String;
begin
  if not TMyAppStatus.bAtendido then
  begin
    mensagem(APP_MB_ERR_CANNOT_CONF_NOCALL[ID_LANG]);
    Exit;
  end;

  if Trim(TMyConfCallClass.sNum2Dial) = '' then
  begin
    mensagem(APP_MB_ERR_CANNOT_CONF_NONUMBER[ID_LANG]);
    Exit;
  end;

  if Abrelinha(1) = False then
  begin
    Application.MessageBox(PChar(APP_MB_ERR_OPEN_LINE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    Exit;
  end;

  if TMyConfCallClass.bExterno then
    ToConf := 'sip:' + '84' + TMyConfCallClass.sNum2Dial + '@' + TMyInfoLogin.sIPPABX
  else
    ToConf := 'sip:' + '86' + TMyConfCallClass.sNum2Dial + '@' + TMyInfoLogin.sIPPABX;
  If Vax.Connect(1, ToConf, GetSelectedAudioIn(), GetSelectedAudioOut()) = False Then
  begin
    ErrorMessages();
    Exit;
  end;

  TMyConfCallClass.bInConfCall := True;
  cmdExecConf.Enabled := False;
end;

procedure TfrmPrincipal.MontaConferencia(nNumLinha: Integer);
var
  vArqIniConf: TiniFile;
  nShowDigits: Integer;
  nForLineCount : Integer;
begin
  if (TMyConfCallClass.bInConfCall = False) or (nNumLinha <> 1) then
    Exit;

  vArqIniConf := tIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  nShowDigits := vArqIniConf.ReadInteger('CONF', 'SHOWDIGITS', 0);
  vArqIniConf.free;

  grpConfDigitsL0.Visible := False;
  grpConfDigitsL1.Visible := False;

  if nShowDigits = 1 then
  begin
    memConfDigitsL0.Lines.Clear;
    memConfDigitsL1.Lines.Clear;

    grpConfDigitsL0.Visible := True;
    grpConfDigitsL1.Visible := True;
  end;

  cmdCreateConf.Enabled := False;
  cmdDestroyConf.Enabled := True;

  for nForLineCount := 0 to 1 do
    If vax.IsLineHold(nForLineCount) Then
      vax.UnHoldLine(nForLineCount);
end;

procedure TfrmPrincipal.DesmontaConferencia(nNumLinha: Integer);
begin
  if vax.IsLineBusy(nNumLinha) then
    If Vax.Disconnect(nNumLinha) = False Then
      ErrorMessages();

  vax.CloseLine(nNumLinha);

  TMyConfCallClass.bInConfCall := False;
  cmdExecConf.Enabled := False;
  cmdCreateConf.Enabled := False;
  cmdDestroyConf.Enabled := False;

  grpConfDigitsL0.Visible := False;
  grpConfDigitsL1.Visible := False;
end;

procedure TfrmPrincipal.CriaConsulta(nNumLinha: Integer; nIdRota: Integer; sNumDest: String);
var
  ToCons: String;
begin
  if not TMyAppStatus.bAtendido then
  begin
    mensagem(APP_MB_ERR_CANNOT_CONS_NOCALL[ID_LANG]);
    Exit;
  end;

  if Trim(sNumDest) = '' then
  begin
    mensagem(APP_MB_ERR_CANNOT_CONS_NONUMBER[ID_LANG]);
    Exit;
  end;

  if Abrelinha(1) = False then
  begin
    Application.MessageBox(PChar(APP_MB_ERR_OPEN_LINE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    Exit;
  end;

  TMyConsultaCallClass.bInConsCall := True;
  try
    TMyConsultaCallClass.nLastDest := TfrmXFer(framebar.items[1].frame).cboXFer.ItemIndex;
    TfrmXFer(framebar.items[1].frame).btnXFer.Enabled := False;
    TfrmXFer(framebar.items[1].frame).cboXFer.Enabled := False;
  except
  end;

  ToCons := 'sip:' + IntToStr(nIdRota) + sNumDest + '@' + TMyInfoLogin.sIPPABX;
  If Vax.Connect(1, ToCons, GetSelectedAudioIn(), GetSelectedAudioOut()) = False Then
  begin
    TMyConsultaCallClass.bInConsCall := False;
    ErrorMessages();
    Exit;
  end;

  vax.HoldLine(0);
end;

procedure TfrmPrincipal.DesmontaConsulta(nNumLinha: Integer);
begin
  if vax.IsLineBusy(nNumLinha) then
    If Vax.Disconnect(nNumLinha) = False Then
      ErrorMessages();

  vax.CloseLine(nNumLinha);

  lbstatus.Caption := TMyConsultaCallClass.sLastAppState;

  TMyConsultaCallClass.bInConsCall := False;
  try
    TfrmXFer(framebar.items[1].frame).btnXFer.Enabled := True;
    TfrmXFer(framebar.items[1].frame).cboXFer.Enabled := True;
  except
  end;
end;

procedure TfrmPrincipal.CriaXFerAssistida(nNumLinha: Integer; nIdRota: Integer; sNumDest: String);
var
  ToCons: String;
begin
  if not TMyAppStatus.bAtendido then
  begin
    mensagem(APP_MB_ERR_CANNOT_XFER_NOCALL[ID_LANG]);
    Exit;
  end;

  if Trim(sNumDest) = '' then
  begin
    mensagem(APP_MB_ERR_CANNOT_XFER_NONUMBER[ID_LANG]);
    Exit;
  end;

  if Abrelinha(1) = False then
  begin
    Application.MessageBox(PChar(APP_MB_ERR_OPEN_LINE[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    Exit;
  end;

  TMyAtxferCallClass.bInAtxferCall := True;
  try
    TMyAtxferCallClass.nLastDest := TfrmXFer(framebar.items[1].frame).cboXFer.ItemIndex;
    TfrmXFer(framebar.items[1].frame).cboXFer.Enabled := False;
    TfrmXFer(framebar.items[1].frame).btnXFer.Caption := APP_FRM_XFER_XFER1[ID_LANG];
  except
  end;

  ToCons := 'sip:' + IntToStr(nIdRota) + sNumDest + '@' + TMyInfoLogin.sIPPABX;
  If Vax.Connect(1, ToCons, GetSelectedAudioIn(), GetSelectedAudioOut()) = False Then
  begin
    TMyAtxferCallClass.bInAtxferCall := False;
    ErrorMessages();
    Exit;
  end;

  {TMyAtxferCallClass.sLastState := lbstatus.Caption;
  lbstatus.Caption := APP_FRM_MAIN_STATUS_DIALING[ID_LANG];}

  vax.HoldLine(0);
end;

procedure TfrmPrincipal.ExecutaXFerAssistida(nNumLinha1: Integer; nNumLinha2: Integer);
begin
  vax.JoinTwoLine(nNumLinha1, nNumLinha2);
  TMyAtxferCallClass.bInAtxferCall := False;
  TfrmXFer(framebar.items[1].frame).cboXFer.Enabled := True;
  TfrmXFer(framebar.items[1].frame).btnXFer.Caption := APP_FRM_XFER_XFER1[ID_LANG];
end;

procedure TfrmPrincipal.DesmontaXFerAssistida(nNumLinha: Integer);
begin
  if vax.IsLineBusy(nNumLinha) then
    If Vax.Disconnect(nNumLinha) = False Then
      ErrorMessages();

  vax.CloseLine(nNumLinha);

  TMyAtxferCallClass.bInAtxferCall := False;
  try
    TfrmXFer(framebar.items[1].frame).btnXFer.Enabled := True;
    TfrmXFer(framebar.items[1].frame).cboXFer.Enabled := True;

    if TfrmXFer(framebar.items[1].frame).tabxfer.TabIndex = 2 then
      TfrmXFer(framebar.items[1].frame).btnXFer.Caption := APP_FRM_DIALPAD_DIAL[ID_LANG];

    TfrmXFer(framebar.items[1].frame).cboXFer.ItemIndex := -1;
  except
  end;
end;

procedure TfrmPrincipal.AtivaFlashWindow(bAtiva: Boolean);
begin
  if bAtiva = True then
  begin
    try
      FlashWindow(Application.Handle, True);
    Except
    end;
    vFlashWindowActive := 2;
  end
  else
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

procedure TfrmPrincipal.AtendeChamada;
var
  sTextoHint: String;
  nFor: Integer;
begin
  if IsIconic(Application.Handle) then
  begin
    Application.Restore;
    Application.BringToFront;
  end;

  if TMyVaxIncomingCallParam.bAutoAnswer = False then
  begin
    TMyVaxIncomingCallParam.bIncomingCall := False;
    try
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_DIAL[ID_LANG];
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := TMyInfoLogin.bDialPad;
    except
      try
        framebar.OpenItem(0, True);
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Caption := APP_FRM_DIALPAD_DIAL[ID_LANG];
        Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := TMyInfoLogin.bDialPad;
      except
      end;
    end;
  end;

  if vax.IsLineBusy(0) = False then
  begin
    if Vax.AcceptCall(0, TMyVaxIncomingCallParam.CallId, GetSelectedAudioIn(), GetSelectedAudioOut()) = False Then
    begin
      ErrorMessages();
      exit;
    end;

    vax.EnableDonotDisturb;
    LogCallStep('log_dnd_on_act', 'AtendeChamada');

    tmativo.enabled := false;
    tmlogoff.enabled := false;

    try
      ForceForegroundNoActivate;
    except
    end;

    btnDesligar.Enabled := True;

    TMyAppStatus.bAtendido := true;
    LogCallStep('log_answer_act', 'Antes processacallername - Receptivo;Telefone=' + TMyAppStatus.sNumero + ';Uid=' + TMyVaxIncomingCallParam.sUniqueID);
    tmrVerificaLoginAtivo.Enabled := False;

    if framebar.Items[0].State = stOpened then
       Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := False;

    if framebar.Items[2].State = stOpened then
      Tfrmpausa(framebar.items[2].frame).btnPausa.Caption := APP_FRM_PAUSE_SCHED_PAUSE[ID_LANG];

    actlogoff.Enabled := False;

    tmrDuracao.Enabled := true;

    TMyAppStatus.sNumero := TMyVaxIncomingCallParam.username;

    TMyVaxIncomingCallParam.sTipoLigacao  := processacallername(TMyVaxIncomingCallParam.DisplayName, 1);

    TMyVaxIncomingCallParam.sUniqueID     := processacallername(TMyVaxIncomingCallParam.displayname, 3);
    TMyVaxIncomingCallParam.sTipoOperacao := processacallername(TMyVaxIncomingCallParam.displayname, 4);
    TMyVaxIncomingCallParam.sCodTipo      := processacallername(TMyVaxIncomingCallParam.displayname, 5);
    TMyVaxIncomingCallParam.sFila         := processacallername(TMyVaxIncomingCallParam.displayname, 6);
    TMyVaxIncomingCallParam.sFilaDSC      := processacallername(TMyVaxIncomingCallParam.displayname, 7);
    TMyVaxIncomingCallParam.sProtocolo    := processacallername(TMyVaxIncomingCallParam.displayname, 8);
    for nFor := 0 to frmprincipal.vnumloja-1 do
    begin
      if processacallername(TMyVaxIncomingCallParam.displayname, 9) = frmprincipal.matrizloja[0, nFor] then
      begin
        TMyVaxIncomingCallParam.sNomeLoja := frmprincipal.matrizloja[1, nFor];
        break;
      end;
    end;

    for nFor := 1 to 10 do
      TMyVaxIncomingCallParam.sCampo[nFor] := processacallername(TMyVaxIncomingCallParam.displayname, nFor + 9);

    Integrador(INTEGRADOR_TEL, -1);

    LogCallStep('log_answer_act', 'Apos processacallername - Receptivo;Telefone=' + TMyAppStatus.sNumero + ';Uid=' + TMyVaxIncomingCallParam.sUniqueID);

    sTextoHint := ' - Informa��es da Chamada - ';
    if Trim(TMyVaxIncomingCallParam.sProtocolo) <> '' then
      sTextoHint := sTextoHint + #13#10 + 'Protocolo: ' + TMyVaxIncomingCallParam.sProtocolo;
    if Trim(TMyVaxIncomingCallParam.username) <> '' then
      sTextoHint := sTextoHint + #13#10 + 'N�mero: ' + TMyVaxIncomingCallParam.username;
    if Trim(TMyVaxIncomingCallParam.sFilaDSC) <> '' then
      sTextoHint := sTextoHint + #13#10 + 'Fila: ' + TMyVaxIncomingCallParam.sFilaDSC;
    if Trim(TMyVaxIncomingCallParam.sCodTipo) <> '' then
      sTextoHint := sTextoHint + #13#10 + 'Cliente: ' + TMyVaxIncomingCallParam.sCodTipo;

    for nFor := 1 to 10 do
      if Trim(TMyVaxIncomingCallParam.sCampo[nFor]) <> '' then
        sTextoHint := sTextoHint + #13#10 + 'Campo' + IntToStr(nFor) + ': ' + TMyVaxIncomingCallParam.sCampo[nFor];

    panInfoChamada.ShowHint := True;
    panInfoChamada.Hint := sTextoHint;

    if TAction(albrowser.Actions[0]).Enabled = True then//TabCliente enabled
      if TMyVaxIncomingCallParam.sCodTipo <> '' then
        actclientesExecute(self);

    lblLoja.Caption := TMyVaxIncomingCallParam.sNomeLoja;
    lbfila.Caption := {TMyVaxIncomingCallParam.sFila + ' - ' + }TMyVaxIncomingCallParam.sFilaDSC;
    lbcliente.Caption := TMyVaxIncomingCallParam.sCodTipo;

    lbbina.Caption := TMyVaxIncomingCallParam.username;//+' <'+TMyVaxIncomingCallParam.sFila+'>';
    TMyAppStatus.sTipoChamada := 'Receptivo';

    //aquiif Trim(TMyVaxIncomingCallParam.sUniqueID) <> '' then
    //aqui  tempo_fila(TMyVaxIncomingCallParam.sUniqueID);
  end; //if vax.IsLineBusy(0) = False then
end;

procedure TfrmPrincipal.IniciaGravacaoAudio(nNumLinha: Integer);
begin
  if TMyVaxIncomingCallParam.bRecord then
  begin
    if Vax.ResetRecording(0) = False Then
    begin
      errormessages();
    end;

    if Vax.StartRecording(0, 2, False) = False Then
    begin
      errormessages();
    end;
  end
end;

procedure TfrmPrincipal.TerminaGravacaoAudio(nNumLinha: Integer);
var
  sDirRec: String;
  sFileRec: String;
begin
  if vax.IsRecording(0) then
  begin
    if Vax.StopRecording(0) = False Then
    begin
      errormessages();
    end;

    sDirRec := ExtractFilePath(Application.ExeName)+'rec_audio';
    if not DirectoryExists(sDirRec) then
    begin
      ForceDirectories(sDirRec);
    end;

    sFileRec := '\';
    if TMyAppStatus.bSainte then
      sFileRec := sFileRec + 'OUT-' + TMyInfoLogin.sIDUsuario + '_at_' + TMyInfoLogin.sRamal
    else
      sFileRec := sFileRec + 'IN-' + TMyInfoLogin.sIDUsuario + '_at_' + TMyInfoLogin.sRamal;

    sFileRec := sFileRec + '-' + FormatDateTime('ddmmyy-hhnnss', Now) + '.wav';

    if vax.SaveRecordingToWaveFile(0, sDirRec + sFileRec) = False then
    begin
      errormessages();
    end;
  end;
end;

{function TfrmPrincipal.ConectaGravacaoTela: Boolean;
begin
  try
    sctRecClient.Proto    := 'tcp';
    sctRecClient.Port     := TMyCaptureScreen.sCapturePort;
    sctRecClient.Addr     := '127.0.0.1';
    sctRecClient.LineMode := True;
    sctRecClient.LineEnd  := #13#10;
    sctRecClient.Connect;
    Result := True;
  except
    Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_CON[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    sctRecClient.Close;
    Result := False;
  end;
end;}

{procedure TfrmPrincipal.DesconectaGravacaoTela;
begin
  try
    sctRecClient.Close;
  except
    Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_DCON[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
  end;
end;}

procedure TfrmPrincipal.IniciaGravacaoTela(bSplit: Boolean);
var
  sDirRec: String;
  sFileRec: String;

  nVideoComp: Integer;
  nAudioComp: Integer;
begin
  if bSplit then
  begin
    if not TMyCaptureScreen.bCapturing then
      Exit;
  end
  else
  begin
    if TMyCaptureScreen.bCapturing then
      Exit;
  end;

  TMyCaptureScreen.bCapturing := True;

  sDirRec := TMyCaptureScreen.sCaptureStorageSrc;
  if not DirectoryExists(sDirRec) then
  begin
    ForceDirectories(sDirRec);
  end;

  if bSplit then
    sFileRec := TMyCaptureScreen.sCaptureStorageFile
  else
  begin
    sFileRec := '';
    if TMyAppStatus.bSainte then
      sFileRec := 'OUT-' + TMyInfoLogin.sIDUsuario + '_at_' + TMyInfoLogin.sRamal
    else
      sFileRec := 'IN-' + TMyInfoLogin.sIDUsuario + '_at_' + TMyInfoLogin.sRamal;
    sFileRec := sFileRec + '-' + FormatDateTime('ddmmyy-hhnnss', Now) + '_';

    TMyCaptureScreen.sCaptureStorageFile := sFileRec;
  end;
  sFileRec := sFileRec + IntToStr(TMyCaptureScreen.nSplitStep) + TMyCaptureScreen.sCaptureFileFormat;

  {if bSplit then
  begin
    if sctRecClient.State in [wsConnected] then
      sctRecClient.SendStr('start_record' + ',' +
                           sDirRec + ',' +
                           sFileRec + ',' +
                           BoolToStr(TMyCaptureScreen.bCaptureAudio, True) + ',' +
                           BoolToStr(TMyCaptureScreen.bCaptureCursor, True) + #13#10)
    else
    begin
      Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_SEND[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
      Exit;
    end;
  end
  else
  begin
    TMyCaptureScreen.sCaptureCurrentDirRec := sDirRec;
    TMyCaptureScreen.sCaptureCurrentFileRec := sFileRec;

    if not ConectaGravacaoTela then
      Exit
  end;}

  Screen2Video.FileName := sDirRec + sFileRec;

  Screen2Video.LicenseKey := '9976';
  Screen2Video.OutputType := 0; //avi format
  Screen2Video.UseVideoCompressor := True;
  Screen2Video.UseAudioCompressor := True;
  Screen2Video.AudioMixWithSpeaker := False;
  Screen2Video.FPS := 25;

  Screen2Video.CaptureWidth := Screen2Video.ScreenWidth;
  Screen2Video.CaptureHeight := Screen2Video.ScreenHeight;
  Screen2Video.CaptureArea(0, 0, Screen2Video.ScreenWidth, Screen2Video.ScreenHeight);

  Screen2Video.CaptureAudio := TMyCaptureScreen.bCaptureAudio;
  Screen2Video.CaptureCursor := TMyCaptureScreen.bCaptureCursor;

  nVideoComp := Screen2Video.VideoCompressors.FindVideoCompressor('ffdshow video encoder');
  if nVideoComp > 0 then
    Screen2Video.VideoCompressor := nVideoComp
  else
    mensagem(APP_MB_ERR_VIDEO_CODEC[ID_LANG]);

  nAudioComp := Screen2Video.AudioCompressors.FindAudioCompressor('GSM 6.10');
  if nAudioComp > 0 then
    Screen2Video.AudioCompressor := nAudioComp
  else
    mensagem(APP_MB_ERR_AUDIO_CODEC[ID_LANG]);

  Screen2Video.Start;

  {if bSplit then
  begin
    TMyCaptureScreen.bCapturing := True;}

  tmrGravacaoTelaSplit.Enabled := False;
  tmrGravacaoTelaSplit.Interval := TMyCaptureScreen.nSplitInterval;
  tmrGravacaoTelaSplit.Enabled := True;

  stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_CAPTURING[ID_LANG];
  //end;
end;

procedure TfrmPrincipal.TerminaGravacaoTela;
begin
  if TMyCaptureScreen.bCapturing then
  begin
    CopiaArqGravacaoTela(TMyCaptureScreen.sCaptureStorageFile, TMyCaptureScreen.nSplitStep);

    tmrGravacaoTelaSplit.Enabled := False;
    TMyCaptureScreen.nSplitStep := 0;

    {if sctRecClient.State in [wsConnected] then
    begin
    Memo1.Lines.Add('enviando stop_record no TerminaGravacaoTela');

      sctRecClient.SendStr('stop_record' + #13#10);
    end
    else
    begin
      Application.MessageBox(PChar(APP_MB_APP_ERR_REC_SCREEN_SEND[ID_LANG]), PChar(GetStringResource(rcCaptionPrincipal)), MB_ICONEXCLAMATION);
    end;}

    Screen2video.Stop;

    TMyCaptureScreen.bCapturing := False;
    //TMyCaptureScreen.sCaptureCurrentDirRec := '';
    //TMyCaptureScreen.sCaptureCurrentFileRec := '';

    stbStatusBar.Panels[5].Text := 'S2V: ' + APP_FRM_MAIN_STATUS_BAR_S2V_STOPPED[ID_LANG];
  end;
end;

procedure TfrmPrincipal.CopiaArqGravacaoTela(sSrcFileReceived: String; nSplitStepReceived: Integer);
begin
  try
    with TAutoSendFilesThread.Create(True) do
    begin
      nIDUser := StrToInt(TMyInfoLogin.sIDUsuario);

      sSrcDir         := TMyCaptureScreen.sCaptureStorageSrc;
      sSrcFile        := sSrcFileReceived;
      nSplitMaxNumber := nSplitStepReceived;
      sFileFormat     := TMyCaptureScreen.sCaptureFileFormat;
      sDstDir         := TMyCaptureScreen.sCaptureStorageDst;

      sDBHostname := frmLogin.TMyConfigInfo.sDatabaseIP;
      sDBDatabase := frmLogin.TMyConfigInfo.sDatabaseName;
      sDBUser     := frmLogin.TMyConfigInfo.sDatabaseUser;
      sDBPassword := frmLogin.TMyConfigInfo.sDatabasePass;
      nDBPort     := frmLogin.TMyConfigInfo.nDatabasePort;

      FreeOnTerminate := True;
      Priority        := tpLowest;

      Inc(TMyCaptureScreen.nThreadsRunning);

      Start;
    end;
  except
    Mensagem(APP_MB_ERR_THREADCREATE_CAPTURE[ID_LANG]);
  end;
end;

function TfrmPrincipal.ClassificaChamadaAtiva(
                                              pCallQuality: Integer;
                                              pTranscricao: String;
                                              pGravacaoVideoAct: String;
                                              pGravacaoVideoPath: String;
                                              pObservacao: String;
                                              pAgendamento_tipo: String;
                                              pAgendamento_data: String;
                                              pAgendamento_hora: String;
                                              pDuracao: String;
                                              pDuracao_pos: String;
                                              pDuracao_hold: String;
                                              pTransferida: String;
                                              pTransferida_para: String;
                                              pTransferida_dest: String;
                                              pGravacao_sol_act: String;
                                              pClassificacao_auto_act: String;
                                              pClassificacao_auto_mot: String;
                                              pDialstatus: String;
                                              pPause_act: String;
                                              pCoaching_act: String;
                                              pCoaching_id: String;
                                              pSupervisor_id: String;
                                              pEasy_pabx_fila_ctr_id: String;
                                              pEasy_callcenter_classif_chamada_conf_id: String;
                                              pEasy_callcenter_classif_sub_chamada_conf_id: String;
                                              psipdialid: String;
                                              pTelefone: String
  ): Boolean;
begin
  //Chamada Ativa

  datam.qryGravaClassificacao.Active := False;
  datam.qryGravaClassificacao.SQL.Clear;
  datam.qryGravaClassificacao.SQL.Add('call spCoreClassificarContato(');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(TMyInfoLogin.sIDUsuario) + ',');
  datam.qryGravaClassificacao.SQL.Add('1' + ',');
  datam.qryGravaClassificacao.SQL.Add('2' + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(psipdialid <> '', QuotedStr(psipdialid), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pTelefone) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_pabx_fila_ctr_id <> '', pEasy_pabx_fila_ctr_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_callcenter_classif_chamada_conf_id <> '', pEasy_callcenter_classif_chamada_conf_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_callcenter_classif_sub_chamada_conf_id <> '', pEasy_callcenter_classif_sub_chamada_conf_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pObservacao) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pTranscricao) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pGravacao_sol_act = 'Y', '1', '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pAgendamento_tipo) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pAgendamento_tipo <> '', QuotedStr(pAgendamento_data), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pAgendamento_tipo <> '', QuotedStr(pAgendamento_hora), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_para), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_dest), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pDuracao_hold) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pPause_act) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pCoaching_act = 'Y', QuotedStr(pCoaching_id), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IntToStr(pCallQuality));
  datam.qryGravaClassificacao.SQL.Add(')');
  datam.qryGravaClassificacao.ExecSQL;
  datam.qryGravaClassificacao.Active := False;

  {
  v_agente INT(11),               QuotedStr(TMyInfoLogin.sIDUsuario)
  v_canal INT(11),                1 para ativo
  v_classe INT(11),               2 para ativo
  v_codigo CHAR(100),             psipdialid
  v_telefone CHAR(100),           pTelefone
  v_fila INT(11),                 pEasy_pabx_fila_ctr_id
  v_classif INT(11),              pEasy_callcenter_classif_chamada_conf_id
  v_subclassif INT(11),           pEasy_callcenter_classif_sub_chamada_conf_id
  v_obs CHAR(255),                pObservacao
  v_tso CHAR(255),                pTranscricao
  v_grav INT(11),                 pGravacao_sol_act
  v_agenda_tipo CHAR(1),          pAgendamento_tipo
  v_agenda_data CHAR(10),         pAgendamento_data
  v_agenda_hora CHAR(10),         pAgendamento_hora
  v_transf_serv CHAR(100),        pTransferida_para
  v_transf_dest CHAR(100),        pTransferida_dest
  v_tmp_hold CHAR(10),            pDuracao_hold
  v_dial_pause CHAR(10),          pPause_act
  v_coaching CHAR(10)             pCoaching_id
  }

  {
  datam.qryGravaClassificacao.Active := False;
  datam.qryGravaClassificacao.SQL.Clear;
  datam.qryGravaClassificacao.SQL.Add('update easy_rept_pabx_serv_fila_universal_chamada_ativa_hist set ');
  datam.qryGravaClassificacao.SQL.Add('transcricao = ' + QuotedStr(pTranscricao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_video_act = ' + QuotedStr(pGravacaoVideoAct) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_video_path  = ' + QuotedStr(pGravacaoVideoPath) + ', ');
  datam.qryGravaClassificacao.SQL.Add('observacao = ' + QuotedStr(pObservacao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_tipo = ' + QuotedStr(pAgendamento_tipo) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_data = ' + QuotedStr(pAgendamento_data) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_hora = ' + QuotedStr(pAgendamento_hora) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao = ' + QuotedStr(pDuracao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao_pos = ' + QuotedStr(pDuracao_pos) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao_hold = ' + QuotedStr(pDuracao_hold) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida = ' + QuotedStr(pTransferida) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida_para = ' + QuotedStr(pTransferida_para) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida_dest = ' + QuotedStr(pTransferida_dest) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_sol_act = ' + QuotedStr(pGravacao_sol_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('classificacao_auto_act = ' + QuotedStr(pClassificacao_auto_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('classificacao_auto_mot = ' + QuotedStr(pClassificacao_auto_mot) + ', ');
  datam.qryGravaClassificacao.SQL.Add('dialstatus = ' + QuotedStr(pDialstatus) + ', ');
  datam.qryGravaClassificacao.SQL.Add('ispause = ' + pPause_act + ', ');
  datam.qryGravaClassificacao.SQL.Add('coaching_act = ' + QuotedStr(pCoaching_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('coaching_id = ' + QuotedStr(pCoaching_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('iscontrole = 1,');
  datam.qryGravaClassificacao.SQL.Add('isinterface = ' + QuotedStr('A') + ', ');
  datam.qryGravaClassificacao.SQL.Add('supervisor_id = ' + pSupervisor_id + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_ctr_id = ' + QuotedStr(pEasy_pabx_fila_ctr_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_call_empresa_conf_id = ' + QuotedStr(TMyInfoLogin.sIDEmpresa) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_call_operacao_conf_id = ' + QuotedStr(TMyInfoLogin.sIDOperacao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('desconexao = ' + QuotedStr(TMyAppStatus.sTipoDesconexao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf_id = ' + QuotedStr(pEasy_callcenter_classif_chamada_conf_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_classificacao_sub_conf_id = ' + QuotedStr(pEasy_callcenter_classif_sub_chamada_conf_id));
  datam.qryGravaClassificacao.SQL.Add('where ');
  datam.qryGravaClassificacao.SQL.Add('dialcode = ' + QuotedStr(psipdialid));
  datam.qryGravaClassificacao.SQL.Add('and telefone = ' + QuotedStr(pTelefone));
  datam.qryGravaClassificacao.SQL.Add('and easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryGravaClassificacao.SQL.Add('and iscontrole = 0');
  datam.qryGravaClassificacao.ExecSQL;
  datam.qryGravaClassificacao.Active := False;

  AtualizaDashBoard_ClassificaChamada;
  }

  if TMyCaptureScreen.bCapture then
    if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE then
      TerminaGravacaoTela;

  Result := True;
end;

function TfrmPrincipal.ClassificaChamadaReceptiva(
                                              pCallQuality: Integer;
                                              pTranscricao: String;
                                              pGravacaoVideoAct: String;
                                              pGravacaoVideoPath: String;
                                              pObservacao: String;
                                              pAgendamento_tipo: String;
                                              pAgendamento_data: String;
                                              pAgendamento_hora: String;
                                              pDuracao: String;
                                              pDuracao_pos: String;
                                              pDuracao_hold: String;
                                              pTransferida: String;
                                              pTransferida_para: String;
                                              pTransferida_dest: String;
                                              pGravacao_sol_act: String;
                                              pClassificacao_auto_act: String;
                                              pClassificacao_auto_mot: String;
                                              pCoaching_act: String;
                                              pCoaching_id: String;
                                              pSupervisor_id: String;
                                              pEasy_pabx_fila_ctr_id: String;
                                              pEasy_callcenter_classif_chamada_conf_id: String;
                                              pEasy_callcenter_classif_sub_chamada_conf_id: String;
                                              pClasse: String;
                                              pCampo01: String;
                                              pCampo02: String;
                                              pCampo03: String;
                                              pCampo04: String;
                                              pCampo05: String;
                                              pCampo06: String;
                                              pCampo07: String;
                                              pCampo08: String;
                                              pCampo09: String;
                                              pCampo10: String
  ): Boolean;
var
  nTmpTipoOperacao: Integer;
begin
  //Chamada Receptiva

  datam.qryGravaClassificacao.Active := False;
  datam.qryGravaClassificacao.SQL.Clear;
  datam.qryGravaClassificacao.SQL.Add('call spCoreClassificarContato(');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(TMyInfoLogin.sIDUsuario) + ',');
  datam.qryGravaClassificacao.SQL.Add('1' + ',');
  datam.qryGravaClassificacao.SQL.Add(pClasse + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(TMyVaxIncomingCallParam.sUniqueID) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(TMyAppStatus.sNumero) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_pabx_fila_ctr_id <> '', pEasy_pabx_fila_ctr_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_callcenter_classif_chamada_conf_id <> '', pEasy_callcenter_classif_chamada_conf_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pEasy_callcenter_classif_sub_chamada_conf_id <> '', pEasy_callcenter_classif_sub_chamada_conf_id, '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pObservacao) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pTranscricao) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pGravacao_sol_act = 'Y', '1', '0') + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pAgendamento_tipo) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pAgendamento_tipo <> '', QuotedStr(pAgendamento_data), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pAgendamento_tipo <> '', QuotedStr(pAgendamento_hora), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_para), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_dest), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr(pDuracao_hold) + ',');
  datam.qryGravaClassificacao.SQL.Add(QuotedStr('0') + ',');
  datam.qryGravaClassificacao.SQL.Add(IfThen(pCoaching_act = 'Y', QuotedStr(pCoaching_id), QuotedStr('0')) + ',');
  datam.qryGravaClassificacao.SQL.Add(IntToStr(pCallQuality));
  datam.qryGravaClassificacao.SQL.Add(')');
  datam.qryGravaClassificacao.ExecSQL;
  datam.qryGravaClassificacao.Active := False;

  {
  v_agente INT(11),               QuotedStr(TMyInfoLogin.sIDUsuario)
  v_canal INT(11),                1 para receptivo
  v_classe INT(11),               pClasse
  v_codigo CHAR(100),             QuotedStr(TMyVaxIncomingCallParam.sUniqueID)
  v_telefone CHAR(100),           TMyAppStatus.sNumero
  v_fila INT(11),                 pEasy_pabx_fila_ctr_id
  v_classif INT(11),              pEasy_callcenter_classif_chamada_conf_id
  v_subclassif INT(11),           pEasy_callcenter_classif_sub_chamada_conf_id
  v_obs CHAR(255),                pObservacao
  v_tso CHAR(255),                pTranscricao
  v_grav INT(11),                 pGravacao_sol_act
  v_agenda_tipo CHAR(1),          pAgendamento_tipo
  v_agenda_data CHAR(10),         pAgendamento_data
  v_agenda_hora CHAR(10),         pAgendamento_hora
  v_transf_serv CHAR(100),        pTransferida_para
  v_transf_dest CHAR(100),        pTransferida_dest
  v_tmp_hold CHAR(10),            pDuracao_hold
  v_dial_pause CHAR(10),          0 para receptivo
  v_coaching CHAR(10)             pCoaching_id
  }

  {
  datam.qryGravaClassificacao.Active := False;
  datam.qryGravaClassificacao.SQL.Clear;
  datam.qryGravaClassificacao.SQL.Add('update easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist set ');
  datam.qryGravaClassificacao.SQL.Add('transcricao = ' + QuotedStr(pTranscricao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_video_act = ' + QuotedStr(pGravacaoVideoAct) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_video_path  = ' + QuotedStr(pGravacaoVideoPath) + ', ');
  datam.qryGravaClassificacao.SQL.Add('observacao = ' + QuotedStr(pObservacao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_tipo = ' + QuotedStr(pAgendamento_tipo) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_data = ' + QuotedStr(pAgendamento_data) + ', ');
  datam.qryGravaClassificacao.SQL.Add('agendamento_hora = ' + QuotedStr(pAgendamento_hora) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao = ' + QuotedStr(pDuracao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao_pos = ' + QuotedStr(pDuracao_pos) + ', ');
  datam.qryGravaClassificacao.SQL.Add('duracao_hold = ' + QuotedStr(pDuracao_hold) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida = ' + QuotedStr(pTransferida) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida_para = ' + QuotedStr(pTransferida_para) + ', ');
  datam.qryGravaClassificacao.SQL.Add('transferida_dest = ' + QuotedStr(pTransferida_dest) + ', ');
  datam.qryGravaClassificacao.SQL.Add('gravacao_sol_act = ' + QuotedStr(pGravacao_sol_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('classificacao_auto_act = ' + QuotedStr(pClassificacao_auto_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('classificacao_auto_mot = ' + QuotedStr(pClassificacao_auto_mot) + ', ');
  datam.qryGravaClassificacao.SQL.Add('coaching_act = ' + QuotedStr(pCoaching_act) + ', ');
  datam.qryGravaClassificacao.SQL.Add('coaching_id = ' + QuotedStr(pCoaching_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('iscontrole = 1,');
  datam.qryGravaClassificacao.SQL.Add('supervisor_id = ' + pSupervisor_id + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_ctr_id = ' + QuotedStr(pEasy_pabx_fila_ctr_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_call_empresa_conf_id = ' + QuotedStr(TMyInfoLogin.sIDEmpresa) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_call_operacao_conf_id = ' + QuotedStr(TMyInfoLogin.sIDOperacao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf_id = ' + QuotedStr(pEasy_callcenter_classif_chamada_conf_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_classificacao_sub_conf_id = ' + QuotedStr(pEasy_callcenter_classif_sub_chamada_conf_id) + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Classe = ' + QuotedStr(pClasse) + ', ');
  datam.qryGravaClassificacao.SQL.Add('desconexao = ' + QuotedStr(TMyAppStatus.sTipoDesconexao) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo01 = ' + QuotedStr(pCampo01) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo02 = ' + QuotedStr(pCampo02) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo03 = ' + QuotedStr(pCampo03) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo04 = ' + QuotedStr(pCampo04) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo05 = ' + QuotedStr(pCampo05) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo06 = ' + QuotedStr(pCampo06) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo07 = ' + QuotedStr(pCampo07) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo08 = ' + QuotedStr(pCampo08) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo09 = ' + QuotedStr(pCampo09) + ', ');
  datam.qryGravaClassificacao.SQL.Add('Campo10 = ' + QuotedStr(pCampo10));
  datam.qryGravaClassificacao.SQL.Add('where ');
  datam.qryGravaClassificacao.SQL.Add('uniqueid = ' + QuotedStr(TMyVaxIncomingCallParam.sUniqueID));
  datam.qryGravaClassificacao.SQL.Add('and iscontrole = 0');
  datam.qryGravaClassificacao.SQL.Add('and transferida = ' + QuotedStr('N'));
  datam.qryGravaClassificacao.SQL.Add('and easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryGravaClassificacao.ExecSQL;
  datam.qryGravaClassificacao.Active := False;

  AtualizaDashBoard_ClassificaChamada;

  try
    nTmpTipoOperacao := StrToInt(TMyVaxIncomingCallParam.sTipoOperacao);
  except
    if TMyCaptureScreen.bCapture then
      if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE then
        TerminaGravacaoTela;

    Result := True;
    Exit;
  end;

  if (Trim(pAgendamento_tipo) = '') and
     (nTmpTipoOperacao >= 5) and
     (Trim(pCampo01) <> '') then
  begin
    datam.qryGravaClassificacao.SQL.Clear;
    datam.qryGravaClassificacao.SQL.Add('UPDATE easy_disc_mailing_new_list SET ');
    datam.qryGravaClassificacao.SQL.Add('active = '+ QuotedStr('N') + ', ');
    datam.qryGravaClassificacao.SQL.Add('motivo = '+ '4' + ' ');
    datam.qryGravaClassificacao.SQL.Add('WHERE id = ' + QuotedStr(pCampo01));
    datam.qryGravaClassificacao.ExecSQL;
    datam.qryGravaClassificacao.Active := False;
  end;
  }

  if TMyCaptureScreen.bCapture then
    if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE then
      TerminaGravacaoTela;

  Result := True;
end;

function TfrmPrincipal.ClassificaChamadaCancelada: Boolean;
begin
  //AtualizaDashBoard_ClassificaChamada;

  if TMyCaptureScreen.bCapture then
    if TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE then
      TerminaGravacaoTela;

  Result := True;
end;

function TfrmPrincipal.ClassificaChamadaAuto: Boolean;
var
  temp: string;
  nForCsf: Integer;
  nForAgd: Integer;
  nForInd: Integer;

  tmpTranscricao: String;
  tmpGravacaoVideoAct: String;
  tmpGravacaoVideoPath: String;
  tmpAgendamento_tipo: String;
  tmpAgendamento_data: String;
  tmpAgendamento_hora: String;
  tmpEasy_callcenter_classif_chamada_conf_id: String;
  tmpEasy_callcenter_classif_sub_chamada_conf_id: String;
  tmpTelefone: String;

  nFor: Integer;
  sTextPausa: String;
begin
  tmrLastClassAuto.Enabled := False;
  TMyClassificacao.bClassificando := False;

  try
    if framebar.Items[0].State = stOpened then
      Tfrmdialpad(framebar.items[0].frame).btnLiga.Enabled := True;
  except
  end;

  tmpAgendamento_tipo := '';
  tmpAgendamento_data := '';
  tmpAgendamento_hora := '';
  tmpEasy_callcenter_classif_chamada_conf_id := '';
  tmpEasy_callcenter_classif_sub_chamada_conf_id := '';
  tmpTelefone := '';

  {var sTempTel: String;
  if frmprincipal.TMyAppStatus.sNumero[1] = '0' then
  begin
    sTempTel := frmprincipal.TMyAppStatus.sNumero;
    Delete(sTempTel, 1, 1);
    tmpTelefone := '%' + sTempTel;
  end
  else}
  tmpTelefone := frmPrincipal.TMyAppStatus.sNumero;

  tmpTranscricao := '';
  try
    tmpTranscricao := frmPrincipal.memTranscricao.Text;
  except
    tmpTranscricao := APP_FRM_CLASSIFICATION_ERR_TRANSCRIPT[ID_LANG];
  end;

  tmpGravacaoVideoAct := 'N';
  tmpGravacaoVideoPath := '';
  if (frmPrincipal.TMyCaptureScreen.bCapture) and
     (frmPrincipal.TMyCaptureScreen.bCapturing) and
     (frmPrincipal.TMyCaptureScreen.nCaptureMode = CAPTURE_MODE_PHONE) then
  begin
    tmpGravacaoVideoAct := 'Y';
    tmpGravacaoVideoPath := frmPrincipal.TMyCaptureScreen.sCaptureStorageFile +
                            IntToStr(frmPrincipal.TMyCaptureScreen.nSplitStep) +
                            frmPrincipal.TMyCaptureScreen.sCaptureFileFormat;
  end;

  if (frmprincipal.TMyAppStatus.sTipoChamada = 'Ativo') then//Chamada Ativa
  begin
    frmPrincipal.ClassificaChamadaAtiva(
                                        TMyAppStatus.nCallQuality,
                                        tmpTranscricao,
                                        tmpGravacaoVideoAct,
                                        tmpGravacaoVideoPath,
                                        '',
                                        tmpAgendamento_tipo,
                                        tmpAgendamento_data,
                                        tmpAgendamento_hora,
                                        TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                        TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                        TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                        IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                        'N',
                                        'Y',
                                        'AUTO',
                                        TMyAppStatus.sSipDialStatus,
                                        IfThen(frmPrincipal.TMyPausa.bPausado, '1', '0'),
                                        IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                        IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                        frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                        '',
                                        tmpEasy_callcenter_classif_chamada_conf_id,
                                        tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                        TMyAppStatus.sSipDialID,
                                        tmpTelefone
    );
  end//if (frmprincipal.TMyAppStatus.sTipoChamada = 'Ativo') then
  else
    if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) = '')) then//Chamada Receptiva DDR
    begin
      frmPrincipal.ClassificaChamadaReceptiva(
                                          TMyAppStatus.nCallQuality,
                                          tmpTranscricao,
                                          tmpGravacaoVideoAct,
                                          tmpGravacaoVideoPath,
                                          '',
                                          tmpAgendamento_tipo,
                                          tmpAgendamento_data,
                                          tmpAgendamento_hora,
                                          TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                          TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                          TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                          IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                          'N',
                                          'Y',
                                          'AUTO',
                                          IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                          IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                          frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                          '',
                                          tmpEasy_callcenter_classif_chamada_conf_id,
                                          tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                          frmPrincipal.TMyVaxIncomingCallParam.sTipoOperacao,//Old -> '4',
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[1],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[2],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[3],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[4],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[5],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[6],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[7],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[8],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[9],
                                          frmPrincipal.TMyVaxIncomingCallParam.sCampo[10]
      );
    end//if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) = '')) then
    else
      if ((frmprincipal.TMyAppStatus.sTipoChamada = 'Receptivo') and (Trim(frmprincipal.TMyVaxIncomingCallParam.sFila) <> '')) then//Chamada Receptiva Fila
      begin
        frmPrincipal.ClassificaChamadaReceptiva(
                                            TMyAppStatus.nCallQuality,
                                            tmpTranscricao,
                                            tmpGravacaoVideoAct,
                                            tmpGravacaoVideoPath,
                                            '',
                                            tmpAgendamento_tipo,
                                            tmpAgendamento_data,
                                            tmpAgendamento_hora,
                                            TimeToStr(frmPrincipal.TMyAppStatus.dtvFimChamada - frmprincipal.TMyAppStatus.dtvInicioChamada),
                                            TimeToStr(frmPrincipal.TMyPausa.tTempoPausa),
                                            TimeToStr(frmPrincipal.TMyAppStatus.tTempoHoldTotal),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, 'Y', 'N'),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerTipo, ''),
                                            IfThen(frmPrincipal.TMyXFer.bXFerExec, frmPrincipal.TMyXFer.sXFerDest, ''),
                                            'N',
                                            'Y',
                                            'AUTO',
                                            IfThen(frmPrincipal.TMyCoaching.bCoaching, 'Y', 'N'),
                                            IfThen(frmPrincipal.TMyCoaching.bCoaching, frmPrincipal.TMyCoaching.sIdCoaching, ''),
                                            frmPrincipal.TMyInfoLogin.sIDSupervisor,
                                            TMyVaxIncomingCallParam.sFila,
                                            tmpEasy_callcenter_classif_chamada_conf_id,
                                            tmpEasy_callcenter_classif_sub_chamada_conf_id,
                                            frmPrincipal.TMyVaxIncomingCallParam.sTipoOperacao,
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[1],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[2],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[3],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[4],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[5],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[6],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[7],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[8],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[9],
                                            frmPrincipal.TMyVaxIncomingCallParam.sCampo[10]
        );
      end;

  frmprincipal.TMyClassificacao.bClassificou := True;
  frmprincipal.TMyXFer.bXFerExec := False;
  frmprincipal.memTranscricao.Lines.Clear;
  ClearImgCallQuality(False);

  frmPrincipal.LogCallStep('log_dnd_off_act', 'ClassificaChamadaAuto');

  if frmprincipal.TMyClassificacao.bAutoAgendouPausa then
  begin
    if TMyInfoLogin.nTipo = 1 then
      if nChatDinamicosCriados >= 0 then
      begin
        for nFor := 0 to nChatDinamicosCriados do
        begin
          if (vChatClassificando = 1) or (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) then
          begin
            frmPrincipal.mensagem(APP_MB_WAR_PAUSE_AGENT_IN_CHAT[ID_LANG]);
            Break;
          end;
        end;

        for nFor := 0 to nChatDinamicosCriados do
          if (matrizchatsala[nFor, 0] = IntToStr(CHAT_STATUS_FREE)) then
            lblChatCabecalho[nFor].Caption := APP_FRM_MAIN_CHAT_STATUS_PAUSE[ID_LANG];
      end;//if nChatDinamicosCriados >= 0 then

    sTextPausa := TMyClassificacao.sAutoAgendouPausaTipo;
    frmprincipal.pausar(sTextPausa);

    for nFor := 0 to frmprincipal.vnumpausa-1 do
    begin
      if frmprincipal.matrizpausa[1,nFor] = sTextPausa then
      begin
        if frmprincipal.matrizpausa[17, nFor] = 'True' then
        begin
          frmPrincipal.Visible := False;
          frmDesbloquear.CarregaTelasLinguagem;
          frmDesbloquear.Caption := frmPrincipal.lbstatus.Caption;
          frmDesbloquear.idPausa := frmprincipal.matrizpausa[0, nFor];
          if frmDesbloquear.ShowModal = mrOk then
          begin
            frmPrincipal.Visible := True;
            frmDesbloquear.Caption := '';
          end;
        end;

        Break;
      end;
    end;

    frmprincipal.tmrVerificaTrocaPausa.Enabled := False;
    frmprincipal.TMyPausa.bTrocandoPausa := False;

    frmPrincipal.TMyClassificacao.bAutoAgendouPausa := False;
    frmPrincipal.TMyClassificacao.sAutoAgendouPausaTipo := '';
  end
  else
    vax.DisableDonotDisturb;
end;

function TfrmPrincipal.AtualizaDashBoard_ClassificaChamada: Boolean;
begin
  {
  datam.qryGravaClassificacao.Active := False;
  datam.qryGravaClassificacao.SQL.Clear;
  datam.qryGravaClassificacao.SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento set ');
  datam.qryGravaClassificacao.SQL.Add('tipo = ' + QuotedStr('') + ', ');
  datam.qryGravaClassificacao.SQL.Add('telefone = ' + QuotedStr('') + ', ');
  datam.qryGravaClassificacao.SQL.Add('espera = ' + QuotedStr('') + ', ');
  if TMyPausa.bDiscouPausa then
  begin
    datam.qryGravaClassificacao.SQL.Add('status = 2, ');
    datam.qryGravaClassificacao.SQL.Add('easy_call_operacao_pausa_conf_id = ' + QuotedStr(TMyPausa.sIDPausa) + ', ');
  end
  else
  begin
    datam.qryGravaClassificacao.SQL.Add('status = 1, ');
    datam.qryGravaClassificacao.SQL.Add('easy_call_operacao_pausa_conf_id = ' + QuotedStr('') + ', ');
  end;
  datam.qryGravaClassificacao.SQL.Add('status_tel = 0, ');
  datam.qryGravaClassificacao.SQL.Add('evento = now(), ');
  datam.qryGravaClassificacao.SQL.Add('evento_tel = ' + QuotedStr('') + ', ');
  datam.qryGravaClassificacao.SQL.Add('uniqueid = ' + QuotedStr('') + ', ');
  datam.qryGravaClassificacao.SQL.Add('easy_pabx_serv_fila_universal_ctr_id = ' + QuotedStr('') + ' ');
  datam.qryGravaClassificacao.SQL.Add('where ');
  datam.qryGravaClassificacao.SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
  datam.qryGravaClassificacao.ExecSQL;
  datam.qryGravaClassificacao.Active := False;
  }

  Result := True;
end;

function TfrmPrincipal.ClassificaChat(
                                    pSalaChat: Integer;
                                    pObservacao: String;
                                    pDuracao_pos: String;
                                    pDuracao_hold: String;
                                    pTransferida: String;
                                    pTransferida_para: String;
                                    pTransferida_dest: String;
                                    pClassificacao_auto_act: String;
                                    pClassificacao_auto_mot: String;
                                    pCoaching_act: String;
                                    pCoaching_id: String;
                                    pSupervisor_id: String;
                                    pEasy_webchat_classificacao_conf_id: String;
                                    pEasy_webchat_classificacao_sub_conf_id: String;
                                    pDesconexao: String;
                                    pDesconexao_mot: String;
                                    pCampo01: String;
                                    pCampo02: String;
                                    pCampo03: String;
                                    pCampo04: String;
                                    pCampo05: String;
                                    pEasy_webchat_contatos_ctr_id: String
  ): Boolean;
begin
  //Chat

  qryChatDesconecta[pSalaChat].Active := False;
  qryChatDesconecta[pSalaChat].SQL.Clear;
  qryChatDesconecta[pSalaChat].SQL.Add('call spCoreClassificarContato(');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr(TMyInfoLogin.sIDUsuario) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add('2' + ',');
  qryChatDesconecta[pSalaChat].SQL.Add('1' + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr(pEasy_webchat_contatos_ctr_id) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('0') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('0') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(pEasy_webchat_classificacao_conf_id + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(pEasy_webchat_classificacao_sub_conf_id + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr(pObservacao) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add('0' + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('N') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('0') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('0') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_para), QuotedStr('0')) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(IfThen(pTransferida = 'Y', QuotedStr(pTransferida_dest), QuotedStr('0')) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr(pDuracao_hold) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(QuotedStr('0') + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(IfThen(pCoaching_act = 'Y', QuotedStr(pCoaching_id), QuotedStr('0')) + ',');
  qryChatDesconecta[pSalaChat].SQL.Add(IntToStr(0));
  qryChatDesconecta[pSalaChat].SQL.Add(')');
  qryChatDesconecta[pSalaChat].ExecSQL;
  qryChatDesconecta[pSalaChat].Active := False;

  {
  v_agente INT(11),               QuotedStr(TMyInfoLogin.sIDUsuario)
  v_canal INT(11),                2 para chat
  v_classe INT(11),               1 para chat
  v_codigo CHAR(100),             pEasy_webchat_contatos_ctr_id
  v_telefone CHAR(100),           0
  v_fila INT(11),                 0
  v_classif INT(11),              pEasy_webchat_classificacao_conf_id
  v_subclassif INT(11),           pEasy_webchat_classificacao_sub_conf_id
  v_obs CHAR(255),                pObservacao
  v_tso CHAR(255),                ''
  v_grav INT(11),                 0
  v_agenda_tipo CHAR(1),          'N'
  v_agenda_data CHAR(10),         '0'
  v_agenda_hora CHAR(10),         '0'
  v_transf_serv CHAR(100),        pTransferida_para
  v_transf_dest CHAR(100),        pTransferida_dest
  v_tmp_hold CHAR(10),            pDuracao_hold
  v_dial_pause CHAR(10),          0 para chat
  v_coaching CHAR(10)             pCoaching_id
  }

  {
  qryChatDesconecta[pSalaChat].Active := False;
  qryChatDesconecta[pSalaChat].SQL.Clear;
  qryChatDesconecta[pSalaChat].SQL.Add('update easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist set ');
  qryChatDesconecta[pSalaChat].SQL.Add('observacao = ' + QuotedStr(pObservacao) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('duracao = timediff(now(), datahora),');
  qryChatDesconecta[pSalaChat].SQL.Add('duracao_pos = ' + QuotedStr(pDuracao_pos) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('duracao_hold = ' + QuotedStr(pDuracao_hold) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('transferida = ' + QuotedStr(pTransferida) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('transferida_para = ' + QuotedStr(pTransferida_para) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('transferida_dest = ' + QuotedStr(pTransferida_dest) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('classificacao_auto_act = ' + QuotedStr(pClassificacao_auto_act) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('classificacao_auto_mot = ' + QuotedStr(pClassificacao_auto_mot) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('coaching_act = ' + QuotedStr(pCoaching_act) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('coaching_id = ' + QuotedStr(pCoaching_id) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('supervisor_id = ' + QuotedStr(pSupervisor_id) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf_id = ' + QuotedStr(pEasy_webchat_classificacao_conf_id) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('easy_pabx_serv_fila_universal_classificacao_sub_conf_id = ' + QuotedStr(pEasy_webchat_classificacao_sub_conf_id) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('iscontrole = 1, ');
  qryChatDesconecta[pSalaChat].SQL.Add('queuestatus = 1, ');
  qryChatDesconecta[pSalaChat].SQL.Add('easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('easy_call_empresa_conf_id = ' + QuotedStr(TMyInfoLogin.sIDEmpresa) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('easy_call_operacao_conf_id = ' + QuotedStr(TMyInfoLogin.sIDOperacao) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('desconexao = ' + QuotedStr(pDesconexao) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('desconexao_mot = ' + QuotedStr(pDesconexao_mot) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('is_queue_disconnect_act = 1, ');
  qryChatDesconecta[pSalaChat].SQL.Add('is_queue_disconnect_tmp = now(), ');
  qryChatDesconecta[pSalaChat].SQL.Add('is_queue_time_answered = timediff(is_queue_disconnect_tmp, is_queue_connect_tmp), ');
  qryChatDesconecta[pSalaChat].SQL.Add('campo01 = ' + QuotedStr(pCampo01) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('campo02 = ' + QuotedStr(pCampo02) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('campo03 = ' + QuotedStr(pCampo03) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('campo04 = ' + QuotedStr(pCampo04) + ', ');
  qryChatDesconecta[pSalaChat].SQL.Add('campo05 = ' + QuotedStr(pCampo05));
  qryChatDesconecta[pSalaChat].SQL.Add('where ');
  qryChatDesconecta[pSalaChat].SQL.Add('id = ' + QuotedStr(pEasy_webchat_contatos_ctr_id));
  qryChatDesconecta[pSalaChat].SQL.Add('and iscontrole = 0');
  qryChatDesconecta[pSalaChat].ExecSQL;
  qryChatDesconecta[pSalaChat].Active := False;
  }

  Result := True;
end;

procedure TfrmPrincipal.ClassificaChatAuto(bTimeout: Boolean);
var
  nSalaChat: Integer;
  nTipo: Integer;
begin
  if vChatClassificando <> 1 then
  begin
    mensagem(APP_MB_WAR_CHAT_ALREADY_CLASSIF[ID_LANG]);
    Exit;
  end;

  nSalaChat := vChatClassificandoSala;
  nTipo := vChatClassificandoTipo;

  if matrizchatsala[nSalaChat, 0] = IntToStr(CHAT_STATUS_ENDING) then
  begin
    qryChatDesconecta[nSalaChat].Active := False;
    qryChatDesconecta[nSalaChat].SQL.Clear;
    qryChatDesconecta[nSalaChat].SQL.Add('update easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist set ');
    if vChatDesconexaoCliente = False then
    begin
      qryChatDesconecta[nSalaChat].SQL.Add('desconexao = ' + QuotedStr('A') + ', ');
      qryChatDesconecta[nSalaChat].SQL.Add('desconexao_mot = ' + IntToStr(nTipo) + ', ');
      qryChatDesconecta[nSalaChat].SQL.Add('duracao = timediff(now(), datahora), ');
      //qryChatDesconecta[nSalaChat].SQL.Add('desconexao_dt = now(), ');
    end;
    qryChatDesconecta[nSalaChat].SQL.Add('duracao_pos = ' + QuotedStr(TimeToStr(Now - dtvChatTempoPosAtendimento[nSalaChat])) + ',');
    qryChatDesconecta[nSalaChat].SQL.Add('observacao = ' + QuotedStr(memChatClassificaObs.Text) + ', ');
    qryChatDesconecta[nSalaChat].SQL.Add('classificacao_auto_act = ' + QuotedStr('Y') + ' ');
    qryChatDesconecta[nSalaChat].SQL.Add('where ');
    qryChatDesconecta[nSalaChat].SQL.Add('id = ' + (matrizchatsala[nSalaChat, 1]));
    qryChatDesconecta[nSalaChat].ExecSQL;
    qryChatDesconecta[nSalaChat].Active := False;

    ClassificaChat(
                  nSalaChat,
                  memChatClassificaObs.Text,
                  TimeToStr(Now - dtvChatTempoPosAtendimento[nSalaChat]),
                  '',
                  IfThen(vChatXFer, 'Y', 'N'),
                  IfThen(vChatXFer, 'Sala', ''),
                  IfThen(vChatXFer, vChatXFerDst, ''),
                  'Y',
                  IfThen(bTimeout, 'T', 'A'),
                  IfThen(TMyCoaching.bCoaching, 'Y', 'N'),
                  IfThen(TMyCoaching.bCoaching, TMyCoaching.sIdCoaching, ''),
                  TMyInfoLogin.sIDSupervisor,
                  '',
                  '',
                  IfThen(vChatDesconexaoCliente, 'C', 'A'),
                  IfThen(vChatDesconexaoCliente, '', IntToStr(vChatClassificandoTipo)),
                  matrizchatsala[nSalaChat, 9],
                  matrizchatsala[nSalaChat, 10],
                  matrizchatsala[nSalaChat, 11],
                  matrizchatsala[nSalaChat, 12],
                  matrizchatsala[nSalaChat, 13],
                  matrizchatsala[nSalaChat, 1]
    );

    LimpaChatPosClassificacao(nSalaChat);
  end
  else
  begin
    mensagem(APP_MB_WAR_CHAT_ALREADY_CLASSIF[ID_LANG]);
    Exit;
  end;
end;

procedure TfrmPrincipal.ImprimeChatHistorico(
                                            pTipoImpressao: Integer;
                                            pQtdLinhas: Integer;
                                            pHistTitulo: String;
                                            pHistNome: String;
                                            pHistTelefone: String;
                                            pHistProtocolo: String;
                                            pHistEMail: String;
                                            pHistSala: String
  );
var
  frmChatHist: TForm;

  pdfChatHistReport: TPReport;
  pdfChatHistPage  : array [1..50] of TPRPage;
  pdfChatHistPanel : array [1..50] of TPRLayoutPanel;
  pdfChatHistImage : array [1..50] of TPRImage;
  pdfChatHistText  : array [1..50] of TPRText;

  pdfChatHistLabelTitulo   : array [1..50] of TPRLabel;
  pdfChatHistLabelPagina   : array [1..50] of TPRLabel;
  pdfChatHistSeparador     : TPRLabel;

  pdfChatHistLabelNome     : TPRLabel;
  pdfChatHistLabelTelefone : TPRLabel;
  pdfChatHistLabelProtocolo: TPRLabel;
  pdfChatHistLabelEMail    : TPRLabel;
  pdfChatHistLabelSala     : TPRLabel;

  pdfChatHistLabelNomeField     : TPRLabel;
  pdfChatHistLabelTelefoneField : TPRLabel;
  pdfChatHistLabelProtocoloField: TPRLabel;
  pdfChatHistLabelEMailField    : TPRLabel;
  pdfChatHistLabelSalaField     : TPRLabel;

  nCountPages: Integer;
  nFor: Integer;
  nForLines: Integer;
  nLastLine: Integer;

  nQtdLinhasPagina: Integer;
  sDirPDF: String;
  sDirImg: String;
begin
  nQtdLinhasPagina := 45;

  Screen.Cursor := crHourGlass;

  nCountPages := 1 + (pQtdLinhas - nQtdLinhasPagina) div (nQtdLinhasPagina);

  frmChatHist := TForm.Create(Application);
  frmChatHist.Visible := False;
  sDirImg := ExtractFilePath(Application.ExeName) + 'img\icoHosanna.png';

  for nFor := 1 to nCountPages do
  begin
    pdfChatHistPage[nFor]         := TPRPage.Create(Self);
    pdfChatHistPage[nFor].Parent  := frmChatHist;
    pdfChatHistPage[nFor].Left    := 5;
    pdfChatHistPage[nFor].Top     := 5;
    pdfChatHistPage[nFor].Visible := True;

    pdfChatHistPanel[nFor]        := TPRLayoutPanel.Create(Self);
    pdfChatHistPanel[nFor].Parent := pdfChatHistPage[nFor];
    pdfChatHistPanel[nFor].Height := pdfChatHistPage[nFor].Height;
    pdfChatHistPanel[nFor].Width  := pdfChatHistPage[nFor].Width;
    pdfChatHistPanel[nFor].Left   := 5;
    pdfChatHistPanel[nFor].Top    := 5;

    pdfChatHistImage[nFor]         := TPRImage.Create(Self);
    pdfChatHistImage[nFor].Parent  := pdfChatHistPanel[nFor];
    pdfChatHistImage[nFor].Height  := 100;
    pdfChatHistImage[nFor].Width   := 200;
    pdfChatHistImage[nFor].Left    := 5;
    pdfChatHistImage[nFor].Top     := 5;
    pdfChatHistImage[nFor].Stretch := False;
    pdfChatHistImage[nFor].SharedImage := True;
    pdfChatHistImage[nFor].Picture.LoadFromFile(sDirImg);
    pdfChatHistImage[nFor].Printable := True;
    pdfChatHistImage[nFor].BringToFront;
    pdfChatHistImage[nFor].Refresh;
    pdfChatHistImage[nFor].Enabled := True;
    pdfChatHistImage[nFor].Show;
    pdfChatHistImage[nFor].Update;
    pdfChatHistImage[nFor].Repaint;

    pdfChatHistLabelTitulo[nFor]          := TPRLabel.Create(Self);
    pdfChatHistLabelTitulo[nFor].Parent   := pdfChatHistPanel[nFor];
    pdfChatHistLabelTitulo[nFor].Left     := 250;
    pdfChatHistLabelTitulo[nFor].Top      := 75;
    pdfChatHistLabelTitulo[nFor].Caption  := pHistTitulo;
    pdfChatHistLabelTitulo[nFor].FontBold := True;

    pdfChatHistLabelPagina[nFor]         := TPRLabel.Create(Self);
    pdfChatHistLabelPagina[nFor].Parent  := pdfChatHistPanel[nFor];
    pdfChatHistLabelPagina[nFor].Left    := 520;
    pdfChatHistLabelPagina[nFor].Top     := 15;
    pdfChatHistLabelPagina[nFor].Caption := 'Pag. ' + IntToStr(nFor) + '/' + IntToStr(nCountPages);

    pdfChatHistText[nFor]          := TPRText.Create(Self);
    pdfChatHistText[nFor].Parent   := pdfChatHistPanel[nFor];
    pdfChatHistText[nFor].Width    := pdfChatHistPage[nFor].Width - 30;
    pdfChatHistText[nFor].Left     := 5;
    if nFor = 1 then
    begin
      pdfChatHistText[nFor].Top      := 180;
      pdfChatHistText[nFor].Height   := pdfChatHistPage[nFor].Height - 200;
    end
    else
    begin
      pdfChatHistText[nFor].Top      := 110;
      pdfChatHistText[nFor].Height   := pdfChatHistPage[nFor].Height - 120;
    end;
    pdfChatHistText[nFor].WordWrap := True;
  end;

  pdfChatHistLabelNome         := TPRLabel.Create(Self);
  pdfChatHistLabelNome.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelNome.Left    := 5;
  pdfChatHistLabelNome.Top     := 105;
  pdfChatHistLabelNome.Caption := 'Nome: ';

  pdfChatHistLabelTelefone         := TPRLabel.Create(Self);
  pdfChatHistLabelTelefone.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelTelefone.Left    := 5;
  pdfChatHistLabelTelefone.Top     := 120;
  pdfChatHistLabelTelefone.Caption := 'Telefone: ';

  pdfChatHistLabelProtocolo         := TPRLabel.Create(Self);
  pdfChatHistLabelProtocolo.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelProtocolo.Left    := 5;
  pdfChatHistLabelProtocolo.Top     := 135;
  pdfChatHistLabelProtocolo.Caption := 'Protocolo: ';

  pdfChatHistLabelEMail         := TPRLabel.Create(Self);
  pdfChatHistLabelEMail.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelEMail.Left    := 300;
  pdfChatHistLabelEMail.Top     := 105;
  pdfChatHistLabelEMail.Caption := 'E-Mail: ';

  pdfChatHistLabelSala         := TPRLabel.Create(Self);
  pdfChatHistLabelSala.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelSala.Left    := 300;
  pdfChatHistLabelSala.Top     := 120;
  pdfChatHistLabelSala.Caption := 'Sala: ';

  pdfChatHistLabelNomeField         := TPRLabel.Create(Self);
  pdfChatHistLabelNomeField.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelNomeField.Left    := 65;
  pdfChatHistLabelNomeField.Top     := 105;
  pdfChatHistLabelNomeField.Caption := pHistNome;

  pdfChatHistLabelTelefoneField         := TPRLabel.Create(Self);
  pdfChatHistLabelTelefoneField.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelTelefoneField.Left    := 65;
  pdfChatHistLabelTelefoneField.Top     := 120;
  pdfChatHistLabelTelefoneField.Caption := pHistTelefone;

  pdfChatHistLabelProtocoloField         := TPRLabel.Create(Self);
  pdfChatHistLabelProtocoloField.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelProtocoloField.Left    := 65;
  pdfChatHistLabelProtocoloField.Top     := 135;
  pdfChatHistLabelProtocoloField.Caption := pHistProtocolo;

  pdfChatHistLabelEMailField         := TPRLabel.Create(Self);
  pdfChatHistLabelEMailField.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelEMailField.Left    := 345;
  pdfChatHistLabelEMailField.Top     := 105;
  pdfChatHistLabelEMailField.Caption := pHistEMail;

  pdfChatHistLabelSalaField         := TPRLabel.Create(Self);
  pdfChatHistLabelSalaField.Parent  := pdfChatHistPanel[1];
  pdfChatHistLabelSalaField.Left    := 345;
  pdfChatHistLabelSalaField.Top     := 120;
  pdfChatHistLabelSalaField.Caption := pHistSala;

  pdfChatHistSeparador         := TPRLabel.Create(Self);
  pdfChatHistSeparador.Parent  := pdfChatHistPanel[1];
  pdfChatHistSeparador.Left    := 5;
  pdfChatHistSeparador.Top     := 155;
  pdfChatHistSeparador.Caption := '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -';

  nLastLine := 0;
  pdfChatHistText[1].Lines.Clear;
  for nForLines := 1 to (nQtdLinhasPagina) do
  begin
    if pTipoImpressao = 1 then
      pdfChatHistText[1].Lines.Add(memChatHistory[vChatClassificandoSala].Lines[nForLines])
    else
      pdfChatHistText[1].Lines.Add(memChatPesquisaHistorico.Lines[nForLines]);

    Inc(nLastLine);
  end;
  Inc(nLastLine);
  if nCountPages >= 2 then
    for nFor := 2 to nCountPages do
    begin
      pdfChatHistText[nFor].Lines.Clear;
      for nForLines := nLastLine to nLastLine + nQtdLinhasPagina + 5 - 1 do
      begin
        if pTipoImpressao = 1 then
          pdfChatHistText[nFor].Lines.Add(memChatHistory[vChatClassificandoSala].Lines[nForLines])
        else
          pdfChatHistText[nFor].Lines.Add(memChatPesquisaHistorico.Lines[nForLines]);
        Inc(nLastLine);
      end;
    end;

  pdfChatHistReport := TPReport.Create(Self);

  sDirPDF := ExtractFilePath(Application.ExeName) + 'arquivos_chat\pdf\';
  if not DirectoryExists(sDirPDF) then
  begin
    ForceDirectories(sDirPDF);
  end;
  pdfChatHistReport.FileName := sDirPDF + 'historico_chat_' + pHistProtocolo + '.pdf';

  pdfChatHistReport.BeginDoc;
  for nFor := 1 to nCountPages do
    pdfChatHistReport.Print(pdfChatHistPage[nFor]);
  pdfChatHistReport.EndDoc;

  try
    frmChatHist.Close;
    frmChatHist.Free;
  except
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmPrincipal.cmdChatSalvarClick(Sender: TObject);
var
  sTemp: String;
  nSalaChat: Integer;
  nFor: Integer;

  tmpEasy_webchat_classificacao_conf_id: String;
  tmpEasy_webchat_classificacao_sub_conf_id: String;
begin
  if vChatClassificando <> 1 then
  begin
    mensagem(APP_MB_WAR_CHAT_ALREADY_CLASSIF[ID_LANG]);
    Exit;
  end;

  sTemp := '';

  if cboChatClassifica.ItemIndex = -1 then
  begin
    sTemp := sTemp + APP_FRM_MAIN_CHAT_SEL_CLASSIFICATION[ID_LANG] + #13;
  end;

  if cboChatClassificaSub.ItemIndex = -1 then
  begin
    sTemp := sTemp + APP_FRM_MAIN_CHAT_SEL_SCLASSIFICATION[ID_LANG] + #13;
  end;

  {
  if Trim(memChatClassificaObs.Text) = '' then
  begin
    sTemp := sTemp + '- Observa��o' + #13;
  end;
  }

  if sTemp <> ''  then
  begin
    mensagem(APP_MB_WAR_PLEASE_FILL[ID_LANG] + sTemp);
    Exit;
  end;

  nSalaChat := vChatClassificandoSala;

  if matrizchatsala[nSalaChat, 0] = IntToStr(CHAT_STATUS_ENDING) then
  begin
    tmpEasy_webchat_classificacao_conf_id := '';
    tmpEasy_webchat_classificacao_sub_conf_id := '';

    for nFor := 0 to vnumchatclassifica-1 do
    begin
      if matrizchatclassifica[1, nFor] = cboChatClassifica.Text then
      begin
        tmpEasy_webchat_classificacao_conf_id := matrizchatclassifica[0, nFor];
        break;
      end;
    end;

    for nFor := 0 to vnumchatclassificasub-1 do
    begin
      if matrizchatclassificasub[1, nFor] = cboChatClassificaSub.Text then
      begin
        tmpEasy_webchat_classificacao_sub_conf_id := matrizchatclassificasub[0, nFor];
        break;
      end;
    end;

    ClassificaChat(
                  nSalaChat,
                  memChatClassificaObs.Text,
                  TimeToStr(Now - dtvChatTempoPosAtendimento[nSalaChat]),
                  '',
                  IfThen(vChatXFer, 'Y', 'N'),
                  IfThen(vChatXFer, 'Sala', ''),
                  IfThen(vChatXFer, vChatXFerDst, ''),
                  'N',
                  '',
                  IfThen(TMyCoaching.bCoaching, 'Y', 'N'),
                  IfThen(TMyCoaching.bCoaching, TMyCoaching.sIdCoaching, ''),
                  TMyInfoLogin.sIDSupervisor,
                  tmpEasy_webchat_classificacao_conf_id,
                  tmpEasy_webchat_classificacao_sub_conf_id,
                  IfThen(vChatDesconexaoCliente, 'C', 'A'),
                  IfThen(vChatDesconexaoCliente, '', IntToStr(vChatClassificandoTipo)),
                  matrizchatsala[nSalaChat, 9],
                  matrizchatsala[nSalaChat, 10],
                  matrizchatsala[nSalaChat, 11],
                  matrizchatsala[nSalaChat, 12],
                  matrizchatsala[nSalaChat, 13],
                  matrizchatsala[nSalaChat, 1]
    );

    LimpaChatPosClassificacao(nSalaChat);
  end
  else
  begin
    mensagem(APP_MB_WAR_CHAT_ALREADY_CLASSIF[ID_LANG]);
    Exit;
  end;
end;

procedure TfrmPrincipal.CriaEMailDinamico(nIndiceEMail: Integer);
var
  sTextoStatusBar: String;
begin
  //painel
  panEMailDinamico[nIndiceEMail]                      := TsPanel.Create(Self);
  panEMailDinamico[nIndiceEMail].BorderStyle          := bsNone;
  panEMailDinamico[nIndiceEMail].Parent               := scrEMailRecebido;
  panEMailDinamico[nIndiceEMail].Height               := 60;
  panEMailDinamico[nIndiceEMail].Left                 := 1;
  if nIndiceEMail = 0 then
    panEMailDinamico[nIndiceEMail].Top                := 51
  else
    panEMailDinamico[nIndiceEMail].Top                := panEMailDinamico[nIndiceEMail - 1].Top + panEMailDinamico[nIndiceEMail - 1].Height;
  panEMailDinamico[nIndiceEMail].Width                := 231;
  panEMailDinamico[nIndiceEMail].Caption              := '';
  panEMailDinamico[nIndiceEMail].Name                 := '';
  panEMailDinamico[nIndiceEMail].SkinData.SkinManager := frmLogin.sSkinManager1;
  panEMailDinamico[nIndiceEMail].Tag                  := nIndiceEMail;
  panEMailDinamico[nIndiceEMail].OnClick              := panEMailDinamicoClick;
  panEMailDinamico[nIndiceEMail].ShowHint             := False;
  panEMailDinamico[nIndiceEMail].Hint                 := '';

  //labels por painel
  lblEMailFrom[nIndiceEMail]                      := TsLabel.Create(Self);
  lblEMailFrom[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  lblEMailFrom[nIndiceEMail].Left                 := 5;
  lblEMailFrom[nIndiceEMail].Top                  := 5;
  lblEMailFrom[nIndiceEMail].Font.Size            := 9;
  lblEMailFrom[nIndiceEMail].Font.Style           := [fsBold];
  lblEMailFrom[nIndiceEMail].Caption              := matrizemails[nIndiceEMail,5];
  lblEMailFrom[nIndiceEMail].AutoSize             := False;
  lblEMailFrom[nIndiceEMail].Width                := 150;
  lblEMailFrom[nIndiceEMail].Tag                  := nIndiceEMail;
  lblEMailFrom[nIndiceEMail].Visible              := True;
  lblEMailFrom[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  lblEMailAssunto[nIndiceEMail]                      := TsLabel.Create(Self);
  lblEMailAssunto[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  lblEMailAssunto[nIndiceEMail].Left                 := 5;
  lblEMailAssunto[nIndiceEMail].Top                  := 25;
  lblEMailAssunto[nIndiceEMail].Font.Size            := 7;
  lblEMailAssunto[nIndiceEMail].Font.Style           := [fsBold];
  lblEMailAssunto[nIndiceEMail].Caption              := matrizemails[nIndiceEMail,7];;
  lblEMailAssunto[nIndiceEMail].AutoSize             := False;
  lblEMailAssunto[nIndiceEMail].Width                := 150;
  lblEMailAssunto[nIndiceEMail].Tag                  := nIndiceEMail;
  lblEMailAssunto[nIndiceEMail].Visible              := True;
  lblEMailAssunto[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  lblEMailDataHora[nIndiceEMail]                      := TsLabel.Create(Self);
  lblEMailDataHora[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  lblEMailDataHora[nIndiceEMail].Left                 := 180;
  lblEMailDataHora[nIndiceEMail].Top                  := 25;
  lblEMailDataHora[nIndiceEMail].Font.Size            := 7;
  lblEMailDataHora[nIndiceEMail].Font.Style           := [];
  lblEMailDataHora[nIndiceEMail].Caption              := matrizemails[nIndiceEMail,1];
  lblEMailDataHora[nIndiceEMail].AutoSize             := True;
  lblEMailDataHora[nIndiceEMail].Tag                  := nIndiceEMail;
  lblEMailDataHora[nIndiceEMail].Visible              := True;
  lblEMailDataHora[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  lblEMailMensagem[nIndiceEMail]                      := TsLabel.Create(Self);
  lblEMailMensagem[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  lblEMailMensagem[nIndiceEMail].Left                 := 5;
  lblEMailMensagem[nIndiceEMail].Top                  := 40;
  lblEMailMensagem[nIndiceEMail].Font.Size            := 7;
  lblEMailMensagem[nIndiceEMail].Font.Style           := [];
  lblEMailMensagem[nIndiceEMail].Caption              := matrizemails[nIndiceEMail,9];
  lblEMailMensagem[nIndiceEMail].AutoSize             := False;
  lblEMailMensagem[nIndiceEMail].Width                := 220;
  lblEMailMensagem[nIndiceEMail].Tag                  := nIndiceEMail;
  lblEMailMensagem[nIndiceEMail].Visible              := True;
  lblEMailMensagem[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  //image
  imgEMailTipo[nIndiceEMail]                      := TImage.Create(Self);
  imgEMailTipo[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  imgEMailTipo[nIndiceEMail].Left                 := 166;
  imgEMailTipo[nIndiceEMail].Width                := 14;
  imgEMailTipo[nIndiceEMail].Height               := 14;
  imgEMailTipo[nIndiceEMail].Top                  := 5;
  imgEMailTipo[nIndiceEMail].Transparent          := True;
  imgEMailTipo[nIndiceEMail].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\EMail\facebook.png');
  imgEMailTipo[nIndiceEMail].Tag                  := nIndiceEMail;
  imgEMailTipo[nIndiceEMail].Visible              := True;
  imgEMailTipo[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  imgEMailRespondido[nIndiceEMail]                      := TImage.Create(Self);
  imgEMailRespondido[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  imgEMailRespondido[nIndiceEMail].Left                 := 181;
  imgEMailRespondido[nIndiceEMail].Width                := 14;
  imgEMailRespondido[nIndiceEMail].Height               := 14;
  imgEMailRespondido[nIndiceEMail].Top                  := 5;
  imgEMailRespondido[nIndiceEMail].Transparent          := True;
  imgEMailRespondido[nIndiceEMail].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\EMail\arrowLeft.png');
  imgEMailRespondido[nIndiceEMail].Tag                  := nIndiceEMail;
  imgEMailRespondido[nIndiceEMail].Visible              := True;
  imgEMailRespondido[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  imgEMailAnexo[nIndiceEMail]                      := TImage.Create(Self);
  imgEMailAnexo[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  imgEMailAnexo[nIndiceEMail].Left                 := 196;
  imgEMailAnexo[nIndiceEMail].Width                := 14;
  imgEMailAnexo[nIndiceEMail].Height               := 14;
  imgEMailAnexo[nIndiceEMail].Top                  := 5;
  imgEMailAnexo[nIndiceEMail].Transparent          := True;
  imgEMailAnexo[nIndiceEMail].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\EMail\paperclip.png');
  imgEMailAnexo[nIndiceEMail].Tag                  := nIndiceEMail;
  imgEMailAnexo[nIndiceEMail].Visible              := True;
  imgEMailAnexo[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  imgEMailCliente[nIndiceEMail]                      := TImage.Create(Self);
  imgEMailCliente[nIndiceEMail].Parent               := panEMailDinamico[nIndiceEMail];
  imgEMailCliente[nIndiceEMail].Left                 := 211;
  imgEMailCliente[nIndiceEMail].Width                := 14;
  imgEMailCliente[nIndiceEMail].Height               := 14;
  imgEMailCliente[nIndiceEMail].Top                  := 5;
  imgEMailCliente[nIndiceEMail].Transparent          := True;
  imgEMailCliente[nIndiceEMail].Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\EMail\adminUser.png');
  imgEMailCliente[nIndiceEMail].Tag                  := nIndiceEMail;
  imgEMailCliente[nIndiceEMail].Visible              := True;
  imgEMailCliente[nIndiceEMail].OnClick              := panEMailDinamicoClick;

  sTextoStatusBar := IntToStr(nIndiceEMail);
  if nIndiceEMail = 0 then
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_TOTAL[ID_LANG]
  else
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_TOTAIS[ID_LANG];

  sTextoStatusBar := sTextoStatusBar + IntToStr(0);
  if 0 = 1 then
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_NAOLIDO[ID_LANG]
  else
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_NAOLIDOS[ID_LANG];

  stbEMail.Caption := sTextoStatusBar;
end;

procedure TfrmPrincipal.panEMailDinamicoClick(Sender: TObject);
var
  nFor: Integer;
begin
  AtivaFlashWindow(False);

  for nFor := 0 to vnumemails-1 do
  begin
    panEMailDinamico[nFor].BorderStyle := bsNone;
  end;

  for nFor := 0 to vnumemails-1 do
  begin
    if (TsLabel(Sender).Tag = nFor) or (TsPanel(Sender).Tag = nFor) or (TImage(Sender).Tag = nFor) then
    begin
      panEMailDinamico[nFor].BorderStyle := bsSingle;

      panEMailRead.Visible := True;
      panEMailWrite.Visible := False;

      lblEMailReadAssunto.Caption     := lblEMailAssunto[nFor].Caption;
      lblEMailReadDe.Caption          := lblEMailFrom[nFor].Caption;
      lblEMailReadDataHoraTxt.Caption := lblEMailDataHora[nFor].Caption;
      lblEMailReadParaTxt.Caption     := 'seinao';
      memEMailReadTexto.Text          := lblEMailMensagem[nFor].Caption;

      break;
    end;


{    if (TsLabel(Sender).Tag = nFor) or (TsPanel(Sender).Tag = nFor) or (TImage(Sender).Tag = nFor) then
    begin
      if vChatClassificando <> 1 then
        if (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_FREE)) and (matrizchatsala[nFor, 0] <> IntToStr(CHAT_STATUS_ENDING)) then
        begin
          imgChatCabecalho[nFor].Visible := False;

          stbChat.Panels[0].Text := APP_FRM_MAIN_CHAT_NAME[ID_LANG] + ' ' + matrizchatsala[nFor, 2];
          stbChat.Panels[1].Text := APP_FRM_MAIN_CHAT_ROOM[ID_LANG] + matrizchatsala[nFor, 6];
          stbChat.Panels[0].Width := panChatHistorico.Width + 2;

          memChatSend.Lines.Text := sChatTextToSend[nFor];

          panChatMessages.Top := panChatDinamico[nFor].Top + panChatDinamico[nFor].Height + 10;
          panChatMessages.Height := panChat.Height - (panChatDinamico[nFor].Top * 2) - panChatDinamico[nFor].Height;
          panChatMessages.Visible := True;

          panChatDinamico[nFor].BorderStyle := bsSingle;
          memChatHistory[nFor].Visible := True;

          if matrizchatsala[nFor, 20] = 'True' then
            radChatSendTo.Enabled := True
          else
            radChatSendTo.Enabled := False;

          TMyChat.nChatAtivo := nFor;
        end
        else
        begin
          stbChat.Panels[0].Text := APP_FRM_MAIN_CHAT_NAME[ID_LANG];
          stbChat.Panels[1].Text := APP_FRM_MAIN_CHAT_ROOM[ID_LANG];
          stbChat.Panels[0].Width := panChatHistorico.Width + 2;

          panChatMessages.Visible := False;

          panChatDinamico[nFor].BorderStyle := bsNone;
          memChatHistory[nFor].Visible := False;
          radChatSendTo.Enabled := False;

          TMyChat.nChatAtivo := -1;
        end;

      Break;
    end}
  end;
end;

procedure TfrmPrincipal.CriaTelaEMail;
var
  sTextoStatusBar: String;
begin
  imgEMailPesquisar.Left                 := 215;
  imgEMailPesquisar.Width                := 14;
  imgEMailPesquisar.Height               := 14;
  imgEMailPesquisar.Top                  := 30;
  imgEMailPesquisar.Transparent          := True;
  imgEMailPesquisar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\img\EMail\magnify.png');
  imgEMailPesquisar.Visible              := True;

  //shaEMailLine.Height := tabEMail.Height - 20;

  txtEMailPesquisar.Text := APP_FRM_MAIN_EMAIL_READ_PESQUISAR_TXT[ID_LANG];
  imgEMailPesquisar.Hint := APP_FRM_MAIN_EMAIL_READ_PESQUISAR_CMD[ID_LANG];
  imgEMailPesquisar.ShowHint := True;

  panEMailRead.Align := alClient;
  panEMailWrite.Align := alClient;

  txtEMailRespDe.Width := panEMailPrincipal.Width - 130;
  txtEMailRespPara.Width := panEMailPrincipal.Width - 130;
  txtEMailRespCc.Width := panEMailPrincipal.Width - 130;
  txtEMailRespCco.Width := panEMailPrincipal.Width - 130;
  txtEMailRespAssunto.Width := panEMailPrincipal.Width - 130;

  memEMailRespTexto.Height := panEMailPrincipal.Height - 145;
  memEMailRespTexto.Width := panEMailPrincipal.Width - 20;

  cmdEMailRespEnviar.Caption := APP_FRM_MAIN_EMAIL_SEND_CMD[ID_LANG];
  cmdEMailRespCancelar.Caption := APP_FRM_MAIN_EMAIL_SEND_CANCELAR[ID_LANG];
  lblEMailRespDe.Caption := APP_FRM_MAIN_EMAIL_SEND_DE[ID_LANG];
  lblEMailRespPara.Caption := APP_FRM_MAIN_EMAIL_SEND_PARA[ID_LANG] + '...';
  lblEMailRespCc.Caption := APP_FRM_MAIN_EMAIL_SEND_CC[ID_LANG];
  lblEMailRespCco.Caption := APP_FRM_MAIN_EMAIL_SEND_CCO[ID_LANG];
  lblEMailRespAssunto.Caption := APP_FRM_MAIN_EMAIL_SEND_ASSUNTO[ID_LANG];

  memEMailReadTexto.Height := panEMailPrincipal.Height - 125;
  memEMailReadTexto.Width := panEMailPrincipal.Width - 20;
  lblEMailReadDataHora.Caption := APP_FRM_MAIN_EMAIL_READ_DATAHORA[ID_LANG] + ':';
  lblEMailReadPara.Caption := APP_FRM_MAIN_EMAIL_SEND_PARA[ID_LANG] + ':';

  sTextoStatusBar := IntToStr(vnumemails);
  if vnumemails = 1 then
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_TOTAL[ID_LANG]
  else
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_TOTAIS[ID_LANG];

  sTextoStatusBar := sTextoStatusBar + IntToStr(0);
  if 0 = 1 then
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_NAOLIDO[ID_LANG]
  else
    sTextoStatusBar := sTextoStatusBar + APP_FRM_MAIN_EMAIL_NAOLIDOS[ID_LANG];

  stbEMail.Caption := sTextoStatusBar;
end;

procedure TfrmPrincipal.NotificaTrayIcon(Msg: String; Timeout: Integer; Flag: Integer);
begin
  tryPrincipal.Visible := False;
  tmrTryPrincipal.Enabled := False;
  tmrTryPrincipal.Interval := Timeout + 100;

  tryPrincipal.BalloonTimeout := Timeout;
  tryPrincipal.BalloonTitle := frmPrincipal.Caption;
  tryPrincipal.BalloonHint := #13#10 + Msg;

  case Flag of
    1: tryPrincipal.BalloonFlags := bfInfo;
    2: tryPrincipal.BalloonFlags := bfWarning;
    3: tryPrincipal.BalloonFlags := bfError;
  end;

  tryPrincipal.Visible := True;
  tryPrincipal.ShowBalloonHint;

  tmrTryPrincipal.Enabled := True;
end;

procedure TfrmPrincipal.ClearImgCallQuality(bRealign: Boolean);
begin
  if bRealign then
  begin
    lblCallQuality.Caption := APP_FRM_MAIN_CALL_QUALITY[ID_LANG];

    imlCallQuality.GetBitmap(1, imgCallQ1.Picture.Bitmap);
    imlCallQuality.GetBitmap(1, imgCallQ2.Picture.Bitmap);
    imlCallQuality.GetBitmap(1, imgCallQ3.Picture.Bitmap);
    imlCallQuality.GetBitmap(1, imgCallQ4.Picture.Bitmap);
    imlCallQuality.GetBitmap(1, imgCallQ5.Picture.Bitmap);

    imgCallQ1.Left := lblCallQuality.Left + lblCallQuality.Width + 5;
    imgCallQ2.Left := imgCallQ1.Left + 20;
    imgCallQ3.Left := imgCallQ2.Left + 20;
    imgCallQ4.Left := imgCallQ3.Left + 20;
    imgCallQ5.Left := imgCallQ4.Left + 20;

    TMyAppStatus.nCallQuality := 0;
  end;

  try
    imgCallQ1.Repaint;
    imgCallQ1.Refresh;
  except
  end;

  try
    imgCallQ2.Repaint;
    imgCallQ2.Refresh;
  except
  end;

  try
    imgCallQ3.Repaint;
    imgCallQ3.Refresh;
  except
  end;

  try
    imgCallQ4.Repaint;
    imgCallQ4.Refresh;
  except
  end;

  try
    imgCallQ5.Repaint;
    imgCallQ5.Refresh;
  except
  end;
end;

end.
