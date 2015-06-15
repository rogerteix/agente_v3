unit untdm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset, Dialogs,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ZStoredProcedure,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWExtCtrls, StrUtils;

type
  Tdatam = class(TDataModule)
    con_connect: TZConnection;
    qryLogin: TZQuery;
    qr_carrega_pausa: TZQuery;
    qr_verifica_pausa: TZQuery;
    qr_carrega_sites: TZQuery;
    qry_carrega_class_fila: TZQuery;
    qryGravaClassificacao: TZQuery;
    qryTempoFila: TZQuery;
    qr_verifica_logoff: TZQuery;
    qr_carrega_integrador: TZQuery;
    qry_has_fila: TZQuery;
    qr_update_pausa_restritiva: TZQuery;
    qr_verifica_pausa_restritiva: TZQuery;
    qr_verifica_pausa_quantidade: TZQuery;
    qr_carrega_xfer_ura: TZQuery;
    qryCarregaXFerFila: TZQuery;
    qryVerificaLoginAtivo: TZQuery;
    qry_operacao_has_parametros: TZQuery;
    qry_carrega_LogCallStep: TZQuery;
    qry_carrega_class_operacao: TZQuery;
    qryCarregaXFerRamal: TZQuery;
    qr_carrega_xfer_pesquisa: TZQuery;
    qryChatQueue: TZQuery;
    conChatQueue: TZConnection;
    qryChatCarrega: TZQuery;
    qryChatCarregaRespGrupo: TZQuery;
    qryChatCarregaResp: TZQuery;
    qryChangePass: TZQuery;
    qryChatUpdateDash: TZQuery;
    dtsChatPesquisaHist: TDataSource;
    qryChatPesquisaHist: TZQuery;
    qryChatPesquisaHistMsg: TZQuery;
    qryUpdateStatus: TZQuery;
    qrySistemaVersao: TZQuery;
    qryFaqGrupoConf: TZQuery;
    qry_nregistro_hist: TZQuery;
    qryConferencia: TZQuery;
    qryConferenciaTipoNInterno: TZQuery;
    qry_has_pause: TZQuery;
    qry_has_classif_fila: TZQuery;
    qry_has_pausarestritiva: TZQuery;
    qryLoginSup: TZQuery;
    qryChatCarregaConf: TZQuery;
    qryCarregaCoaching: TZQuery;
    qryUpdateCoaching: TZQuery;
    qryCarregaFilas: TZQuery;
    qrySistemaLogado: TZQuery;
    qr_carrega_xfer_virtual: TZQuery;
    qryCentroCusto: TZQuery;
    qryAtualizaQualidade: TZQuery;
    qr_carrega_xfer_consulta: TZQuery;
    qryCarregaLoja: TZQuery;
    qryUpdateRejectCall: TZQuery;
    qryCarregaEMails: TZQuery;
    qryUserFila: TZQuery;
    qryChatCarregaSala: TZQuery;
    qryChatCarregaTrans: TZQuery;
    qry_carrega_class_fila_sub: TZQuery;
    qryFaqRespConf: TZQuery;
    qryConferenciaTipoNExterno: TZQuery;
    qryCarregaTimeEquipe: TZQuery;
    ZConnection1: TZConnection;
    qryCarregaTimeEquipeHr_Calc_MSG: TTimeField;
    qryCarregaTimeEquipeHr_Saida: TTimeField;
    qryCarregaTimeEquipeHr_MSG: TTimeField;
    qryCarregaTimeEquipeHr_Entrada: TTimeField;
    qryCarregaTimeEquipeAvisaouNao: TBooleanField;
    qryCarregaTimeEquipeMsg: TMemoField;
    QryOpen: TZQuery;
    procedure qryUserFilaBeforeOpen(DataSet: TDataSet);
    procedure qryUserFilaAfterOpen(DataSet: TDataSet);
    procedure qryCarregaXFerFilaBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaFilasBeforeOpen(DataSet: TDataSet);
    procedure qryChatCarregaConfBeforeOpen(DataSet: TDataSet);
    procedure qryChatCarregaSalaBeforeOpen(DataSet: TDataSet);
    procedure qryChatCarregaTransBeforeOpen(DataSet: TDataSet);
    procedure qryChatCarregaRespBeforeOpen(DataSet: TDataSet);
    procedure qryChatCarregaRespGrupoBeforeOpen(DataSet: TDataSet);
    procedure qry_carrega_class_filaBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_pausaBeforeOpen(DataSet: TDataSet);
    procedure qry_carrega_class_fila_subBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaLojaBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_xfer_uraBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_xfer_pesquisaBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_xfer_virtualBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_xfer_consultaBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_sitesBeforeOpen(DataSet: TDataSet);
    procedure qr_carrega_integradorBeforeOpen(DataSet: TDataSet);
    procedure qryFaqGrupoConfBeforeOpen(DataSet: TDataSet);
    procedure qryFaqRespConfBeforeOpen(DataSet: TDataSet);
    procedure qryConferenciaTipoNExternoBeforeOpen(DataSet: TDataSet);
    procedure qryConferenciaBeforeOpen(DataSet: TDataSet);
    procedure qryConferenciaTipoNInternoBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaCoachingBeforeOpen(DataSet: TDataSet);
    procedure qry_operacao_has_parametrosBeforeOpen(DataSet: TDataSet);
    procedure qryCentroCustoBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaEMailsBeforeOpen(DataSet: TDataSet);
    procedure qry_carrega_LogCallStepBeforeOpen(DataSet: TDataSet);
    procedure qryChatPesquisaHistBeforeOpen(DataSet: TDataSet);
    procedure qryTempoFilaBeforeOpen(DataSet: TDataSet);
    procedure qryVerificaLoginAtivoBeforeOpen(DataSet: TDataSet);

    procedure qryChatRead01BeforeOpen(DataSet: TDataSet);
    procedure qryChatRead02BeforeOpen(DataSet: TDataSet);
    procedure qryChatRead03BeforeOpen(DataSet: TDataSet);
    procedure qryChatRead04BeforeOpen(DataSet: TDataSet);

    procedure qryChatDesconecta01BeforeOpen(DataSet: TDataSet);
    procedure qryChatDesconecta02BeforeOpen(DataSet: TDataSet);
    procedure qryChatDesconecta03BeforeOpen(DataSet: TDataSet);
    procedure qryChatDesconecta04BeforeOpen(DataSet: TDataSet);

    procedure qryChatXFer01BeforeOpen(DataSet: TDataSet);
    procedure qryChatXFer02BeforeOpen(DataSet: TDataSet);

    procedure qryChatSup01BeforeOpen(DataSet: TDataSet);

    procedure qryChatUpdateDash01BeforeOpen(DataSet: TDataSet);
    procedure qryChatUpdateDash02BeforeOpen(DataSet: TDataSet);
    procedure qryChatUpdateDash03BeforeOpen(DataSet: TDataSet);

    procedure qryChatWriteBeforeOpen(DataSet: TDataSet);
    procedure qrySistemaVersaoBeforeOpen(DataSet: TDataSet);
    procedure qrySistemaLogadoBeforeOpen(DataSet: TDataSet);
    procedure qryLoginBeforeOpen(DataSet: TDataSet);
    procedure qryChatPesquisaHistMsgBeforeOpen(DataSet: TDataSet);
    procedure qryChatBlobGet01BeforeOpen(DataSet: TDataSet);
    procedure qryChatBlobGet02BeforeOpen(DataSet: TDataSet);
    procedure qryAtualizaQualidadeBeforeOpen(DataSet: TDataSet);
    procedure qryUpdateStatusBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaXFerRamalBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaTimeEquipeBeforeOpen(DataSet: TDataSet);
    procedure qryCarregaTimeEquipeCalcFields(DataSet: TDataSet);

    // QryOpen :: Generics
    procedure OpenSQLVerFilaBeforeOpen(DataSet: TDataSet);
    procedure OpenSQLVerClassUnivBeforeOpen(DataSet: TDataSet);
    procedure OpenSQLVerPausaBeforeOpen(DataSet: TDataSet);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  datam: Tdatam;

implementation
  uses untLibrary, untFuncoes;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure Tdatam.qryCarregaTimeEquipeBeforeOpen(DataSet: TDataSet);
begin
  //qryAtualizaQualidade.
  with TZQuery(DataSet) do
  begin
   SQL.Clear;

   SQL.Add('SELECT IF(c.horario_entrada < w.horario_entrada, c.horario_entrada, w.horario_entrada)                       AS Hr_Entrada,');
   SQL.Add('       IF(c.horario_saida   > w.horario_saida, c.horario_saida, w.horario_saida)                             AS Hr_Saida,  ');
   SQL.Add('       w.avisar_saida_act                                                                                    AS AvisaouNao,');
   SQL.Add('       w.avisar_saida_tmp                                                                                    AS Hr_MSG,    ');
   SQL.Add('       w.avisar_saida_msg                                                                                    AS Msg        ');
   SQL.Add('FROM easy_work_colaborador_conf c                                                                                          ');
   SQL.Add('     LEFT JOIN easy_work_equipe_worktime_conf w ON c.easy_work_equipe_conf_id = w.easy_work_equipe_conf_id                 ');
   SQL.Add('WHERE TRUE                                                                                                                 ');
   SQL.Add(' and w.cdata = '+IntToStr(DayOfWeek(dbDate)-1)                                                                                );
   SQL.Add(' and c.easy_work_equipe_conf_id = ' +IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id)                                       );
   SQL.Add(' and c.id = ' + TMyInfoLogin.sIDUsuario                                                                                     );

   // Se a pasta Exitir gravar o arquivo SQL nesta pasta
   if DirectoryExists(Agente.PathArqTxtSQL) then
     SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;


end;

procedure Tdatam.qryCarregaTimeEquipeCalcFields(DataSet: TDataSet);
begin

  TZQuery(DataSet).FieldByName('Hr_Calc_MSG').AsDateTime := TZQuery(DataSet).FieldByName('Hr_Saida').AsDateTime-TZQuery(DataSet).FieldByName('Hr_MSG').AsDateTime;
//  ShowMessage('ENTRADA: '+FormatDateTime('DD.MM.YYYY "As" HH:MM:SS', TZQuery(DataSet).FieldByName('Hr_Entrada').AsDateTime)+#13+
//              'SAIDA: '+FormatDateTime('DD.MM.YYYY "As" HH:MM:SS', TZQuery(DataSet).FieldByName('Hr_Saida').AsDateTime)+#13+
//              'MSG: '+FormatDateTime('DD.MM.YYYY "As" HH:MM:SS', TZQuery(DataSet).FieldByName('Hr_MSG').AsDateTime)+#13+
//              'CALC: '+FormatDateTime('DD.MM.YYYY "As" HH:MM:SS', TZQuery(DataSet).FieldByName('Hr_Calc_MSG').AsDateTime));
end;

procedure Tdatam.qryAtualizaQualidadeBeforeOpen(DataSet: TDataSet);
begin
  //qryAtualizaQualidade.
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('update easy_work_colaborador_conf set ');
    SQL.Add('qualidade_plogin_act = ' + QuotedStr('N') + ', ');
    SQL.Add('qualidade_plogin = now() ');
    SQL.Add('where id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaCoachingBeforeOpen(DataSet: TDataSet);
begin
  // qryCarregaCoaching
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select u.id, u.descricao                                                               ');
    SQL.Add('from easy_work_colaborador_conf u                                                      ');
    SQL.Add('left join easy_sist_usuario_perfil_conf p on u.easy_sist_usuario_perfil_conf_id = p.id ');
    SQL.Add('where true                                                                             ');
    SQL.Add('and u.active = ' + QuotedStr('Y')                                                       );
    SQL.Add('and p.active = ' + QuotedStr('Y')                                                       );
    SQL.Add('and p.tipo in (4, 5)                                                                   ');
    SQL.Add('and u.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa                           );

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaEMailsBeforeOpen(DataSet: TDataSet);
begin
  // qryCarregaEMails
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select                                                                                                                                      ');
    SQL.Add('	h.id,                                                                                                                                      ');
    SQL.Add('	h.data,                                                                                                                                    ');
    SQL.Add('	h.hora,                                                                                                                                    ');
    SQL.Add('	(case                                                                                                                                      ');
    SQL.Add('		when h.canal in (4, 5) then "Email"                                                                                                      ');
    SQL.Add('		when h.canal = 7 then "Facebook"                                                                                                         ');
    SQL.Add('		when h.canal = 8 then "Twitter"                                                                                                          ');
    SQL.Add('		when h.canal = 9 then "ReclameAqui"                                                                                                      ');
    SQL.Add('		else "Outros"                                                                                                                            ');
    SQL.Add('	 end) as Canal,                                                                                                                            ');
    SQL.Add('	(case                                                                                                                                      ');
    SQL.Add('		when h.queuestatus = 0 then "Nao Lido"                                                                                                   ');
    SQL.Add('		when h.queuestatus = 1 then "Lido"                                                                                                       ');
    SQL.Add('		when h.queuestatus = 2 then "Lixeira"                                                                                                    ');
    SQL.Add('		when h.queuestatus = 3 then "Span"                                                                                                       ');
    SQL.Add('		when h.queuestatus = 4 then "Respondido"                                                                                                 ');
    SQL.Add('		when h.queuestatus = 6 then "Encaminhado"                                                                                                ');
    SQL.Add('		else "Outros"                                                                                                                            ');
    SQL.Add('	 end) as Status,                                                                                                                           ');
    SQL.Add('	h.cliente_nome,                                                                                                                            ');
    SQL.Add('	h.cliente_mail,                                                                                                                            ');
    SQL.Add('	f.descricao as Assunto,                                                                                                                  ');
    SQL.Add('	"0" as Anexo,                                                                                                                            ');
    SQL.Add('	"Texto" as Mensagem                                                                                                                      ');
    SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist h                                                                            ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_form_conf f on h.easy_pabx_serv_fila_universal_ctr_id = f.easy_pabx_serv_fila_universal_ctr_id ');
    SQL.Add('where true                                                                                                                                  ');
    SQL.Add('  and h.canal in (4, 5)                                                                                                                     ');
    SQL.Add('  and easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario)                                                                 );
    SQL.Add('  and h.data >= DATE_ADD(NOW(), INTERVAL -10 DAY)                                                                                           ');

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaFilasBeforeOpen(DataSet: TDataSet);
begin

  // qryCarregaFilas
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('(SELECT	c1.id AS codigo,                                                                                    ');
    SQL.Add('	CONCAT(c1.descricao," - ", c2.descricao) AS fila                                                            ');
    SQL.Add('FROM easy_work_colaborador_has_pabx_serv_fila_universal a                                                    ');
    SQL.Add('	    LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id        ');
    SQL.Add('	    LEFT JOIN easy_pabx_serv_fila_universal_call_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
    SQL.Add('	    LEFT JOIN easy_work_colaborador_conf c ON a.easy_work_colaborador_conf_id = c.id                        ');
    SQL.Add('WHERE                                                                                                        ');
    SQL.Add('	c1.active = ' + QuotedStr('Y')                                                                               );
    SQL.Add('	AND c2.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('	AND a.active = ' + QuotedStr('Y')                                                                            );
    SQL.Add('	AND a.fone_atendimento_act = ' + QuotedStr('Y')                                                              );
    SQL.Add('and a.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario                                             );
    SQL.Add('GROUP BY 1)                                                                                                  ');
    SQL.Add('UNION                                                                                                        ');
    SQL.Add('(SELECT c1.id AS codigo,                                                                                     ');
    SQL.Add('       CONCAT(c1.descricao," - ", c2.descricao) AS fila                                                      ');
    SQL.Add('FROM easy_work_equipe_has_fila a                                                                             ');
    SQL.Add('	    LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id        ');
    SQL.Add('	    LEFT JOIN easy_pabx_serv_fila_universal_call_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
    SQL.Add('WHERE   (c1.id NOT IN (SELECT d.id                                                                           ');
    SQL.Add('    		         FROM easy_work_colaborador_has_pabx_serv_fila_universal e                                    ');
    SQL.Add('    		         LEFT JOIN easy_pabx_serv_fila_universal_ctr d ON e.easy_pabx_serv_fila_universal_ctr_id = d.id');
    SQL.Add('   		        WHERE e.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario+'))                       ');
    SQL.Add('	AND c1.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('	AND c2.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('	AND a.active = ' + QuotedStr('Y')                                                                            );
    SQL.Add('	AND a.fone_atendimento_act = ' + QuotedStr('Y')                                                              );
    SQL.Add('	AND a.easy_work_equipe_conf_id = ' +IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id)                         );
    SQL.Add('GROUP BY 1)                                                                                                  ');
    SQL.Add('ORDER BY 2 ASC;                                                                                              ');

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaLojaBeforeOpen(DataSet: TDataSet);
begin
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select                                                 ');
    SQL.Add('id, descricao                                          ');
    SQL.Add('from                                                   ');
    SQL.Add('easy_call_empresa_loja_conf                            ');
    SQL.Add('where                                                  ');
    SQL.Add('easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa );

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaXFerFilaBeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('(                                                                                                             ');
    SQL.Add('SELECT c1.id as codigo,                                                                                       ');
    SQL.Add('       concat(c1.descricao," - ", c2.descricao) as fila                                                       ');
    SQL.Add('FROM easy_work_colaborador_has_pabx_serv_fila_universal a                                                     ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id         ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_call_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id  ');
    SQL.Add('     left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id                         ');
    SQL.Add('WHERE c1.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('  and c2.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('  and a.active = '  + QuotedStr('Y')                                                                            );
    SQL.Add('  and a.fone_transferencia_act = ' + QuotedStr('Y')                                                            );
    SQL.Add('  and a.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario                                            );
    SQL.Add('GROUP by c1.id                                                                                                ');
    SQL.Add(')                                                                                                             ');
    SQL.Add('UNION                                                                                                         ');
    SQL.Add('(                                                                                                             ');
    SQL.Add('SELECT c1.id AS codigo,                                                                                       ');
    SQL.Add('       CONCAT(c1.descricao," - ", c2.descricao) AS fila                                                       ');
    SQL.Add('FROM easy_work_equipe_has_fila a                                                                              ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id         ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_call_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id  ');
    SQL.Add('WHERE   (c1.id NOT IN (SELECT d.id                                                                            ');
    SQL.Add('    		         FROM easy_work_colaborador_has_pabx_serv_fila_universal e                                     ');
    SQL.Add('    		         LEFT JOIN easy_pabx_serv_fila_universal_ctr d ON e.easy_pabx_serv_fila_universal_ctr_id = d.id');
    SQL.Add('   		        WHERE e.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario+'))                         ');
    SQL.Add('	AND c1.active = ' + QuotedStr('Y')                                                                            );
    SQL.Add('  and c2.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('  and a.active = ' + QuotedStr('Y')                                                                            );
    SQL.Add('  and a.fone_transferencia_act = ' + QuotedStr('Y')                                                            );
    SQL.Add('	and a.easy_work_equipe_conf_id = ' +IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id)                          );
    SQL.Add('GROUP BY 1                                                                                                    ');
    SQL.Add(')                                                                                                             ');
    SQL.Add('ORDER BY 2 ASC                                                                                                ');

    // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCarregaXFerRamalBeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('select '                                                                               );
    SQL.Add('g.easy_work_colaborador_conf_id as id, '                                               );
    SQL.Add('u.descricao '                                                                          );
    SQL.Add('from easy_work_colaborador_has_grupo g '                                               );
    SQL.Add('     left join easy_work_colaborador_conf u on g.easy_work_colaborador_conf_id = u.id ');
    SQL.Add('where g.active = ' + QuotedStr('Y')                                                    );
    SQL.Add('  and g.easy_call_grupo_conf_id in ( '                                                 );
    SQL.Add('                                     select g2.easy_call_grupo_conf_id '               );
    SQL.Add('                                     from easy_work_colaborador_has_grupo g2 '         );
    SQL.Add('                                     where true '                                      );
    SQL.Add('                                       and g2.active = ' + QuotedStr('Y')              );
    SQL.Add('                                       and g2.easy_work_colaborador_conf_id = '+
                                                                  QuotedStr(TMyInfoLogin.sIDUsuario));
    SQL.Add('                                   ) '                                                 );
    SQL.Add('and g.easy_work_colaborador_conf_id not in (' + QuotedStr(TMyInfoLogin.sIDUsuario)     );
    SQL.Add(') group by g.easy_work_colaborador_conf_id '                                           );
    SQL.Add('order by u.descricao asc '                                                             );
      // Se a pasta Exitir gravar o arquivo SQL nesta pasta
    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryCentroCustoBeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('select r.id,                                                                                              ');
    SQL.Add('       r.descricao                                                                                        ');
    SQL.Add('from easy_call_operacao_has_pabx_serv_rota_inteligente i                                                  ');
    SQL.Add('     left join easy_pabx_serv_rota_inteligente_conf r on i.easy_pabx_serv_rota_inteligente_conf_id = r.id ');
    SQL.Add('where true                                                                                                ');
    SQL.Add('  and i.active = ' + QuotedStr('Y')                                                                        );
    SQL.Add('  and r.active = ' + QuotedStr('Y')                                                                        );
    SQL.Add('  and i.easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao + ' '                                    );
    SQL.Add('order by r.descricao asc                                                                                  ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;

end;

procedure Tdatam.qryChatBlobGet01BeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Clear;

    SQL.Add('select id,                                                            ');
    SQL.Add('       fname,                                                         ');
    SQL.Add('       descricao,                                                     ');
    SQL.Add('       date_format(now(), "%H:%i:%s %p") as data                      ');
    SQL.Add('from easy_core_contatos_msg_arq_hist                                  ');
    SQL.Add('where easy_core_contatos_ctrl_id = :IdSala'                            );
    SQL.Add('  and active = '+QuotedStr('Y')                                        );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;


end;

procedure Tdatam.qryChatBlobGet02BeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Clear;

    SQL.Add('update easy_core_contatos_msg_arq_hist set ');
    SQL.Add('active = ' + QuotedStr('N')                 );
    SQL.Add('where id = :IdBlob'                         );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;


end;

procedure Tdatam.qryChatCarregaConfBeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('(                                                                                                                  ');
    SQL.Add('SELECT c1.id AS sala,                                                                                              ');
    SQL.Add('	   c2.wrapuptime AS wrapuptime,                                                                                   ');
    SQL.Add('	   c2.desconexao_auto_act AS desconexao_msg_act,                                                                  ');
    SQL.Add('	   c2.desconexao_auto_tmp,                                                                                        ');
    SQL.Add('	   c2.desconexao_auto_msg AS desconexao_msg_txt                                                                   ');
    SQL.Add('FROM easy_work_colaborador_has_pabx_serv_fila_universal a                                                          ');
    SQL.Add('	 LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id                 ');
    SQL.Add('	 LEFT JOIN easy_pabx_serv_fila_universal_chat_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id          ');
    SQL.Add('	 LEFT JOIN easy_work_colaborador_conf c ON a.easy_work_colaborador_conf_id = c.id                                 ');
    SQL.Add('WHERE c1.active = '     + QuotedStr('Y')                                                                                );
    SQL.Add('      AND c2.active = ' + QuotedStr('Y')                                                                            );
    SQL.Add('      AND a.active = '  + QuotedStr('Y')                                                                             );
    SQL.Add('      AND a.chat_atendimento_act = ' + QuotedStr('Y')                                                               );
    SQL.Add('      AND a.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario                                             );
    SQL.Add('GROUP BY c1.id                                                                                                     ');
    SQL.Add(')                                                                                                                  ');
    SQL.Add('UNION                                                                                                              ');
    SQL.Add('(                                                                                                                  ');
    SQL.Add('SELECT c1.id AS sala,                                                                                              ');
    SQL.Add('	   c2.wrapuptime AS wrapuptime,                                                                                   ');
    SQL.Add('	   c2.desconexao_auto_act AS desconexao_msg_act,                                                                  ');
    SQL.Add('	   c2.desconexao_auto_tmp,                                                                                        ');
    SQL.Add('	   c2.desconexao_auto_msg AS desconexao_msg_txt                                                                   ');
    SQL.Add('FROM easy_work_equipe_has_fila a                                                                                   ');
    SQL.Add('	 LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id                 ');
    SQL.Add('	 LEFT JOIN easy_pabx_serv_fila_universal_chat_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id          ');
    SQL.Add('WHERE (c1.id NOT IN (SELECT d.id                                                                                   ');
    SQL.Add('                     FROM easy_work_colaborador_has_pabx_serv_fila_universal e                                     ');
    SQL.Add('        		         LEFT JOIN easy_pabx_serv_fila_universal_ctr d ON e.easy_pabx_serv_fila_universal_ctr_id = d.id ');
    SQL.Add('   		        WHERE e.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario+'))                             ');
    SQL.Add(' AND c1.active = ' + QuotedStr('Y')                                                                                 );
    SQL.Add(' AND c2.active = ' + QuotedStr('Y')                                                                                 );
    SQL.Add(' AND a.active = '  + QuotedStr('Y')                                                                                  );
    SQL.Add(' AND a.chat_atendimento_act = ' + QuotedStr('Y')                                                                    );
    SQL.Add('	AND a.easy_work_equipe_conf_id = ' +IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id)                               );
    SQL.Add('GROUP BY c1.id                                                                                                     ');
    SQL.Add(')                                                                                                                  ');
    SQL.Add('order by 1 asc                                                                                                     ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;

end;

procedure Tdatam.qryChatCarregaRespBeforeOpen(DataSet: TDataSet);
begin

  // qryChatCarregaResp
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('select                                                                                                     ');
    SQL.Add('g.id,                                                                                                      ');
    SQL.Add('g.descricao                                                                                                ');
    SQL.Add('from easy_pabx_serv_fila_universal_chat_conf_has_resposta_grupo a                                          ');
    SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf f on a.easy_pabx_serv_fila_universal_chat_conf_id = f.id ');
    SQL.Add('left join easy_call_resposta_rapida_grupo_conf g on a.easy_call_resposta_rapida_grupo_conf_id = g.id       ');
    SQL.Add('where true                                                                                                 ');
    SQL.Add('and a.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('and g.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('and f.active = ' + QuotedStr('Y')                                                                           );
    SQL.Add('and f.id in (' + Agente.SQL.sChatFilaIn + ')                                                               ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatCarregaRespGrupoBeforeOpen(DataSet: TDataSet);
begin

  // qryChatCarregaRespGrupo
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Clear;
    SQL.Add('select                                                                                           ');
    SQL.Add('m.id,                                                                                            ');
    SQL.Add('m.descricao,                                                                                     ');
    SQL.Add('m.mensagem,                                                                                      ');
    SQL.Add('a.easy_call_resposta_rapida_grupo_conf_id                                                        ');
    SQL.Add('from                                                                                             ');
    SQL.Add('easy_call_resposta_rapida_msg_has_grupo a                                                        ');
    SQL.Add('left join easy_call_resposta_rapida_msg_conf m on a.easy_call_resposta_rapida_msg_conf_id = m.id ');
    SQL.Add('where true                                                                                       ');
    SQL.Add('  and a.active = ' + QuotedStr('Y')                                                               );
    SQL.Add('  and m.active = ' + QuotedStr('Y')                                                               );
    SQL.Add('  and a.easy_call_resposta_rapida_grupo_conf_id in (' + Agente.SQL.sRespChatIn + ')                         ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;

end;

procedure Tdatam.qryChatCarregaSalaBeforeOpen(DataSet: TDataSet);
begin

  // qryChatCarregaSala
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('(                                                                                                                  ');
    SQL.Add('SELECT c1.id as sala,                                                                                              ');
    SQL.Add('       concat(c1.descricao," - ", c2.descricao) as descricao                                                       ');
    SQL.Add('FROM easy_work_colaborador_has_pabx_serv_fila_universal a                                                          ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id              ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_chat_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id       ');
    SQL.Add('WHERE  c1.active = ' + QuotedStr('Y')                                                                               );
    SQL.Add('  and c2.active = ' + QuotedStr('Y')                                                                                );
    SQL.Add('  and a.active = ' + QuotedStr('Y')                                                                                 );
    SQL.Add('  and a.chat_atendimento_act = ' + QuotedStr('Y')                                                                   );
    SQL.Add('  and a.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario                                                 );
    SQL.Add('GROUP BY c1.id                                                                                                     ');
    SQL.Add(')                                                                                                                  ');
    SQL.Add('UNION                                                                                                              ');
    SQL.Add('(                                                                                                                  ');
    SQL.Add('SELECT c1.id as sala,                                                                                              ');
    SQL.Add('       concat(c1.descricao," - ", c2.descricao) as descricao                                                       ');
    SQL.Add('FROM easy_work_equipe_has_fila a                                                                                   ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_ctr c1 ON a.easy_pabx_serv_fila_universal_ctr_id = c1.id              ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_chat_conf c2 ON c1.id = c2.easy_pabx_serv_fila_universal_ctr_id       ');
    SQL.Add('WHERE (c1.id NOT IN (SELECT d.id                                                                                   ');
    SQL.Add('                     FROM easy_work_colaborador_has_pabx_serv_fila_universal e                                     ');
    SQL.Add('        		         LEFT JOIN easy_pabx_serv_fila_universal_ctr d ON e.easy_pabx_serv_fila_universal_ctr_id = d.id ');
    SQL.Add('   		        WHERE e.easy_work_colaborador_conf_id = ' + TMyInfoLogin.sIDUsuario+'))                             ');
    SQL.Add(' AND c1.active = ' + QuotedStr('Y')                                                                                 );
    SQL.Add(' AND c2.active = ' + QuotedStr('Y')                                                                                 );
    SQL.Add(' AND a.active = '  + QuotedStr('Y')                                                                                 );
    SQL.Add(' AND a.chat_atendimento_act = ' + QuotedStr('Y')                                                                    );
    SQL.Add('	AND a.easy_work_equipe_conf_id = ' +IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id)                               );
    SQL.Add('GROUP BY 1)                                                                                                        ');
    SQL.Add('ORDER BY 2 ASC                                                                                                     ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;

end;

procedure Tdatam.qryChatCarregaTransBeforeOpen(DataSet: TDataSet);
begin

  // qryChatCarregaTrans
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('select                                                                                                  ');
    SQL.Add('c1.id as codigo,                                                                                        ');
    SQL.Add('concat(c1.descricao," - ", c2.descricao) as fila                                                        ');
    SQL.Add('from                                                                                                    ');
    SQL.Add('easy_sist_usuario_perfil_has_pabx_serv_fila_universal a                                                 ');
    SQL.Add('left join easy_pabx_serv_fila_universal_ctr c1 on a.easy_pabx_serv_fila_universal_ctr_id = c1.id        ');
    SQL.Add('left join easy_pabx_serv_fila_universal_chat_conf c2 on c1.id = c2.easy_pabx_serv_fila_universal_ctr_id ');
    //      SQL.Add('left join easy_work_colaborador_conf c on a.easy_work_colaborador_conf_id = c.id                  ');
    SQL.Add('where c1.active = ' + QuotedStr('Y') + ' '                                                               );
    SQL.Add('and c2.active = ' + QuotedStr('Y') + ' '                                                                 );
    SQL.Add('and a.active = ' + QuotedStr('Y') + ' '                                                                  );
    SQL.Add('and a.chat_transferencia_act = ' + QuotedStr('Y') + ' '                                                  );
    SQL.Add('and a.easy_sist_usuario_perfil_conf_id = ' + TMyInfoLogin.sPerfil                                        );
    SQL.Add('group by c1.id                                                                                          ');
    SQL.Add('order by 2 asc                                                                                          ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qryChatDesconecta01BeforeOpen(DataSet: TDataSet);
begin
  //qryChatDesconecta[nSalaChat]
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('   set tipo = :sCHAT, ');
    SQL.Add('       :sSalaAct     = ' + QuotedStr('N') + ', ');
    SQL.Add('       :sSala_ctr_id = ' + QuotedStr('') + ' ');
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatDesconecta02BeforeOpen(DataSet: TDataSet);
begin

  //qryChatDesconecta[nSalaChat]
  with TZQuery(DataSet) do
  begin

    SQL.Add('select c.id as class_id,                                                    ');
    SQL.Add('       c.descricao                                                          ');
    SQL.Add('from easy_pabx_serv_fila_universal_classificacao_conf c                     ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_has_classificacao a on         ');
    SQL.Add('               a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_ctr f on                       ');
    SQL.Add('               a.easy_pabx_serv_fila_universal_ctr_id = f.id                ');
    SQL.Add('where a.active = ' + QuotedStr('Y')                                          );
    SQL.Add('  and c.active = ' + QuotedStr('Y')                                          );
    SQL.Add('  and a.disp_chat = ' + QuotedStr('Y')                                       );
    SQL.Add('  and c.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa              );
    SQL.Add('group by c.id                                                               ');
    SQL.Add('order by c.descricao asc                                                    ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;


end;

procedure Tdatam.qryChatDesconecta03BeforeOpen(DataSet: TDataSet);
begin

  //qryChatDesconecta[nSalaChat]
  with TZQuery(DataSet) do
  begin

    SQL.Add('select s.id as subclass_id,                                                     ');
    SQL.Add('       s.descricao,                                                             ');
    SQL.Add('       a.easy_pabx_serv_fila_universal_classificacao_conf_id                    ');
    SQL.Add('from easy_pabx_serv_fila_universal_classificacao_sub_conf s                     ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_classificacao_has_sub a on         ');
    SQL.Add('               a.easy_pabx_serv_fila_universal_classificacao_sub_conf_id = s.id ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_classificacao_conf c on            ');
    SQL.Add('               a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id     ');
    SQL.Add('where s.active = ' + QuotedStr('Y')                                              );
    SQL.Add('  and a.active = ' + QuotedStr('Y')                                              );
    SQL.Add('  and s.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa                  );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatDesconecta04BeforeOpen(DataSet: TDataSet);
begin
  //qryChatDesconecta[nSalaChat]
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    Active := False;
    SQL.Clear;
    SQL.Add('update easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist set ');
    if Not vChatDesconexaoCliente then
    begin
      SQL.Add('desconexao = ' + QuotedStr('A') + ', ');
      SQL.Add('desconexao_mot = :Tipo, ');
      SQL.Add('duracao = timediff(now(), datahora), ');
      //SQL.Add('desconexao_dt = now(), ');
    end;
    SQL.Add('duracao_pos = :TempoPosAtendimento,');
    SQL.Add('observacao = :ChatClasObs, ');
    SQL.Add('classificacao_auto_act = ' + QuotedStr('Y') + ' ');
    SQL.Add('where id = :IdChatSala');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatPesquisaHistBeforeOpen(DataSet: TDataSet);
Var  sCmpPesq        : String;
     sTemp           : String;

begin

  sCmpPesq := '';
  sTemp           := '';

  //qryChatPesquisaHistMsg
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select h.id as Protocolo,                                                                                 ');
    SQL.Add('       date_format(h.datahora, "%d/%m/%Y") as Data,                                                       ');
    SQL.Add('       date_format(h.datahora, "%H:%i:%s %p") as Hora,                                                    ');
    SQL.Add('       h.cliente_nome as Nome,                                                                            ');
    SQL.Add('       h.telefone as Telefone,                                                                            ');
    SQL.Add('       h.cliente_mail as "E-Mail",                                                                        ');
    SQL.Add('       c.descricao as Sala                                                                                ');
    SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist h                                          ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_ctr f on h.easy_pabx_serv_fila_universal_ctr_id = f.id       ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_chat_conf c on c.easy_pabx_serv_fila_universal_ctr_id = f.id ');
    SQL.Add('where true                                                                                                ');
//    SQL.Add('where h.easy_call_empresa_conf_id = ' + QuotedStr(TMyInfoLogin.sIDEmpresa) + ' and ');

    if Trim(Agente.SQL.ChatHistoricoNome) <> '' then
      sCmpPesq := 'h.cliente_nome like ' + QuotedStr('%' + Agente.SQL.ChatHistoricoNome + '%');
    if Trim(Agente.SQL.ChatHistoricoTelefone) <> '' then
    begin
      sTemp    := 'h.telefone like ' + QuotedStr('%' + Agente.SQL.ChatHistoricoTelefone + '%');
      sCmpPesq := IfThen( sCmpPesq = '', sTemp, sCmpPesq + ' and ' + sTemp);
    end;
    if Trim(Agente.SQL.ChatHistoricoProtocolo) <> '' then
    begin
      sTemp    := 'h.id = ' + Agente.SQL.ChatHistoricoProtocolo + ' ';
      sCmpPesq := IfThen( sCmpPesq = '', sTemp, sCmpPesq + ' and ' + sTemp);
    end;
    if Trim(Agente.SQL.ChatHistoricoEMail) <> '' then
    begin
      sTemp    := 'h.cliente_mail like ' + QuotedStr('%' + Agente.SQL.ChatHistoricoEMail + '%');
      sCmpPesq := IfThen(sCmpPesq = '', sTemp, sCmpPesq + ' and ' + sTemp);
    end;
    if Trim(Agente.SQL.ChatHistoricoSala) <> '' then
    begin
      sTemp    := 'c.descricao like ' + QuotedStr('%' + Agente.SQL.ChatHistoricoSala + '%');
      sCmpPesq := IfThen(sCmpPesq = '', sTemp, sCmpPesq + ' and ' + sTemp);
    end;
    if Agente.SQL.ChatHistoricoData <> 0 then
    begin
      sTemp    := 'date(h.datahora) = ' + QuotedStr(formatdatetime('yyyy-mm-dd', Agente.SQL.ChatHistoricoData));
      sCmpPesq := IfThen(sCmpPesq = '', sTemp, sCmpPesq + ' and ' + sTemp);
    end;

    SQL.Add(sCmpPesq);
    SQL.Add(' order by Protocolo desc');


    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;
end;

procedure Tdatam.qryChatPesquisaHistMsgBeforeOpen(DataSet: TDataSet);
begin

  //qryChatPesquisaHistMsg
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('select date_format(d.cdata, "%d/%m/%Y") as Data,                                                      ');
    SQL.Add('       date_format(d.chora, "%H:%i:%s %p") as Hora,                                                   ');
    SQL.Add('       d.tipo as tipo,                                                                                ');
    SQL.Add('       if(	d.tipo = "C", c.nome,                                                                      ');
    SQL.Add('           if(  (select u.descricao                                                                   ');
    SQL.Add('                   from easy_work_colaborador_conf u                                                  ');
    SQL.Add('                  where id = d.easy_work_colaborador_conf_id) IS NULL,                                ');
    SQL.Add('              "Sistema",                                                                              ');
    SQL.Add('                 (select u.descricao                                                                  ');
    SQL.Add('                    from easy_work_colaborador_conf u                                                 ');
    SQL.Add('                   where id = d.easy_work_colaborador_conf_id))) as nome,                             ');
    SQL.Add('       CAST(d.msg as char(255)) as mensagem,                                                          ');
    SQL.Add('       f.descricao,                                                                                   ');
    SQL.Add('       c.telefone,                                                                                    ');
    SQL.Add('       c.email,                                                                                       ');
    SQL.Add('       c.nome as nomecliente,                                                                         ');
    SQL.Add('       d.easy_work_colaborador_conf_id                                                                ');
    SQL.Add('from easy_core_contatos_msg_hist d                                                                    ');
    SQL.Add('     left join easy_core_contatos_ctrl c on                                                           ');
    SQL.Add('               d.easy_core_contatos_ctrl_id = c.id or d.easy_core_contatos_ctrl_id = c.is_transferred ');
    SQL.Add('     left join easy_pabx_serv_fila_universal_chat_conf f on                                           ');
    SQL.Add('               c.easy_pabx_serv_fila_universal_ctr_id = f.easy_pabx_serv_fila_universal_ctr_id        ');
    SQL.Add('where c.id = :ID'                                                                                      );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatRead01BeforeOpen(DataSet: TDataSet);
begin
  //qryChatRead[nFor]
  with TZQuery(DataSet) do
  begin

     SQL.Clear;
     SQL.Add('select transfered_act, transfered_id                          ');
     SQL.Add('from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist');
     SQL.Add('where id = :IdSala                                            ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;
end;

procedure Tdatam.qryChatRead02BeforeOpen(DataSet: TDataSet);
begin

  //qryChatRead[nFor]
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select d.id, d.msg, date_format(d.chora, "%H:%i:%s %p"), d.tipo, ');
    SQL.Add('u.descricao, u.id ');
    SQL.Add('from easy_core_contatos_ctrl c ');
    SQL.Add('left join easy_core_contatos_msg_hist d on c.id = d.easy_core_contatos_ctrl_id ');
    SQL.Add('left join easy_work_colaborador_conf u on d.easy_work_colaborador_conf_id = u.id ');
    SQL.Add('where d.active = ' + QuotedStr('Y') + ' and ');
    if nHasChatXFer = 1 then
      SQL.Add('d.easy_core_contatos_ctrl_id IN (:IdSala, :IdChatXFer)')
    else
      SQL.Add('d.easy_core_contatos_ctrl_id = :IdSala');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatRead03BeforeOpen(DataSet: TDataSet);
begin
  //qryConferencia
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('select id ');
    SQL.Add('  from easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist ');
    SQL.Add('where desconexao = ' + QuotedStr('C') + ' ');
    SQL.Add('  and id = :IdSala');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatRead04BeforeOpen(DataSet: TDataSet);
begin
  //qryConferencia
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('update easy_core_contatos_msg_hist');
    SQL.Add('set active = '+QuotedStr('N')      );
    SQL.Add('where id in (:IdSala)             ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;


procedure Tdatam.qryChatSup01BeforeOpen(DataSet: TDataSet);
begin
  //qryConferencia
  with TZQuery(DataSet) do
  begin

    SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('set :SalaSupACT = ' + QuotedStr('Y'));
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));


    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatUpdateDash01BeforeOpen(DataSet: TDataSet);
begin

  //qryChatUpdateDash
  with TZQuery(DataSet) do
  begin
    SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('set wrapup_chat_act = ' + QuotedStr('N'));
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatUpdateDash02BeforeOpen(DataSet: TDataSet);
begin
  //qryChatUpdateDash
  with TZQuery(DataSet) do
  begin

    SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('set tipo = ' + QuotedStr('CHAT') + ', ');
    SQL.Add('sala_act = ' + QuotedStr('Y') + ', ');
    SQL.Add('sala_ctr_id = :sSala_ctr_id ');
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatUpdateDash03BeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin

    SQL.Add('update easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('set wrapup_chat_act = ' + QuotedStr('Y') + ', ');
    SQL.Add('wrapup_chat_tmp = now(), ');
    SQL.Add('sala' + IntToStr(vChatClassificandoSala+1) + '_sup_act = ' + QuotedStr('N'));
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryChatWriteBeforeOpen(DataSet: TDataSet);
begin

  //qryConferencia
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('insert into easy_core_contatos_msg_hist ');
    SQL.Add('    (cdata,                             ');
    SQL.Add('     tipo,                              ');
    SQL.Add('     usou_mensagem_auto_act,            ');
    SQL.Add('     msg,                               ');
    SQL.Add('     easy_work_colaborador_conf_id,     ');
    SQL.Add('     easy_core_contatos_ctrl_id,        ');
    SQL.Add('     waittime_ag,                       ');
    SQL.Add('     waittime_cl)                       ');
    SQL.Add('Values                                  ');
    SQL.Add('   (now(),                              ');
    SQL.Add('    :Tipo,                              ');
    SQL.Add('    :MsgAutoACT,                        ');
    SQL.Add('    :Msg,                               ');
    SQL.Add('    :ColaboradorConfId,                 ');
    SQL.Add('    :ContatosCtrlId,                    ');
    SQL.Add('    :Waittime_Ag,                       ');
    SQL.Add('    :WaitTime_Cl)                       ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;
end;

procedure Tdatam.qryChatXFer01BeforeOpen(DataSet: TDataSet);
begin
  //qryConferencia
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('update easy_core_contatos_msg_hist set    ');
    SQL.Add('active = ' + QuotedStr('Y')                );
    SQL.Add('where easy_core_contatos_ctrl_id = :IdSala');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;

end;

procedure Tdatam.qryChatXFer02BeforeOpen(DataSet: TDataSet);
begin

  //qryConferencia
  with TZQuery(DataSet) do
  begin
    SQL.Add('insert into easy_rept_pabx_serv_fila_universal_chamada_receptiva_hist ');
    SQL.Add('(                                                                     ');
    SQL.Add('  datahora,                                                           ');
    SQL.Add('  data,                                                               ');
    SQL.Add('  hora,                                                               ');
    SQL.Add('  emfila_temp,                                                        ');
    SQL.Add('  emfila,                                                             ');
    SQL.Add('  cliente_nome,                                                       ');
    SQL.Add('  cliente_mail,                                                       ');
    SQL.Add('  telefone,                                                           ');
    SQL.Add('  web_url,                                                            ');
    SQL.Add('  transfered_act,                                                     ');
    SQL.Add('  transfered_id,                                                      ');
    SQL.Add('  easy_chat_motor_conf_id,                                            ');
    SQL.Add('  easy_pabx_serv_fila_universal_ctr_id,                               ');
    SQL.Add('  canal,                                                              ');
    SQL.Add('  classe,                                                             ');
    SQL.Add('  is_queue_entry_act,                                                 ');
    SQL.Add('  is_queue_entry_tmp,                                                 ');
    SQL.Add('  easy_call_empresa_conf_id                                           ');
    SQL.Add(')                                                                     ');
    SQL.Add('values                                                                ');
    SQL.Add('(                                                                     ');
    SQL.Add('  now(),                                                              ');
    SQL.Add('  curdate(),                                                          ');
    SQL.Add('  curtime(),                                                          ');
    SQL.Add('  now(),                                                              ');
    SQL.Add(   QuotedStr('Y') + ',                                                 ');
    SQL.Add('  :ClienteNome,                                                       ');
    SQL.Add('  :ClienteEmail,                                                      ');
    SQL.Add('  :Telefone,                                                          ');
    SQL.Add('  :WebURL,                                                            ');
    SQL.Add(   QuotedStr('Y') + ',                                                 ');
    SQL.Add('  :Transfered_id,                                                     ');
    SQL.Add('  :EasyChatMotorConfID,                                               ');
    SQL.Add('  :Tag                                                                ');
    SQL.Add('  2,                                                                  ');
    SQL.Add('  1,                                                                  ');
    SQL.Add('  1,                                                                  ');
    SQL.Add('  now(),                                                              ');
    SQL.Add(   TMyInfoLogin.sIDEmpresa                                              );
    SQL.Add(')                                                                     ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qryConferenciaBeforeOpen(DataSet: TDataSet);
begin
  //qryConferencia
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('select id, descricao, tipo                                  ');//tipo N: externo ou S: interno
    SQL.Add('from easy_pabx_serv_ramal_conferencia_conf                  ');
    SQL.Add('where active = ' + QuotedStr('Y')                            );
    SQL.Add('and easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao);

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryConferenciaTipoNExternoBeforeOpen(DataSet: TDataSet);
begin

  //qryConferenciaTipoNExterno.
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select c.id, c.descricao, c.telefone, c.easy_pabx_serv_rota_inteligente_conf_id                                        ');
    SQL.Add('from easy_pabx_serv_ramal_conferencia_numeros_conf c                                                                   ');
    SQL.Add(' left join easy_pabx_serv_ramal_conferencia_has_numeros a on a.easy_pabx_serv_ramal_conferencia_numeros_conf_id = c.id ');
    SQL.Add('where c.active = ' + QuotedStr('Y')                                                                                     );
    SQL.Add('and a.active = ' + QuotedStr('Y')                                                                                       );
    SQL.Add('and a.easy_pabx_serv_ramal_conferencia_conf_id = ' + TMyConfCallClass.matrizConfCall[qryConferencia.RecNo-1, 0]                            );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryConferenciaTipoNInternoBeforeOpen(DataSet: TDataSet);
begin

  //qryConferenciaTipoNExterno.
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select s.id, u.descricao, u.id                                                           ');
    SQL.Add('from easy_pabx_serv_ramal_conferencia_has_supervisor s                                   ');
    SQL.Add('left join easy_work_colaborador_conf u on s.easy_work_colaborador_conf_id = u.id         ');
    SQL.Add('where s.active = ' + QuotedStr('Y')                                                       );
    SQL.Add('and easy_pabx_serv_ramal_conferencia_conf_id = ' + TMyConfCallClass.matrizConfCall[qryConferencia.RecNo-1, 0]);

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qryFaqGrupoConfBeforeOpen(DataSet: TDataSet);
begin

  // qryFaqGrupoConf
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select g.id,                                                         ');
    SQL.Add('       g.descricao                                                   ');
    SQL.Add('from easy_wfaq_has_grupo a                                           ');
    SQL.Add('left join easy_wfaq_grupo_conf g on a.easy_wfaq_grupo_conf_id = g.id ');
    SQL.Add('where true                                                           ');
    SQL.Add(' and a.active = ' + QuotedStr('Y')                                    );
    SQL.Add(' and g.active = ' + QuotedStr('Y')                                    );
    SQL.Add(' and a.easy_wfaq_conf_id = ' + IntToStr(TMyFaqClass.nFaqIdConf)       );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qryFaqRespConfBeforeOpen(DataSet: TDataSet);
  Var sFaqIn  : String;
      nForFaq : Integer;
begin

  // qryFaqRespConf
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select p.id,                                                               ');
    SQL.Add('       p.descricao,                                                        ');
    SQL.Add('       p.texto,                                                            ');
    SQL.Add('       a.easy_wfaq_grupo_conf_id                                           ');
    SQL.Add('from easy_wfaq_grupo_has_pergunta a                                        ');
    SQL.Add('left join easy_wfaq_pergunta_conf p on a.easy_wfaq_pergunta_conf_id = p.id ');
    SQL.Add('where true                                                                 ');
    SQL.Add('and a.active = ' + QuotedStr('Y')                                           );
    SQL.Add('and p.active = ' + QuotedStr('Y')                                           );

    sFaqIn := '';
    for nForFaq := 0 to TMyFaqClass.nQtdGrupoConf-1 do
    begin
      sFaqIn := sFaqIn + TMyFaqClass.matrizGrupoConf[nForFaq, 0];
      if nForFaq < TMyFaqClass.nQtdGrupoConf-1 then
        sFaqIn := sFaqIn + ',';
    end;

    datam.qryFaqGrupoConf.SQL.Add('and a.easy_wfaq_grupo_conf_id in (' + sFaqIn + ')');


    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qryLoginBeforeOpen(DataSet: TDataSet);
begin

  // qrySistemaVersao
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select l.descricao as nome,                                                             ');
    SQL.Add('       l.login as login,                                                                ');
    SQL.Add('       AES_DECRYPT(l.senha,'+QuotedStr('ae76aa5b1e5fc7257703a2c8ff9ea7dd')+') AS senha, ');
    SQL.Add('       c.email as email,                                                                ');
    SQL.Add(QuotedStr('Y') + ' as dialpad,                                                           ');
    SQL.Add('       l.easy_call_operacao_conf_id as easy_callcenter_operacao_conf_id,                ');
    SQL.Add('       c.easy_sist_usuario_perfil_conf_id as easy_sistema_usuario_perfil_conf_id,       ');
    SQL.Add('       s.name as ramal,                                                                 ');
    SQL.Add('       s.secret as senha_ramal,                                                         ');
    SQL.Add('       p.ipaddress as proxy_ramal,                                                      ');
    SQL.Add('       c.id,                                                                            ');
    SQL.Add('       c.agente_idioma as idioma,                                                       ');
    SQL.Add('       l.easy_call_empresa_conf_id as empresa,                                          ');
    SQL.Add('       c.fone_atendimento_auto_act as atendimento_auto_act,                             ');
    SQL.Add('       c.fone_controle_audio_act as controle_audio_act,                                 ');
    SQL.Add('       c.fone_controle_audio_fone as controle_audio_fone,                               ');
    SQL.Add('       c.fone_controle_audio_mic as controle_audio_mic,                                 ');
    SQL.Add('       c.fone_conferencia_act as conferencia_act,                                       ');
    SQL.Add('       c.fone_classificacao_auto_act as classificacao_auto_act,                         ');
    SQL.Add('       c.supervisor_id as easy_sistema_usuario_conf_super_id,                           ');
    SQL.Add('       c.agente_tipo as tipo,                                                           ');
    SQL.Add('       c.chat_nsalas_qde,                                                               ');
    SQL.Add('       CAST(c.qualidade_plogin AS CHAR) as qualidade_plogin,                            ');
    SQL.Add('       c.qualidade_plogin_act,                                                          ');
    SQL.Add('       CAST(NOW() AS CHAR) as qualidade_plogin2,                                        ');
    SQL.Add('       o.usar_rota_inteligente_fixa_act, o.easy_pabx_serv_rota_inteligente_conf_id,     ');
    SQL.Add('       c.chat_classificacao_auto_act,                                                   ');
    SQL.Add('       o.webfaq_act,                                                                    ');
    SQL.Add('       o.easy_wfaq_conf_id,                                                             ');
    SQL.Add('       c.gravador_tela_act,                                                             ');
    SQL.Add('       c.gravador_tela_cursor_act,                                                      ');
    SQL.Add('       c.gravador_tela_modo_cfg,                                                        ');
    SQL.Add('       time_to_sec(c.gravador_tela_modo_tmp) as gravador_tela_modo_tmp2,                ');
    SQL.Add('       c.gravador_tela_storage_dst,                                                     ');
    SQL.Add('       c.codigo_externo,                                                                ');
    SQL.Add('       c.fone_dialpad_act,                                                              ');
    SQL.Add('       CAST(curdate() AS CHAR) as dataatual,                                            ');
    SQL.Add('       CAST(curtime() AS CHAR) as horaatual,                                            ');
    SQL.Add('       o.qualificar_chamada_act,                                                        ');
    SQL.Add('       fone_registro_act,                                                               ');
    SQL.Add('       time_to_sec(fone_registro_tmp) as sec_fone_registro_tmp,                         ');
    SQL.Add('       coalesce(c.easy_work_equipe_conf_id, 0) as equipe_id,                            ');
    SQL.Add('       c.horario_entrada,                                                               ');
    SQL.Add('       c.horario_Saida,                                                                 ');
    SQL.Add('       coalesce(l.active,'+QuotedStr('N')+') as Usuario_act,                            ');
    SQL.Add('       coalesce(c.active,'+QuotedStr('N')+') as Colaborador_act,                        ');
    SQL.Add('       coalesce(o.active,'+QuotedStr('N')+') as Operacao_act,                           ');
    SQL.Add('       coalesce(e.active,'+QuotedStr('N')+') as UserEmp_act                             ');
    SQL.Add('from easy_sist_usuario_login_conf l                                                     ');
    SQL.Add('     left join easy_work_colaborador_conf c on l.easy_work_colaborador_conf_id = c.id   ');
    SQL.Add('     left join easy_call_operacao_conf o on l.easy_call_operacao_conf_id = o.id         ');
    SQL.Add('     left join easy_call_empresa_conf e on o.easy_call_empresa_conf_id = e.id           ');
    SQL.Add('     left join easy_pabx_serv_ramal_sip_conf s on s.id = l.id                           ');
    SQL.Add('     left join easy_sist_servidor_sip_conf p on c.easy_sist_servidor_sip_conf_id = p.id ');
    SQL.Add('where True                                                                              ');
//    SQL.Add('  and l.active = ' + QuotedStr('Y')                                                      );
//    SQL.Add('  and c.active = ' + QuotedStr('Y')                                                      );
//    SQL.Add('  and o.active = ' + QuotedStr('Y')                                                      );
//    SQL.Add('  and e.active = ' + QuotedStr('Y')                                                      );
    SQL.Add('  and l.login = ' + QuotedStr(TMyInfoLogin.sLoginUser)                                   );

    if DirectoryExists(Agente.PathArqTxtSQL) then
       SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qrySistemaLogadoBeforeOpen(DataSet: TDataSet);
begin
  // qrySistemaVersao
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select logado                                ');
    SQL.Add('from easy_dash_pabx_serv_fila_de_atendimento ');
    SQL.Add('where easy_work_colaborador_conf_id = :IDUser');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qrySistemaVersaoBeforeOpen(DataSet: TDataSet);
begin
  // qrySistemaVersao
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select tipo,                        ');
    SQL.Add('       versao,                      ');
    SQL.Add('       acao                         ');
    SQL.Add('from easy_sist_software_versao_conf ');
    SQL.Add('where tipo = 0                      ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryTempoFilaBeforeOpen(DataSet: TDataSet);
begin
  // qryFaqGrupoConf
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select time_to_sec(espera)                                               ');
    SQL.Add('from easy_dash_pabx_serv_fila_de_atendimento                             ');
    SQL.Add('where uniqueid = :VCallId                                                ');
    SQL.Add('and easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryUpdateStatusBeforeOpen(DataSet: TDataSet);
begin
  // qryFaqGrupoConf
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('insert into easy_rept_sist_semaforo_call_hist ');

    if Copy(sNumAge, 1, 5) = 'AGE01' then
    begin
      SQL.Add('(versao, acao, easy_call_operacao_conf_id, param1, param2, param3, easy_work_colaborador_conf_id) ');
      SQL.Add('values (');
      SQL.Add(QuotedStr(Agente.VersaoExe) + ', ');

      SQL.Add('1, ');
      SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
      SQL.Add(QuotedStr(TMyMachineInfo.sIP_Address) + ', ');
      SQL.Add(QuotedStr(TMyMachineInfo.sMac_Address) + ', ');
      SQL.Add(QuotedStr(IntToStr(TMyInfoLogin.nTipo + 1)) + ', ');
    end
    else
    begin
      SQL.Add('(versao, acao, easy_call_operacao_conf_id, param1, easy_work_colaborador_conf_id) ');
      SQL.Add('values (');
      SQL.Add(QuotedStr(Agente.VersaoExe) + ', ');

      if Copy(sNumAge, 1, 5) = 'AGE02' then
      begin
        SQL.Add('2, ');
        SQL.Add('0, ');
        SQL.Add(TMyInfoLogin.sIDUsuario + ', ');

      end
      else
        if Copy(sNumAge, 1, 5) = 'AGE03' then
        begin
          SQL.Add('3, ');
          SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
          SQL.Add(TMyPausa.sIDPausa + ', ');

        end
        else
          if Copy(sNumAge, 1, 5) = 'AGE04' then
          begin
            SQL.Add('4, ');
            SQL.Add('0, ');
            SQL.Add(TMyPausa.sIDPausa + ', ');

          end
          else
            if Copy(sNumAge, 1, 5) = 'AGE05' then
            begin
              SQL.Add('5, ');
              SQL.Add(TMyInfoLogin.sIDOperacao + ', ');
              SQL.Add(TMyPausa.sIDPausa + ', ');

            end;
    end;
    SQL.Add(QuotedStr(TMyInfoLogin.sIDUsuario) + ') ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qryUserFilaAfterOpen(DataSet: TDataSet);
begin
  with TZQuery(DataSet) do
  begin

    SetLength(UserFile, RecordCount);

    First;
    while not Eof do
    begin

      UserFile[RecNo] := TUserFila.Create;

      UserFile[RecNo].id                                   := FieldByName('id').AsInteger;
      UserFile[RecNo].active                               := FieldByName('active').AsString[1];
      UserFile[RecNo].penalty                              := FieldByName('penalty').AsInteger;
      UserFile[RecNo].fone_atendimento_act                 := FieldByName('fone_atendimento_act').AsString[1];
      UserFile[RecNo].fone_transferencia_act               := FieldByName('fone_transferencia_act').AsString[1];
      UserFile[RecNo].chat_transferencia_act               := FieldByName('chat_transferencia_act').AsString[1];
      UserFile[RecNo].chat_atendimento_act                 := FieldByName('chat_atendimento_act').AsString[1];
      UserFile[RecNo].mail_atendimento_act                 := FieldByName('mail_atendimento_act').AsString[1];
      UserFile[RecNo].mail_transferencia_act               := FieldByName('mail_transferencia_act').AsString[1];
      UserFile[RecNo].recuperar_gravacao_act               := FieldByName('recuperar_gravacao_act').AsString[1];
      UserFile[RecNo].xcrm_atendimento_act                 := FieldByName('xcrm_atendimento_act').AsString[1];
      UserFile[RecNo].vcrm_atendimento_act                 := FieldByName('vcrm_atendimento_act').AsString[1];
      UserFile[RecNo].easy_work_equipe_conf_id             := FieldByName('easy_work_equipe_conf_id').AsInteger;
      UserFile[RecNo].easy_pabx_serv_fila_universal_ctr_id := FieldByName('easy_pabx_serv_fila_universal_ctr_id').AsInteger;

      Next;
    end;
    Close;
  end;

end;

procedure Tdatam.qryUserFilaBeforeOpen(DataSet: TDataSet);
begin

  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('id');
    SQL.Add(',active');
    SQL.Add(',penalty');
    SQL.Add(',fone_atendimento_act');
    SQL.Add(',fone_transferencia_act');
    SQL.Add(',chat_transferencia_act');
    SQL.Add(',chat_atendimento_act');
    SQL.Add(',mail_atendimento_act');
    SQL.Add(',mail_transferencia_act');
    SQL.Add(',recuperar_gravacao_act');
    SQL.Add(',xcrm_atendimento_act');
    SQL.Add(',vcrm_atendimento_act');
    SQL.Add(',easy_work_equipe_conf_id');
    SQL.Add(',easy_pabx_serv_fila_universal_ctr_id');
    SQL.Add('FROM');
    SQL.Add('easy_work_equipe_has_fila');
    SQL.Add('WHERE id = '+IntToStr(TMyInfoLogin.iEasy_work_equipe_conf_id));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');

  end;


end;

procedure Tdatam.qryVerificaLoginAtivoBeforeOpen(DataSet: TDataSet);
begin
  // qry_carrega_class_fila
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select deslogado                                                           ');
    SQL.Add('from easy_dash_pabx_serv_fila_de_atendimento                               ');
    SQL.Add('where easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qry_carrega_class_filaBeforeOpen(DataSet: TDataSet);
begin

  // qry_carrega_class_fila
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('SELECT                                                                                                                      ');
    SQL.Add('c.id,                                                                                                                       ');
    SQL.Add('c.descricao,                                                                                                                ');
    SQL.Add('a.easy_pabx_serv_fila_universal_ctr_id,                                                                                     ');
    SQL.Add('a.disp_chat,                                                                                                                ');
    SQL.Add('a.disp_email,                                                                                                               ');
    SQL.Add('a.disp_sms                                                                                                                  ');
    SQL.Add('FROM                                                                                                                        ');
    SQL.Add('easy_pabx_serv_fila_universal_classificacao_conf c                                                                          ');
    SQL.Add('left join easy_pabx_serv_fila_universal_has_classificacao a on a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id ');
    SQL.Add('where                                                                                                                       ');
    SQL.Add('a.active = ' + QuotedStr('Y')                                                                                                );
    SQL.Add('and c.active = ' + QuotedStr('Y')                                                                                            );
    SQL.Add('and c.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa + '                                                           ');
    SQL.Add('order by c.descricao asc                                                                                                    ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.qry_carrega_class_fila_subBeforeOpen(DataSet: TDataSet);
begin

  // qry_carrega_class_fila_Sub
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Clear;
    SQL.Add('select                                                                                                                                   ');
    SQL.Add('s.id as subclass_id,                                                                                                                     ');
    SQL.Add('s.descricao,                                                                                                                             ');
    SQL.Add('a.easy_pabx_serv_fila_universal_classificacao_conf_id,                                                                                   ');
    SQL.Add('a.finalizadora,                                                                                                                          ');
    SQL.Add('DATE_ADD(curdate(), INTERVAL a.intervalo DAY),                                                                                           ');
    SQL.Add('a.redial                                                                                                                                 ');
    SQL.Add('from easy_pabx_serv_fila_universal_classificacao_sub_conf s                                                                              ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_classificacao_has_sub a ON a.easy_pabx_serv_fila_universal_classificacao_sub_conf_id = s.id ');
    SQL.Add('     LEFT JOIN easy_pabx_serv_fila_universal_classificacao_conf c ON a.easy_pabx_serv_fila_universal_classificacao_conf_id = c.id        ');
    SQL.Add('where s.active = ' + QuotedStr('Y')                                                                                                       );
    SQL.Add('  and a.active = ' + QuotedStr('Y')                                                                                                       );
    SQL.Add('  and s.easy_call_empresa_conf_id = ' + TMyInfoLogin.sIDEmpresa + '                                                                      ');
    SQL.Add('ORDER BY s.descricao ASC                                                                                                                 ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qry_carrega_LogCallStepBeforeOpen(DataSet: TDataSet);
begin

  //qry_carrega_LogCallStep
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('select active,                    ');
    SQL.Add('       descricao,                 ');
    SQL.Add('       log_diretorio,             ');
    SQL.Add('       log_nome,                  ');
    SQL.Add('       log_login_act,             ');
    SQL.Add('       log_logout_act,            ');
    SQL.Add('       log_pause_act,             ');
    SQL.Add('       log_unpause_act,           ');
    SQL.Add('       log_answer_act,            ');
    SQL.Add('       log_hangup_act,            ');
    SQL.Add('       log_dnd_on_act,            ');
    SQL.Add('       log_dnd_off_act,           ');
    SQL.Add('       log_registro_act,          ');
    SQL.Add('       log_xfer_act,              ');
    SQL.Add('       log_sip_err                ');
    SQL.Add('from easy_sist_software_log_conf  ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qry_operacao_has_parametrosBeforeOpen(DataSet: TDataSet);
begin
  //qry_operacao_has_parametros
  with TZQuery(DataSet) do
  begin

    SQL.Clear;
    SQL.Add('select p.deslogar_agente_painel_act, time_to_sec(p.deslogar_agente_painel_tmp),              ');
    SQL.Add('       p.pausa_pos_atendimento_act, time_to_sec(p.pausa_pos_atendimento_tmp),                ');
    SQL.Add('       p.pausa_pos_popup_act, time_to_sec(p.pausa_pos_popup_tmp), p.pausa_pos_popup_msg,     ');
    SQL.Add('       p.pausa_login_act, time_to_sec(p.pausa_login_tmp),                                    ');
    SQL.Add('       p.pausa_login_popup_act, time_to_sec(p.pausa_login_popup_tmp), pausa_login_popup_msg, ');
    SQL.Add('       p.alarme_act, p.alarme_1_tmp, p.alarme_1_msg,                                         ');
    SQL.Add('       p.alarme_2_tmp, p.alarme_2_msg,                                                       ');
    SQL.Add('       p.alarme_3_tmp, p.alarme_3_msg                                                        ');
    SQL.Add('from easy_call_operacao_parametros_conf p                                                    ');
    SQL.Add('where p.easy_call_operacao_conf_id = ' + TMyInfoLogin.sIDOperacao                             );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.OpenSQLVerClassUnivBeforeOpen(DataSet: TDataSet);
begin

    //qry_operacao_has_parametro
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('SELECT DISTINCT COUNT(a.easy_call_empresa_conf_id) AS EXISTE                                                                            ');
    SQL.Add('FROM easy_pabx_serv_fila_universal_classificacao_conf                a                                                                  ');
    SQL.Add('     INNER JOIN easy_pabx_serv_fila_universal_has_classificacao      b on b.easy_pabx_serv_fila_universal_classificacao_conf_id = a.id  ');
    SQL.Add('     INNER JOIN easy_pabx_serv_fila_universal_ctr                    c on b.easy_pabx_serv_fila_universal_ctr_id                = c.id  ');
    SQL.Add('     INNER JOIN easy_work_colaborador_has_pabx_serv_fila_universal   d ON d.easy_pabx_serv_fila_universal_ctr_id                = c.id  ');
    SQL.Add('     INNER JOIN easy_work_colaborador_conf                           e ON d.easy_work_colaborador_conf_id                       = e.id  ');
    SQL.Add('     INNER JOIN easy_pabx_serv_fila_universal_call_conf              f ON f.easy_pabx_serv_fila_universal_ctr_id                = c.id  ');
    SQL.Add('WHERE d.easy_work_colaborador_conf_id = '+TMyInfoLogin.sIDUsuario                                                                        );
    SQL.Add('  AND a.easy_call_empresa_conf_id = '+TMyInfoLogin.sIDEmpresa                                                                            );
    SQL.Add('  AND b.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND d.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND c.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND d.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND e.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND f.active = '+QuotedStr('Y')                                                                                                        );
    SQL.Add('  AND ((b.disp_telefone = '+QuotedStr('Y')+')xor(b.disp_chat = '+QuotedStr('Y')+'))'                                                     );
    SQL.Add('  AND f.active = '+QuotedStr('Y')                                                                                                        );

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.OpenSQLVerFilaBeforeOpen(DataSet: TDataSet);
begin
    //qry_operacao_has_parametros
  with TZQuery(DataSet) do
  begin
    SQL.Clear;
    SQL.Add('SELECT  COUNT(*) AS EXISTE                                                   ');
    SQL.Add('FROM easy_work_colaborador_has_pabx_serv_fila_universal e                    ');
    SQL.Add('WHERE e.easy_work_colaborador_conf_id = ' + QuotedStr(TMyInfoLogin.sIDUsuario));
    SQL.Add('  AND e.active = '+QuotedStr('Y')                                             );
    SQL.Add('  AND (  (e.fone_atendimento_act = '+ QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.fone_transferencia_act= '+QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.chat_transferencia_act= '+QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.chat_atendimento_act= '+  QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.mail_atendimento_act= '+  QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.mail_transferencia_act= '+QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.recuperar_gravacao_act= '+QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.xcrm_atendimento_act= '+  QuotedStr('Y')+') XOR                  ');
    SQL.Add('         (e.vcrm_atendimento_act= '+  QuotedStr('Y')+') )                    ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;


end;

procedure Tdatam.OpenSQLVerPausaBeforeOpen(DataSet: TDataSet);
begin
    //qry_operacao_has_parametros
  with TZQuery(DataSet) do
  begin
    SQL.Clear;

    SQL.Add('SELECT COUNT(A.id) AS EXISTE                                                                      ');
    SQL.Add('FROM easy_call_operacao_pausa_conf A                                                              ');
    SQL.Add('     LEFT JOIN easy_call_operacao_has_pausa B ON B.easy_call_operacao_pausa_conf_id = A.id        ');
    SQL.Add('WHERE True                                                                                        ');
    SQL.Add('  AND B.active = '+QuotedStr('Y')+'                                                               ');
    SQL.Add('  AND A.active = '+QuotedStr('Y')+'                                                               ');
    SQL.Add('  AND (B.easy_call_operacao_conf_id = '+TMyInfoLogin.sIDOperacao+' and tipo = '+QuotedStr('M')+') ');
    SQL.Add('  AND A.id IS NOT NULL                                                                            ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_integradorBeforeOpen(DataSet: TDataSet);
begin
  // qr_carrega_integrador
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDOperacao;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;
end;

procedure Tdatam.qr_carrega_pausaBeforeOpen(DataSet: TDataSet);
begin
  // qr_carrega_pausa
  with TZQuery(DataSet) do
  begin
    SQL.Clear;


    SQL.Add('SELECT                                                                                                                       ');
    SQL.Add('  p.id,                                                                                                                      ');
    SQL.Add('  p.descricao,                                                                                                               ');
    SQL.Add('  p.tipo,                                                                                                                    ');
    SQL.Add('  '+QuotedStr('N')+' as pausa_pos_rest_act,                                                                                  ');
    SQL.Add('  '+QuotedStr('0')+' as pausa_pos_rest_tmp,                                                                                  ');
    SQL.Add('  '+QuotedStr('0')+' as pausa_pos_rest_tmp,                                                                                  ');
    SQL.Add('  p.permite_chamada_ativa_act,                                                                                               ');
    SQL.Add('  o.id,                                                                                                                      ');
    SQL.Add('  o.active,                                                                                                                  ');
    SQL.Add('  o.transfer_act,                                                                                                            ');
    SQL.Add('  o.restritiva_dur_act,                                                                                                      ');
    SQL.Add('  o.restritiva_dur_valor,                                                                                                    ');
    SQL.Add('  o.restritiva_qde_act,                                                                                                      ');
    SQL.Add('  o.restritiva_qde_valor,                                                                                                    ');
    SQL.Add('  o.easy_call_operacao_pausa_conf_id,                                                                                        ');
    SQL.Add('  o.easy_call_operacao_conf_id,                                                                                              ');
    SQL.Add('  o.duracao_min_act,                                                                                                         ');
    SQL.Add('  o.duracao_min_valor,                                                                                                       ');
    SQL.Add('  p.bloqueio_act                                                                                                             ');
    SQL.Add('FROM easy_call_operacao_pausa_conf p                                                                                         ');
    SQL.Add('     left join easy_call_operacao_has_pausa o on o.easy_call_operacao_pausa_conf_id = p.id                                   ');
    SQL.Add('WHERE TRUE                                                                                                                   ');
    SQL.Add('  AND o.active = '+QuotedStr('Y')+'                                                                                           ');
    SQL.Add('  AND p.active = '+QuotedStr('Y')+'                                                                                           ');
    SQL.Add('  AND (o.easy_call_operacao_conf_id = '+TMyInfoLogin.sIDOperacao+' and tipo = '+QuotedStr('M')+') or (tipo = '+QuotedStr('S')+')');
    SQL.Add('  AND p.id IS NOT NULL                                                                                                        ');

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_sitesBeforeOpen(DataSet: TDataSet);
begin

  // qr_carrega_sites
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDOperacao;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_xfer_consultaBeforeOpen(DataSet: TDataSet);
begin
  // qr_carrega_xfer_consulta
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDEmpresa;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_xfer_pesquisaBeforeOpen(DataSet: TDataSet);
begin
  // qr_carrega_xfer_pesquisa
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDEmpresa;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_xfer_uraBeforeOpen(DataSet: TDataSet);
begin
  // qr_carrega_xfer_ura
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDEmpresa;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

procedure Tdatam.qr_carrega_xfer_virtualBeforeOpen(DataSet: TDataSet);
begin

  // qr_carrega_xfer_virtual
  with TZQuery(DataSet) do
  begin
    Params[0].Value := TMyInfoLogin.sIDEmpresa;;

    if DirectoryExists(Agente.PathArqTxtSQL) then
      SQL.SaveToFile(IncludeTrailingBackslash(Agente.PathArqTxtSQL)+Name+'.SQL');
  end;

end;

end.
