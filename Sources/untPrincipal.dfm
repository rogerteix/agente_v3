object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 732
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 332
    Top = 284
    Width = 61
    Height = 13
    Caption = 'Classifica'#231#227'o'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pnprincipal: TsPanel
    Left = 0
    Top = 22
    Width = 278
    Height = 690
    Align = alLeft
    TabOrder = 0
    SkinData.SkinManager = sSkinManager1
    SkinData.SkinSection = 'PANEL'
    object pncontrol: TPanel
      Left = 1
      Top = 178
      Width = 276
      Height = 511
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pbvolumeout: TsProgressBar
        Left = 0
        Top = 0
        Width = 16
        Height = 511
        Align = alLeft
        Orientation = pbVertical
        Smooth = True
        TabOrder = 0
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'GAUGE'
      end
      object pbvolumein: TsProgressBar
        Left = 260
        Top = 0
        Width = 16
        Height = 511
        Align = alRight
        Orientation = pbVertical
        Smooth = True
        TabOrder = 1
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'GAUGE'
      end
      object frameBar: TsFrameBar
        Left = 16
        Top = 0
        Width = 244
        Height = 511
        HorzScrollBar.Range = 271
        HorzScrollBar.Visible = False
        VertScrollBar.Range = 158
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
        Enabled = False
        TabOrder = 2
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'BAR'
        AutoFrameSize = False
        Items = <
          item
            Caption = 'Telefone Virtual'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            OnCreateFrame = framebarItems0CreateFrame
          end
          item
            Caption = 'Transfer'#234'ncia'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            OnCreateFrame = framebarItems4CreateFrame
          end
          item
            Caption = 'Pausa'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            OnCreateFrame = framebarItems1CreateFrame
          end
          item
            Caption = 'Configura'#231#245'es'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            Visible = False
            OnCreateFrame = framebarItems2CreateFrame
          end
          item
            Caption = 'Coaching'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            OnCreateFrame = frameBarItems5CreateFrame
          end
          item
            Caption = 'Classifica'#231#227'o'
            Cursor = crDefault
            SkinSection = 'BARTITLE'
            OnCreateFrame = framebarItems3CreateFrame
          end>
        Spacing = 0
        OnChange = frameBarChange
      end
    end
    object panInfo: TsPanel
      Left = 1
      Top = 1
      Width = 276
      Height = 177
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
      object sPanel3: TsPanel
        Left = 5
        Top = 122
        Width = 207
        Height = 52
        TabOrder = 0
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
        object lblDescInicio: TsLabel
          Left = 5
          Top = 2
          Width = 29
          Height = 13
          Caption = 'In'#237'cio:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbinicio: TsLabel
          Left = 55
          Top = 2
          Width = 44
          Height = 13
          Caption = '00:00:00'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescDuracao: TsLabel
          Left = 5
          Top = 19
          Width = 44
          Height = 13
          Caption = 'Dura'#231#227'o:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbduracao: TsLabel
          Left = 55
          Top = 19
          Width = 44
          Height = 13
          Caption = '00:00:00'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescPausa: TsLabel
          Left = 5
          Top = 36
          Width = 33
          Height = 13
          Caption = 'Pausa:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbtempopausa: TsLabel
          Left = 55
          Top = 36
          Width = 44
          Height = 13
          Caption = '00:00:00'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbpausarest: TsLabel
          Left = 130
          Top = 36
          Width = 44
          Height = 13
          Caption = '00:00:00'
          ParentFont = False
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
      end
      object btnDesligar: TsButton
        Left = 217
        Top = 122
        Width = 53
        Height = 53
        Caption = 'Desligar'
        HotImageIndex = 4
        ImageAlignment = iaTop
        ImageIndex = 4
        Images = ImageList1
        TabOrder = 1
        OnClick = btnDesligarClick
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
      end
      object sPanel1: TsPanel
        Left = 217
        Top = 68
        Width = 53
        Height = 51
        TabOrder = 2
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
        object imgtempo: TImage
          Left = 15
          Top = 5
          Width = 24
          Height = 24
          Transparent = True
        end
        object lbtempo: TsLabel
          Left = 3
          Top = 35
          Width = 44
          Height = 13
          Alignment = taCenter
          Caption = '00:00:00'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
      end
      object panInfoChamada: TsPanel
        Left = 5
        Top = 68
        Width = 207
        Height = 52
        TabOrder = 3
        OnMouseDown = panInfoChamadaMouseDown
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
        object lbbina: TsLabel
          Left = 55
          Top = 36
          Width = 3
          Height = 13
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbfila: TsLabel
          Left = 55
          Top = 19
          Width = 3
          Height = 13
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescNumero: TsLabel
          Left = 5
          Top = 36
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescFila: TsLabel
          Left = 5
          Top = 19
          Width = 20
          Height = 13
          Caption = 'Fila:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescCliente: TsLabel
          Left = 130
          Top = 36
          Width = 15
          Height = 13
          Caption = 'C.:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbcliente: TsLabel
          Left = 145
          Top = 36
          Width = 3
          Height = 13
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblLoja: TsLabel
          Left = 55
          Top = 3
          Width = 3
          Height = 13
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDescLoja: TsLabel
          Left = 5
          Top = 3
          Width = 24
          Height = 13
          Caption = 'Loja:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object webExecNavigate: TWebBrowser
          Left = 174
          Top = 18
          Width = 0
          Height = 0
          TabStop = False
          TabOrder = 0
          ControlData = {
            4C00000000000000000000000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E12620A000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object Button2: TButton
          Left = 131
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Finaliza'
          TabOrder = 1
          Visible = False
          OnClick = Button2Click
        end
      end
      object sPanel6: TsPanel
        Left = 5
        Top = 31
        Width = 207
        Height = 35
        TabOrder = 4
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
        object lblDescProtocolo: TsLabel
          Left = 5
          Top = 2
          Width = 49
          Height = 13
          Caption = 'Protocolo:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lbprotocolo: TsLabel
          Left = 5
          Top = 15
          Width = 100
          Height = 19
          Caption = '0000000000'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Button1: TButton
          Left = 131
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Inicia'
          TabOrder = 0
          Visible = False
          OnClick = Button1Click
        end
      end
      object pnstatus: TsPanel
        Left = 0
        Top = 0
        Width = 276
        Height = 29
        Align = alTop
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        SkinData.SkinSection = 'PANEL'
        object lbstatus: TLabel
          Left = 1
          Top = 1
          Width = 274
          Height = 27
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = 2
        end
      end
      object pnrestricao: TsPanel
        Left = 1
        Top = 1
        Width = 275
        Height = 29
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        Visible = False
        SkinData.SkinSection = 'PANEL'
        object lblDescTempoPausa: TsLabel
          Left = 1
          Top = 1
          Width = 273
          Height = 27
          Align = alClient
          Alignment = taCenter
          Caption = 'Tempo de Pausa Esgotado.'#13#10'Entre em Contato com seu supervisor.'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ExplicitWidth = 215
          ExplicitHeight = 26
        end
      end
      object sPanel2: TsPanel
        Left = 217
        Top = 31
        Width = 53
        Height = 35
        TabOrder = 7
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'PANEL'
        object shpCoaching: TShape
          Left = 19
          Top = 4
          Width = 15
          Height = 15
          Hint = 'Coaching'
          ParentShowHint = False
          Shape = stCircle
          ShowHint = True
        end
        object lblDescCoaching: TsLabel
          Left = 5
          Top = 20
          Width = 44
          Height = 13
          Alignment = taCenter
          Caption = 'Coaching'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
      end
    end
    object MemoOld: TMemo
      Left = 26
      Top = 374
      Width = 229
      Height = 129
      Lines.Strings = (
        '')
      TabOrder = 2
      Visible = False
    end
  end
  object vax: TVaxSIPUserAgentOCX
    Left = 286
    Top = -1
    Width = 38
    Height = 22
    TabOrder = 1
    Visible = False
    OnDTMFDigit = vaxDTMFDigit
    OnTryingToUnRegister = vaxTryingToUnRegister
    OnSuccessToUnRegister = vaxSuccessToUnRegister
    OnTryingToRegister = vaxTryingToRegister
    OnFailToRegister = vaxFailToRegister
    OnSuccessToRegister = vaxSuccessToRegister
    OnIncomingCallRingingStart = vaxIncomingCallRingingStart
    OnIncomingCallRingingStop = vaxIncomingCallRingingStop
    OnDisconnectCall = vaxDisconnectCall
    OnRequestFailureResponse = vaxRequestFailureResponse
    OnGeneralFailureResponse = vaxGeneralFailureResponse
    OnSuccessToConnect = vaxSuccessToConnect
    OnIncomingCall = vaxIncomingCall
    OnTryingToReRegister = vaxTryingToReRegister
    OnFailToReRegister = vaxFailToReRegister
    ControlData = {00000100ED0300004602000000000000}
  end
  object panGeral: TsPanel
    Left = 278
    Top = 22
    Width = 819
    Height = 690
    Align = alClient
    TabOrder = 2
    SkinData.SkinManager = sSkinManager1
    SkinData.SkinSection = 'PANEL'
    object sPanel5: TsPanel
      Left = 1
      Top = 1
      Width = 817
      Height = 74
      Align = alTop
      TabOrder = 0
      SkinData.SkinManager = sSkinManager1
      SkinData.SkinSection = 'PANEL'
      object tbrNavegacao: TsToolBar
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 809
        Height = 68
        AutoSize = True
        ButtonHeight = 68
        ButtonWidth = 65
        DoubleBuffered = True
        DrawingStyle = dsGradient
        Images = ilbrowser
        ParentDoubleBuffered = False
        ShowCaptions = True
        TabOrder = 0
        Transparent = True
        BtnDisabledKind = [dkBlended, dkGrayed]
        SkinData.SkinManager = sSkinManager1
        SkinData.SkinSection = 'TOOLBAR'
        object btnChat: TToolButton
          Left = 0
          Top = 0
          Action = actchat
        end
        object btnEMail: TToolButton
          Left = 65
          Top = 0
          Action = actemail
        end
        object btnFAX: TToolButton
          Left = 130
          Top = 0
          Action = actfax
        end
        object btnCliente: TToolButton
          Left = 195
          Top = 0
          Action = actclientes
          Caption = 'TEL'
        end
        object btnSMS: TToolButton
          Left = 260
          Top = 0
          Action = actsms
        end
        object cmdConferencia: TToolButton
          Left = 325
          Top = 0
          Action = actConferencia
          ImageIndex = 10
        end
        object ToolButton4: TToolButton
          Left = 390
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 10
          Style = tbsSeparator
        end
        object btnAgenda: TToolButton
          Left = 398
          Top = 0
          Action = actagenda
        end
        object btnFAQ: TToolButton
          Left = 463
          Top = 0
          Caption = 'FAQ'
          ImageIndex = 4
          OnClick = btnFAQClick
        end
        object btnScript: TToolButton
          Left = 528
          Top = 0
          Action = actscript
        end
        object btnPesquisa: TToolButton
          Left = 593
          Top = 0
          Action = actpesquisa
        end
        object btnAjuda: TToolButton
          Left = 658
          Top = 0
          Action = actajuda
        end
      end
    end
    object edtbrowser: TEdit
      Left = 1
      Top = 75
      Width = 817
      Height = 21
      Align = alTop
      TabOrder = 1
      Visible = False
    end
    object pgcBrowser: TsPageControl
      Left = 1
      Top = 96
      Width = 817
      Height = 593
      ActivePage = tabCliente
      Align = alClient
      TabOrder = 2
      SkinData.SkinManager = sSkinManager1
      SkinData.SkinSection = 'PAGECONTROL'
      object tabCliente: TsTabSheet
        Caption = 'Cliente'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object browsercliente: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 475
          Align = alClient
          TabOrder = 0
          ExplicitTop = -1
          ControlData = {
            4C0000009D530000183100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object sPanel9: TsPanel
          Left = 0
          Top = 501
          Width = 809
          Height = 64
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'sPanel9'
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object memTranscricao: TsMemo
            Left = 0
            Top = 15
            Width = 809
            Height = 49
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel25: TsPanel
            Left = 0
            Top = 0
            Width = 809
            Height = 15
            Align = alTop
            BevelOuter = bvLowered
            TabOrder = 1
            SkinData.SkinSection = 'PANEL'
            object lblTranscricao: TsLabel
              Left = 4
              Top = 1
              Width = 59
              Height = 13
              Caption = 'Transcri'#231#227'o:'
            end
          end
        end
        object sPanel26: TsPanel
          Left = 0
          Top = 475
          Width = 809
          Height = 26
          Align = alBottom
          TabOrder = 2
          SkinData.SkinSection = 'PANEL'
          object imgCallQ1: TImage
            Left = 100
            Top = 4
            Width = 16
            Height = 16
            OnClick = imgCallQ1Click
          end
          object imgCallQ2: TImage
            Left = 120
            Top = 4
            Width = 16
            Height = 16
            OnClick = imgCallQ2Click
          end
          object imgCallQ3: TImage
            Left = 140
            Top = 4
            Width = 16
            Height = 16
            OnClick = imgCallQ3Click
          end
          object imgCallQ4: TImage
            Left = 160
            Top = 4
            Width = 16
            Height = 16
            OnClick = imgCallQ4Click
          end
          object imgCallQ5: TImage
            Left = 180
            Top = 4
            Width = 16
            Height = 16
            OnClick = imgCallQ5Click
          end
          object lblCallQuality: TsLabel
            Left = 4
            Top = 5
            Width = 61
            Height = 13
            Caption = 'lblCallQuality'
          end
          object cmdIntegrador: TsButton
            Left = 708
            Top = 1
            Width = 100
            Height = 24
            Align = alRight
            Caption = 'cmdIntegrador'
            TabOrder = 0
            OnClick = cmdIntegradorClick
            SkinData.SkinSection = 'BUTTON'
          end
        end
      end
      object tabAgenda: TsTabSheet
        Caption = 'Agenda'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browseragenda: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 551
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabScript: TsTabSheet
        Caption = 'Script'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browserscript: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 551
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabChat: TsTabSheet
        Caption = 'CHAT'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object panChat: TsPanel
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'PANEL'
          object panChatMessages: TsPanel
            Left = 1
            Top = 58
            Width = 807
            Height = 506
            Align = alClient
            BorderStyle = bsSingle
            TabOrder = 0
            Visible = False
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'PANEL'
            object stbChat: TsStatusBar
              Left = 1
              Top = 1
              Width = 801
              Height = 20
              Align = alTop
              Panels = <
                item
                  Text = 'Nome:'
                  Width = 470
                end
                item
                  Text = 'Sala:'
                  Width = 300
                end>
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'STATUSBAR'
              object Shape1: TShape
                Left = 1081
                Top = 2
                Width = 16
                Height = 16
                Hint = 'Status da Linha'
                ParentShowHint = False
                Shape = stCircle
                ShowHint = True
              end
            end
            object panChatRight: TsPanel
              Left = 469
              Top = 21
              Width = 333
              Height = 480
              Align = alRight
              BorderStyle = bsSingle
              TabOrder = 1
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
              object grpChatClassificacao: TsGroupBox
                Left = 1
                Top = 1
                Width = 327
                Height = 474
                Align = alClient
                Caption = '[ Classifica'#231#227'o ]'
                TabOrder = 0
                Visible = False
                SkinData.SkinSection = 'GROUPBOX'
                object lblChatClassificacao: TsLabel
                  Left = 5
                  Top = 20
                  Width = 61
                  Height = 13
                  Caption = 'Classifica'#231#227'o'
                end
                object lblChatSubClassificacao: TsLabel
                  Left = 5
                  Top = 60
                  Width = 82
                  Height = 13
                  Caption = 'Sub Classifica'#231#227'o'
                end
                object lblChatObservacao: TsLabel
                  Left = 5
                  Top = 100
                  Width = 58
                  Height = 13
                  Caption = 'Observa'#231#227'o'
                end
                object cboChatClassifica: TsComboBox
                  Left = 5
                  Top = 35
                  Width = 214
                  Height = 21
                  Alignment = taLeftJustify
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                  SkinData.SkinSection = 'COMBOBOX'
                  ItemIndex = -1
                  TabOrder = 0
                  Text = 'Selecione a Classifica'#231#227'o'
                  OnChange = cboChatClassificaChange
                end
                object cboChatClassificaSub: TsComboBox
                  Left = 5
                  Top = 75
                  Width = 214
                  Height = 21
                  Alignment = taLeftJustify
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                  SkinData.SkinSection = 'COMBOBOX'
                  ItemIndex = -1
                  TabOrder = 1
                  Text = 'Selecione a Sub Classifica'#231#227'o'
                end
                object memChatClassificaObs: TsMemo
                  Left = 5
                  Top = 115
                  Width = 214
                  Height = 47
                  TabOrder = 2
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object cmdChatSalvar: TsButton
                  Left = 20
                  Top = 170
                  Width = 66
                  Height = 66
                  Caption = 'Salvar'
                  TabOrder = 3
                  OnClick = cmdChatSalvarClick
                  SkinData.SkinSection = 'BUTTON_HUGE'
                end
                object cmdChatCopiarHistorico: TsButton
                  Left = 120
                  Top = 170
                  Width = 66
                  Height = 66
                  Caption = 'Copiar Hist'#243'rico'
                  TabOrder = 4
                  OnClick = cmdChatCopiarHistoricoClick
                  SkinData.SkinSection = 'BUTTON_HUGE'
                end
                object cmdChatGerarPDF: TsButton
                  Left = 220
                  Top = 170
                  Width = 66
                  Height = 66
                  Caption = 'Gerar PDF'
                  TabOrder = 5
                  OnClick = cmdChatGerarPDFClick
                  SkinData.SkinSection = 'BUTTON_HUGE'
                end
              end
              object grpChatPesquisaHist: TsGroupBox
                Left = 1
                Top = 1
                Width = 327
                Height = 474
                Align = alClient
                Caption = '[ Pesquisa de Hist'#243'rico ]'
                TabOrder = 1
                SkinData.SkinManager = sSkinManager1
                SkinData.SkinSection = 'GROUPBOX'
                object lblChatHistoricoNome: TsLabel
                  Left = 5
                  Top = 20
                  Width = 27
                  Height = 13
                  Caption = 'Nome'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object lblChatHistoricoTelefone: TsLabel
                  Left = 5
                  Top = 60
                  Width = 42
                  Height = 13
                  Caption = 'Telefone'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object lblChatHistoricoProtocolo: TsLabel
                  Left = 5
                  Top = 100
                  Width = 45
                  Height = 13
                  Caption = 'Protocolo'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object lblChatHistoricoEMail: TsLabel
                  Left = 170
                  Top = 20
                  Width = 28
                  Height = 13
                  Caption = 'E-Mail'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object lblChatHistoricoSala: TsLabel
                  Left = 170
                  Top = 60
                  Width = 20
                  Height = 13
                  Caption = 'Sala'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object lblChatHistoricoData: TsLabel
                  Left = 170
                  Top = 100
                  Width = 23
                  Height = 13
                  Caption = 'Data'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object cmdChatPesquisarHist: TsButton
                  Left = 261
                  Top = 102
                  Width = 60
                  Height = 36
                  Caption = 'Pesquisar'
                  TabOrder = 5
                  OnClick = cmdChatPesquisarHistClick
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'PANEL'
                end
                object txtChatHistoricoNome: TsEdit
                  Left = 5
                  Top = 35
                  Width = 150
                  Height = 21
                  TabOrder = 0
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                end
                object txtChatHistoricoTelefone: TsEdit
                  Left = 5
                  Top = 75
                  Width = 150
                  Height = 21
                  TabOrder = 1
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                end
                object txtChatHistoricoProtocolo: TsEdit
                  Left = 5
                  Top = 115
                  Width = 150
                  Height = 21
                  TabOrder = 2
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                end
                object txtChatHistoricoEMail: TsEdit
                  Left = 170
                  Top = 35
                  Width = 150
                  Height = 21
                  TabOrder = 3
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                end
                object txtChatHistoricoSala: TsEdit
                  Left = 170
                  Top = 75
                  Width = 150
                  Height = 21
                  TabOrder = 4
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                end
                object grdChatPesquisaHist: TDBGrid
                  Left = 2
                  Top = 315
                  Width = 323
                  Height = 157
                  Align = alBottom
                  DataSource = datam.dtsChatPesquisaHist
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                  ReadOnly = True
                  TabOrder = 6
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Visible = False
                  OnDblClick = grdChatPesquisaHistDblClick
                end
                object txtChatHistoricoData: TsDateEdit
                  Left = 170
                  Top = 115
                  Width = 85
                  Height = 21
                  AutoSize = False
                  EditMask = '!99/99/9999;1; '
                  MaxLength = 10
                  TabOrder = 7
                  Text = '  /  /    '
                  BoundLabel.Indent = 0
                  BoundLabel.Font.Charset = DEFAULT_CHARSET
                  BoundLabel.Font.Color = clWindowText
                  BoundLabel.Font.Height = -11
                  BoundLabel.Font.Name = 'Tahoma'
                  BoundLabel.Font.Style = []
                  BoundLabel.Layout = sclLeft
                  BoundLabel.MaxWidth = 0
                  BoundLabel.UseSkinColor = True
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'EDIT'
                  GlyphMode.Blend = 0
                  GlyphMode.Grayed = False
                  DialogTitle = 'Selecione uma data'
                end
              end
            end
            object panChatHistorico: TsPanel
              Left = 1
              Top = 21
              Width = 468
              Height = 480
              Align = alClient
              TabOrder = 2
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
              object sButton1: TsButton
                Left = 725
                Top = 200
                Width = 70
                Height = 85
                Caption = 'Enviar'
                HotImageIndex = 3
                ImageAlignment = iaTop
                ImageIndex = 3
                Images = ilbrowser
                TabOrder = 0
                OnClick = btnDesligarClick
                SkinData.SkinManager = sSkinManager1
                SkinData.SkinSection = 'PANEL'
              end
              object panChatSend: TsPanel
                Left = 1
                Top = 364
                Width = 466
                Height = 115
                Align = alBottom
                BorderStyle = bsSingle
                TabOrder = 1
                SkinData.SkinManager = sSkinManager1
                SkinData.SkinSection = 'PANEL'
                object sButton2: TsButton
                  Left = 725
                  Top = 200
                  Width = 70
                  Height = 85
                  Caption = 'Enviar'
                  HotImageIndex = 3
                  ImageAlignment = iaTop
                  ImageIndex = 3
                  Images = ilbrowser
                  TabOrder = 0
                  OnClick = btnDesligarClick
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'PANEL'
                end
                object sPanel15: TsPanel
                  Left = 371
                  Top = 1
                  Width = 90
                  Height = 109
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'PANEL'
                  object cmdChatSend: TsButton
                    Left = 5
                    Top = 2
                    Width = 80
                    Height = 53
                    Caption = 'Enviar'
                    HotImageIndex = 0
                    ImageAlignment = iaTop
                    ImageIndex = 0
                    ImageMargins.Top = -24
                    ImageMargins.Bottom = -9
                    Images = imlChat
                    TabOrder = 0
                    OnClick = cmdChatSendClick
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'PANEL'
                  end
                  object cmdChatClear: TsButton
                    Left = 5
                    Top = 58
                    Width = 80
                    Height = 25
                    Caption = 'Limpar'
                    ImageAlignment = iaTop
                    TabOrder = 1
                    OnClick = cmdChatClearClick
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'PANEL'
                  end
                  object chkChatRolagem: TsCheckBox
                    Left = 4
                    Top = 85
                    Width = 84
                    Height = 20
                    Caption = 'Auto rolagem'
                    TabOrder = 2
                    OnClick = chkChatRolagemClick
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'CHECKBOX'
                    ImgChecked = 0
                    ImgUnchecked = 0
                  end
                end
                object sPanel19: TsPanel
                  Left = 1
                  Top = 1
                  Width = 370
                  Height = 109
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 2
                  SkinData.SkinManager = sSkinManager1
                  SkinData.SkinSection = 'PANEL'
                  object cboChatGroup: TsComboBox
                    Left = 5
                    Top = 58
                    Width = 165
                    Height = 21
                    Alignment = taLeftJustify
                    BoundLabel.Indent = 0
                    BoundLabel.Font.Charset = DEFAULT_CHARSET
                    BoundLabel.Font.Color = clWindowText
                    BoundLabel.Font.Height = -11
                    BoundLabel.Font.Name = 'Tahoma'
                    BoundLabel.Font.Style = []
                    BoundLabel.Layout = sclLeft
                    BoundLabel.MaxWidth = 0
                    BoundLabel.UseSkinColor = True
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'COMBOBOX'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemIndex = -1
                    ParentFont = False
                    TabOrder = 0
                    Text = 'Selecione o Grupo'
                    OnChange = cboChatGroupChange
                    OnClick = cboChatGroupClick
                  end
                  object cboChatDefaultMsg: TsComboBox
                    Left = 5
                    Top = 84
                    Width = 165
                    Height = 21
                    Alignment = taLeftJustify
                    BoundLabel.Indent = 0
                    BoundLabel.Font.Charset = DEFAULT_CHARSET
                    BoundLabel.Font.Color = clWindowText
                    BoundLabel.Font.Height = -11
                    BoundLabel.Font.Name = 'Tahoma'
                    BoundLabel.Font.Style = []
                    BoundLabel.Layout = sclLeft
                    BoundLabel.MaxWidth = 0
                    BoundLabel.UseSkinColor = True
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'COMBOBOX'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemIndex = -1
                    ParentFont = False
                    TabOrder = 1
                    Text = 'Selecione a Resposta'
                    OnChange = cboChatDefaultMsgChange
                    OnClick = cboChatDefaultMsgClick
                  end
                  object radChatSendTo: TsRadioGroup
                    Left = 175
                    Top = 56
                    Width = 195
                    Height = 51
                    Caption = '[ Mensagem para ... ]'
                    ParentBackground = False
                    TabOrder = 2
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'GROUPBOX'
                    Columns = 2
                    Items.Strings = (
                      'Cliente'
                      'Supervisor'
                      'Confer'#234'ncia')
                  end
                  object sPanel18: TsPanel
                    Left = 0
                    Top = 0
                    Width = 370
                    Height = 53
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 3
                    SkinData.SkinManager = sSkinManager1
                    SkinData.SkinSection = 'CHECKBOX'
                    object sPanel17: TsPanel
                      Left = 0
                      Top = 0
                      Width = 370
                      Height = 0
                      Align = alTop
                      BevelOuter = bvNone
                      TabOrder = 0
                      SkinData.SkinManager = sSkinManager1
                      SkinData.SkinSection = 'PANEL'
                    end
                    object memChatSend: TsMemo
                      Left = 0
                      Top = 0
                      Width = 370
                      Height = 53
                      Align = alClient
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnClick = memChatSendClick
                      OnExit = memChatSendExit
                      OnKeyUp = memChatSendKeyUp
                      BoundLabel.Indent = 0
                      BoundLabel.Font.Charset = DEFAULT_CHARSET
                      BoundLabel.Font.Color = clWindowText
                      BoundLabel.Font.Height = -11
                      BoundLabel.Font.Name = 'Tahoma'
                      BoundLabel.Font.Style = []
                      BoundLabel.Layout = sclLeft
                      BoundLabel.MaxWidth = 0
                      BoundLabel.UseSkinColor = True
                      SkinData.SkinManager = sSkinManager1
                      SkinData.SkinSection = 'EDIT'
                    end
                    object sPanel16: TsPanel
                      Left = 0
                      Top = 0
                      Width = 0
                      Height = 53
                      Align = alLeft
                      BevelOuter = bvNone
                      TabOrder = 2
                      SkinData.SkinManager = sSkinManager1
                      SkinData.SkinSection = 'PANEL'
                    end
                  end
                end
              end
            end
          end
          object panChatRoom: TsPanel
            Left = 1
            Top = 1
            Width = 807
            Height = 57
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'PANEL'
          end
        end
      end
      object tabChatHist: TsTabSheet
        Caption = 'CHAT Hist'#243'rico'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object memChatPesquisaHistorico: TsRichEdit
          Left = 0
          Top = 55
          Width = 809
          Height = 510
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'EDIT'
        end
        object sPanel14: TsPanel
          Left = 0
          Top = 0
          Width = 809
          Height = 55
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'PANEL'
          object sPanel4: TsPanel
            Left = 0
            Top = 0
            Width = 657
            Height = 55
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'PANEL'
            object sLabel4: TsLabel
              Left = 5
              Top = 5
              Width = 31
              Height = 13
              Caption = 'Nome:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object sLabel5: TsLabel
              Left = 5
              Top = 20
              Width = 46
              Height = 13
              Caption = 'Telefone:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object sLabel6: TsLabel
              Left = 5
              Top = 35
              Width = 49
              Height = 13
              Caption = 'Protocolo:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object sLabel10: TsLabel
              Left = 300
              Top = 5
              Width = 32
              Height = 13
              Caption = 'E-Mail:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object sLabel11: TsLabel
              Left = 300
              Top = 20
              Width = 24
              Height = 13
              Caption = 'Sala:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblChatPesquisaHistoricoNome: TsLabel
              Left = 60
              Top = 5
              Width = 3
              Height = 13
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblChatPesquisaHistoricoTelefone: TsLabel
              Left = 60
              Top = 20
              Width = 3
              Height = 13
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblChatPesquisaHistoricoProtocolo: TsLabel
              Left = 60
              Top = 35
              Width = 3
              Height = 13
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblChatPesquisaHistoricoEMail: TsLabel
              Left = 338
              Top = 5
              Width = 3
              Height = 13
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblChatPesquisaHistoricoSala: TsLabel
              Left = 338
              Top = 20
              Width = 3
              Height = 13
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
          end
          object sPanel13: TsPanel
            Left = 657
            Top = 0
            Width = 152
            Height = 55
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'CHECKBOX'
            object cmdChatHistoricoFechar: TsButton
              Left = 76
              Top = 5
              Width = 66
              Height = 45
              Caption = 'Fechar'
              TabOrder = 0
              OnClick = cmdChatHistoricoFecharClick
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
            end
            object cmdChatHistoricoGerarPDF: TsButton
              Left = 5
              Top = 5
              Width = 66
              Height = 45
              Caption = 'Gerar PDF'
              Enabled = False
              TabOrder = 1
              OnClick = cmdChatHistoricoGerarPDFClick
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
            end
          end
        end
      end
      object tabFAQ: TsTabSheet
        Caption = 'FAQ'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel7: TsPanel
          Left = 0
          Top = 0
          Width = 185
          Height = 565
          Align = alLeft
          TabOrder = 0
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'PANEL'
          object sPanel11: TsPanel
            Left = 1
            Top = 99
            Width = 183
            Height = 465
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'PANEL'
            object panFAQSub: TsPanel
              Left = 0
              Top = 200
              Width = 183
              Height = 265
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
              object panFAQSep: TsPanel
                Left = 0
                Top = 0
                Width = 183
                Height = 10
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                SkinData.SkinManager = sSkinManager1
                SkinData.SkinSection = 'PANEL'
              end
              object lstFAQFindSub: TsListBox
                Left = 0
                Top = 10
                Width = 183
                Height = 255
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = lstFAQFindSubClick
                BoundLabel.Indent = 0
                BoundLabel.Font.Charset = DEFAULT_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -11
                BoundLabel.Font.Name = 'Tahoma'
                BoundLabel.Font.Style = []
                BoundLabel.Layout = sclLeft
                BoundLabel.MaxWidth = 0
                BoundLabel.UseSkinColor = True
                SkinData.SkinManager = sSkinManager1
                SkinData.SkinSection = 'EDIT'
              end
            end
            object lstFAQFind: TsListBox
              Left = 0
              Top = 0
              Width = 183
              Height = 200
              Align = alTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = lstFAQFindClick
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'EDIT'
            end
          end
          object sPanel12: TsPanel
            Left = 1
            Top = 1
            Width = 183
            Height = 98
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            SkinData.SkinSection = 'PANEL'
            object sLabel7: TsLabel
              Left = 3
              Top = 51
              Width = 66
              Height = 13
              Caption = 'Procupar Por:'
            end
            object sLabel3: TsLabel
              Left = 3
              Top = 6
              Width = 85
              Height = 13
              Caption = 'Selecione o Filtro:'
            end
            object txtFAQFind: TsEdit
              Left = 3
              Top = 66
              Width = 175
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = txtFAQFindChange
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object cboFAQFilter: TsComboBox
              Left = 3
              Top = 21
              Width = 175
              Height = 21
              Alignment = taLeftJustify
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'COMBOBOX'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = -1
              ParentFont = False
              TabOrder = 1
              OnChange = cboFAQFilterChange
            end
          end
        end
        object sPanel8: TsPanel
          Left = 185
          Top = 0
          Width = 624
          Height = 565
          Align = alClient
          TabOrder = 1
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'PANEL'
          object panChatFAQURLDesabilitado: TsPanel
            Left = 1
            Top = 1
            Width = 622
            Height = 0
            Align = alTop
            TabOrder = 0
            Visible = False
            SkinData.SkinSection = 'PANEL'
            object txtChatFAQURLDesabilitado: TsEdit
              Left = 31
              Top = 1
              Width = 590
              Height = 21
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Visible = False
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object sPanel10: TsPanel
              Left = 1
              Top = 1
              Width = 30
              Height = 18
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'PANEL'
              object sLabel2: TsLabel
                Left = 1
                Top = 3
                Width = 23
                Height = 13
                Caption = 'URL:'
                Visible = False
              end
            end
          end
          object browserChatFAQDesabilitado: TWebBrowser
            Left = 1
            Top = 1
            Width = 622
            Height = 563
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 0
            ControlData = {
              4C00000049400000303A00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
          object memChatFAQText: TMemo
            Left = 1
            Top = 1
            Width = 622
            Height = 563
            Align = alClient
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 2
          end
        end
      end
      object tabEMail: TsTabSheet
        Caption = 'E-Mail'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object panEMailPrincipal: TsPanel
          Left = 250
          Top = 0
          Width = 559
          Height = 565
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sToolBar1: TsToolBar
            Left = 0
            Top = 0
            Width = 559
            Height = 21
            Caption = 'sToolBar1'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
            SkinData.SkinSection = 'TOOLBAR'
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Caption = 'ToolButton1'
              ImageIndex = 0
            end
            object ToolButton2: TToolButton
              Left = 23
              Top = 0
              Caption = 'ToolButton2'
              ImageIndex = 1
            end
            object ToolButton3: TToolButton
              Left = 46
              Top = 0
              Caption = 'ToolButton3'
              ImageIndex = 2
            end
          end
          object panEMailWrite: TsPanel
            Left = 32
            Top = 40
            Width = 617
            Height = 457
            Caption = 'panEMailWrite'
            TabOrder = 1
            Visible = False
            SkinData.SkinSection = 'PANEL'
            object lblEMailRespDe: TsLabel
              Left = 75
              Top = 15
              Width = 13
              Height = 13
              Caption = 'De'
            end
            object lblEMailRespPara: TsLabel
              Left = 75
              Top = 40
              Width = 34
              Height = 13
              Caption = 'Para...'
            end
            object lblEMailRespCc: TsLabel
              Left = 75
              Top = 65
              Width = 24
              Height = 13
              Caption = 'Cc...'
            end
            object lblEMailRespCco: TsLabel
              Left = 75
              Top = 90
              Width = 30
              Height = 13
              Caption = 'Cco...'
            end
            object lblEMailRespAssunto: TsLabel
              Left = 75
              Top = 115
              Width = 39
              Height = 13
              Caption = 'Assunto'
            end
            object txtEMailRespDe: TsEdit
              Left = 120
              Top = 10
              Width = 350
              Height = 21
              TabOrder = 0
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object txtEMailRespPara: TsEdit
              Left = 120
              Top = 35
              Width = 350
              Height = 21
              TabOrder = 1
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object txtEMailRespCc: TsEdit
              Left = 120
              Top = 60
              Width = 350
              Height = 21
              TabOrder = 2
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object txtEMailRespCco: TsEdit
              Left = 120
              Top = 85
              Width = 350
              Height = 21
              TabOrder = 3
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object txtEMailRespAssunto: TsEdit
              Left = 120
              Top = 110
              Width = 350
              Height = 21
              TabOrder = 4
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object cmdEMailRespCancelar: TsButton
              Left = 10
              Top = 85
              Width = 55
              Height = 46
              Caption = 'Cancelar'
              TabOrder = 5
              SkinData.SkinSection = 'BUTTON'
            end
            object cmdEMailRespEnviar: TsButton
              Left = 10
              Top = 10
              Width = 55
              Height = 71
              Caption = 'Enviar'
              TabOrder = 6
              SkinData.SkinSection = 'BUTTON'
            end
            object memEMailRespTexto: TsMemo
              Left = 10
              Top = 140
              Width = 447
              Height = 300
              TabOrder = 7
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinSection = 'EDIT'
            end
          end
          object panEMailRead: TsPanel
            Left = 184
            Top = 40
            Width = 559
            Height = 544
            Caption = 'panEMailWrite'
            TabOrder = 2
            Visible = False
            SkinData.SkinSection = 'PANEL'
            object lblEMailReadAssunto: TsLabel
              Left = 10
              Top = 5
              Width = 79
              Height = 23
              Caption = 'Subject:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object lblEMailReadDe: TsLabel
              Left = 10
              Top = 30
              Width = 35
              Height = 16
              Caption = 'From:'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            object lblEMailReadDataHora: TsLabel
              Left = 19
              Top = 55
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = 'Sent:'
            end
            object lblEMailReadPara: TsLabel
              Left = 29
              Top = 75
              Width = 16
              Height = 13
              Alignment = taRightJustify
              Caption = 'To:'
            end
            object lblEMailReadDataHoraTxt: TsLabel
              Left = 50
              Top = 55
              Width = 26
              Height = 13
              Caption = 'Sent:'
            end
            object lblEMailReadParaTxt: TsLabel
              Left = 50
              Top = 75
              Width = 16
              Height = 13
              Caption = 'To:'
            end
            object memEMailReadTexto: TsMemo
              Left = 10
              Top = 95
              Width = 447
              Height = 330
              ReadOnly = True
              TabOrder = 0
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinSection = 'EDIT'
            end
          end
        end
        object scrEMailRecebido: TsScrollBox
          Left = 0
          Top = 0
          Width = 250
          Height = 565
          Align = alLeft
          BorderStyle = bsNone
          TabOrder = 1
          SkinData.SkinSection = 'PANEL_LOW'
          object imgEMailPesquisar: TImage
            Left = 211
            Top = 23
            Width = 33
            Height = 35
          end
          object stbEMail: TsLabel
            Left = 5
            Top = 4
            Width = 230
            Height = 13
            Align = alCustom
            Alignment = taCenter
            AutoSize = False
          end
          object shaEMailLine: TShape
            Left = 1
            Top = 20
            Width = 248
            Height = 1
            Pen.Color = clSilver
          end
          object txtEMailPesquisar: TsEdit
            Left = 5
            Top = 25
            Width = 205
            Height = 21
            TabOrder = 0
            Text = 'Pesquisar...'
            OnEnter = txtEMailPesquisarEnter
            OnExit = txtEMailPesquisarExit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
        end
      end
      object tabFAX: TsTabSheet
        Caption = 'FAX'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browserfax: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 551
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabSMS: TsTabSheet
        Caption = 'SMS'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browsersms: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 551
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabPesquisa: TsTabSheet
        Caption = 'Pesquisa'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browserpesquisa: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = -1
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabAjuda: TsTabSheet
        Caption = 'Ajuda'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object browserajuda: TWebBrowser
          Left = 0
          Top = 0
          Width = 809
          Height = 565
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 551
          ControlData = {
            4C0000009D530000653A00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabConferencia: TsTabSheet
        Caption = 'Confer'#234'ncia'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel20: TsPanel
          Left = 0
          Top = 0
          Width = 185
          Height = 565
          Align = alLeft
          TabOrder = 0
          SkinData.SkinManager = sSkinManager1
          SkinData.SkinSection = 'PANEL'
          object sPanel21: TsPanel
            Left = 1
            Top = 99
            Width = 183
            Height = 465
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            SkinData.SkinManager = sSkinManager1
            SkinData.SkinSection = 'PANEL'
            object lstConfCallFind: TsListBox
              Left = 0
              Top = 0
              Width = 183
              Height = 465
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = lstConfCallFindClick
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'EDIT'
            end
          end
          object sPanel24: TsPanel
            Left = 1
            Top = 1
            Width = 183
            Height = 98
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            SkinData.SkinSection = 'PANEL'
            object sLabel8: TsLabel
              Left = 3
              Top = 51
              Width = 66
              Height = 13
              Caption = 'Procupar Por:'
            end
            object sLabel9: TsLabel
              Left = 3
              Top = 6
              Width = 85
              Height = 13
              Caption = 'Selecione o Filtro:'
            end
            object txtConfCallFind: TsEdit
              Left = 3
              Top = 66
              Width = 175
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = txtConfCallFindChange
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
            end
            object cboConfCallFilter: TsComboBox
              Left = 3
              Top = 21
              Width = 175
              Height = 21
              Alignment = taLeftJustify
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinManager = sSkinManager1
              SkinData.SkinSection = 'COMBOBOX'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = -1
              ParentFont = False
              TabOrder = 1
              OnChange = cboConfCallFilterChange
            end
          end
        end
        object sPanel23: TsPanel
          Left = 185
          Top = 0
          Width = 624
          Height = 565
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object sPanel22: TsPanel
            Left = 0
            Top = 315
            Width = 624
            Height = 250
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
            object grpConfDigitsL1: TsGroupBox
              Left = 315
              Top = 0
              Width = 300
              Height = 250
              Caption = '[ Digitos recebidos - Linha 1 ]'
              TabOrder = 0
              Visible = False
              SkinData.SkinSection = 'GROUPBOX'
              object memConfDigitsL1: TsMemo
                Left = 2
                Top = 15
                Width = 296
                Height = 233
                Align = alClient
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
                BoundLabel.Indent = 0
                BoundLabel.Font.Charset = DEFAULT_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -11
                BoundLabel.Font.Name = 'Tahoma'
                BoundLabel.Font.Style = []
                BoundLabel.Layout = sclLeft
                BoundLabel.MaxWidth = 0
                BoundLabel.UseSkinColor = True
                SkinData.SkinSection = 'EDIT'
              end
            end
            object grpConfDigitsL0: TsGroupBox
              Left = 5
              Top = 0
              Width = 300
              Height = 250
              Caption = '[ Digitos recebidos - Linha 0 ]'
              TabOrder = 1
              Visible = False
              SkinData.SkinSection = 'GROUPBOX'
              object memConfDigitsL0: TsMemo
                Left = 2
                Top = 15
                Width = 296
                Height = 233
                Align = alClient
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
                BoundLabel.Indent = 0
                BoundLabel.Font.Charset = DEFAULT_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -11
                BoundLabel.Font.Name = 'Tahoma'
                BoundLabel.Font.Style = []
                BoundLabel.Layout = sclLeft
                BoundLabel.MaxWidth = 0
                BoundLabel.UseSkinColor = True
                SkinData.SkinSection = 'EDIT'
              end
            end
          end
          object cmdExecConf: TsButton
            Left = 5
            Top = 10
            Width = 66
            Height = 66
            Caption = 'Executar Confer'#234'ncia'
            TabOrder = 1
            OnClick = cmdExecConfClick
            SkinData.SkinSection = 'BUTTON_HUGE'
          end
          object cmdDestroyConf: TsButton
            Left = 5
            Top = 170
            Width = 66
            Height = 66
            Caption = 'Desmontar Confer'#234'ncia'
            TabOrder = 2
            OnClick = cmdDestroyConfClick
            SkinData.SkinSection = 'BUTTON_HUGE'
          end
          object cmdCreateConf: TsButton
            Left = 6
            Top = 90
            Width = 66
            Height = 66
            Caption = 'Montar Confer'#234'ncia'
            TabOrder = 3
            OnClick = cmdCreateConfClick
            SkinData.SkinSection = 'BUTTON_HUGE'
          end
        end
      end
    end
  end
  object stbStatusBar: TsStatusBar
    Left = 0
    Top = 712
    Width = 1097
    Height = 20
    Panels = <
      item
        Width = 20
      end
      item
        Text = 'Ramal n'#227'o Registrado'
        Width = 260
      end
      item
        Text = 'Agente:'
        Width = 370
      end
      item
        Text = 'Login:'
        Width = 190
      end
      item
        Text = 'Vers'#227'o:'
        Width = 130
      end
      item
        Text = 'S2V:'
        Width = 200
      end>
    ParentShowHint = False
    ShowHint = True
    SkinData.SkinManager = sSkinManager1
    SkinData.SkinSection = 'STATUSBAR'
    object shpStatus: TShape
      Left = 1
      Top = 3
      Width = 15
      Height = 15
      Hint = 'Status da Linha'
      ParentShowHint = False
      Shape = stCircle
      ShowHint = True
    end
  end
  object wavAudioRing: TMediaPlayer
    Left = 330
    Top = -9
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    Visible = False
    TabOrder = 4
    OnNotify = wavAudioRingNotify
  end
  object tbrTop: TsToolBar
    Left = 0
    Top = 0
    Width = 1097
    Height = 22
    AutoSize = True
    DoubleBuffered = True
    HotImages = ImageList1
    Images = ImageList1
    List = True
    ParentDoubleBuffered = False
    TabOrder = 5
    Transparent = True
    SkinData.SkinSection = 'TOOLBAR'
    object btnLogin: TToolButton
      Left = 0
      Top = 0
      Action = actlogin
      ParentShowHint = False
      ShowHint = True
    end
    object btnLogoff: TToolButton
      Left = 23
      Top = 0
      Action = actlogoff
      ParentShowHint = False
      ShowHint = True
    end
    object btnFechar: TToolButton
      Left = 46
      Top = 0
      Action = actsair
      ParentShowHint = False
      ShowHint = True
    end
    object tbrSeparator: TToolButton
      Left = 69
      Top = 0
      Width = 864
      ParentCustomHint = False
      Enabled = False
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = False
      Style = tbsSeparator
    end
    object cmdMinimizar: TToolButton
      Left = 933
      Top = 0
      Caption = 'cmdMinimizar'
      ImageIndex = 5
      OnClick = cmdMinimizarClick
    end
    object cmdMaximizar: TToolButton
      Left = 956
      Top = 0
      Caption = 'cmdMaximizar'
      ImageIndex = 6
      OnClick = cmdMaximizarClick
    end
  end
  object Screen2Video: TScreen2Video
    Left = 0
    Top = 569
    Width = 257
    Height = 105
    TabOrder = 6
    ControlData = {
      00000100901A0000DA0A00000000000000000000000000010000000000004605
      8F020004393937360101000000000000000000F0BF020044AC00008000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 1040
    Top = 256
    object actlogin: TAction
      Caption = 'Login'
      ImageIndex = 1
      OnExecute = actloginExecute
    end
    object actsair: TAction
      Caption = 'Sair'
      ImageIndex = 0
      OnExecute = actsairExecute
    end
    object actlogoff: TAction
      Caption = 'Logoff'
      Enabled = False
      ImageIndex = 2
      OnExecute = actlogoffExecute
    end
    object actweb: TAction
      Caption = 'actweb'
    end
    object actrelatorio: TAction
      Caption = 'actrelatorio'
    end
  end
  object ImageList1: TImageList
    Left = 1040
    Top = 56
    Bitmap = {
      494C01010700E000700510001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00EAEAEA00E3E3E300E9E9E900F9F9F9000000
      000000000000000000000000000000000000000000001C1C1C00303030003232
      3200323232003232320032323200323232003232320032323200323232003232
      320032323200303030001C1C1C0000000000000000001C1C1C00303030003232
      3200323232003232320032323200323232003232320032323200323232003232
      320032323200303030001C1C1C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFDF200DFE2
      CF00E3E4DE00F8F8F700FDFDFD00C6C6C600FEFEFE00FAFAFA00EBEBEB00E2E2
      E200FAFAFA000000000000000000000000001C1C1C0032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      32003232320032323200323232001C1C1C001C1C1C0032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      32003232320032323200323232001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEEE0002C2970000000
      D7002E12DB000000000000000000FCFCFC00E8E8E800E1E1E100DCDCDC00F9F9
      F900E6E6E600F5F5F50000000000000000003030300032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200303030003030300032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDF900757788000000B2004323
      FF004B2CFF00CCC7E40000000000F6F6F600EAEAEA00F8F8F80000000000D0D0
      D000F1F1F100E5E5E500FCFCFC00000000003232320032323200323232002C2C
      2C002F2F2F000101010001010100010101000101010001010100010101000101
      01002C2C2C003232320032323200323232003232320032323200323232002C2C
      2C002F2F2F000101010001010100010101000101010001010100010101000101
      01002C2C2C003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4EB00322F72001300C5002A07
      FF004626FF002F15D30000000000C6C6C60000000000F4F4F400E5E5E5000000
      0000C8C8C800F9F9F900E6E6E600000000003232320032323200323232000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232003232320032323200323232000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F4EB00332E7700080092001A00
      C2000000C600675AAF0000000000F9F9F900E3E3E300D4D4D400FAFAFA00E8E8
      E800F6F6F600D5D5D500E7E7E700000000003232320032323200323232000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000131313003232320032323200323232003232320032323200323232000000
      0000252525003232320032323200323232003232320032323200323232002525
      2500000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F2006D6D8E00070094000900
      B9009A96B2000000000000000000F3F3F300EFEFEF00F8F8F800CECECE00EEEE
      EE00FDFDFD00C9C9C900F6F6F600F1F1F1003232320032323200323232003030
      3000303030003030300030303000303030003030300030303000303030003030
      3000303030003232320032323200323232003232320032323200323232000000
      0000010101003232320032323200323232003232320032323200323232000101
      0100000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F600C5C7B600000090001200
      CA007B68EB000000000000000000C7C7C700F1F1F100F2F2F200C7C7C700F2F2
      F200F6F6F600C9C9C900F4F4F400EDEDED003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232000000
      0000010101003232320032323200323232003232320032323200323232000101
      0100000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFF0E4003D338C000F00
      AA000700ED00ECEDE70000000000ECECEC00E8E8E80000000000F6F6F600EBEB
      EB0000000000F8F8F800E9E9E900F8F8F8003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232000000
      0000252525003232320032323200323232003232320032323200323232002525
      2500000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F9FAF800C1C4B5000200
      A3001500C4002808EA00FFFFEE00000000000000000000000000000000000000
      00000000000000000000FBFBFB00F9F9F9003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F5F5F500FAFBF4008986
      9C000200C0001500D7002808E900F0F2E200F9FCE3006F6B9D005F50C200E5E5
      E000FFFFFC0000000000F3F3F300FEFEFE003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20000000000F7F9
      EC007A749B000500D1001900E5001500F7003C2F99000000AC002804FF00300E
      FF004830D800ECECEC00F6F6F400000000003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000212121003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F0F0F0000000
      0000F9FBED008C89A3000700D6001B00F7001500CA001300AE004525FF00765E
      FF000C00F800B2AECD0000000000000000003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F1F1
      F10000000000FFFFF700C2C4B8002E16BF000C00F4001200C5002400FF001B00
      FF000D00BF00FAFBEF0000000000000000003030300032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200303030003030300032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F2F2F200F6F6F600FDFDFA00FAFDE500ACABBA004E3CB8003723B2007064
      BB00FDFFED000000000000000000000000001C1C1C0032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      32003232320032323200323232001C1C1C001C1C1C0032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      32003232320032323200323232001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F8F8F800FBFCF700FFFFF500FFFFFB000000
      000000000000000000000000000000000000000000001C1C1C00303030003232
      3200323232003232320032323200323232003232320032323200323232003232
      320032323200303030001C1C1C0000000000000000001C1C1C00303030003232
      3200323232003232320032323200323232003232320032323200323232003232
      320032323200303030001C1C1C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ED75ED00EBABE800E9EFE300E9ECE300EBD1E700EA6FEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDEDE00C7C7C900C1BEC300BCB9BE00BBBABC00D1D1D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDE00C7C8C700C2C2BE00BDBEB900BBBCBB00D1D1D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F839
      F800DFFFDB00FFFFF700C3CBD3008A8AB3008989B300B8BCCD00FFFFF900E0FF
      DB00F460F500000000000000000000000000000000000000000000000000F1F1
      F100DFDEE000E6E1E700D8D6D500C9D2C900CCD7CF00DEE0DF00E5DEE400CCCA
      CD00E7E8E800000000000000000000000000000000000000000000000000F1F1
      F100DFDFDF00E8E8E100D8D8D700C7C8D400CACBDA00DDDEE100E6E5DE00CDCD
      CB00E7E7E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000F738F700EEFF
      E400D1D1DD00050A76000000700004097600040A76000003720000017000B9BA
      D100F6FFEA00F389F30000000000000000000000000000000000ECEDED00E5E2
      E700CECDC800688E6500307C3D00227C3700237E3A003487480077AE8400E0E9
      E200D3CDD300DBDBDC0000000000000000000000000000000000ECECED00E6E6
      E200CDCDCE005F62970022278A0012198B00131A8D00252B94006D71B600DEDF
      EA00D4D4CE00DBDBDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000E9FFE200C1C2
      D700000074001017860000007B0045499E004C4FA10000017C000D1485000000
      75009D9EC800F0FFE500FF20FF000000000000000000F6F6F600E9E7EB00ACB1
      A300226927001C853C00278D4A00298E4B00298D4B00278A4700198038002985
      4300CCE1D200D3CDD300EAEAEA000000000000000000F6F6F600E9EAE700A9A9
      B400141978000C13950018209D001B229D001B229C00181F9A00091091001A21
      9400C9CAE500D4D4CD00EAEAEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000080800000FFFF000000000000000000EF85EE00FFFFF7000000
      81001016900032379F00FFFFF900FFFFF700FFFFF700FFFFFD004E51AA000A10
      8D0000007F00F2FDF000EEA6EA000000000000000000EEEDF000C4C2BE001F65
      2200259550002B9554002A9755002A9856002A9856002A9654002B945200228C
      470028894600E3EBE500CDCBCE000000000000000000EEEEED00C4C3C4001216
      7300161EA3001D24A2001C23A3001C23A3001C23A3001C23A2001D24A100141B
      9B0019209800E1E2ED00CECECB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF00000000000000000000000000F5F7EC008A8FC800070E
      96000B109700FFFFFD00FAA1F9000000000000000000FC4EFB00FFFFFE002227
      9F000B1197006C6EBB00F7FFED0000000000F2F2F200EDE8EE0053754A001E90
      48002A9C5A002A9E5D002AA15F002AA260002AA260002AA05F002A9D5B002B99
      5700198B440073B48900E6DFE500D4D4D500F2F2F200EEEEE8004B4D7D000F16
      9D001C23A6001C23A8001C23A9001C23AA001C23AA001C23A9001C23A7001D24
      A4000A129900696EBE00E7E7DE00D4D4D5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF00000000000000000000000000FF02FF00FFFFF0004449B400060E
      9E008587CD00FFFFF400F17CF100ECFFE500F0FFE700EC85EC00FDB1F500A8B0
      D700040C9E002429A900FFFFEF00FF4AFF00F2F1F300CCC7C600236E2E0029A4
      61002AA462002AA867002AAB6A002AAC6B002AAC6B002AAA69002AA665002AA2
      6000279B580030975800DFE3E100B9B6BA00F2F2F100CBCBC900161B79001A22
      AE001C23AB001C23AE001C23B0001C23B0001C23B0001C23AF001C23AD001C23
      AA001920A5002229A300DEDEE400B9B9B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000080800000FF
      FF0000000000000000000000000000000000FF2CFF00FFFFF200353AB800040B
      A900A5A6DA00F4F4EC00FBFFF3008485B500696CA800FFFFF800EFF6EA00C4C5
      E3000108A7001A1FAF00FFFFF300FE46FE00F9F8FB00AEAFA5001C7D39002AAB
      6A002AAD6C002AB170002AB271002AB272002AB272002AB271002AAF6E002AAB
      690029A3620020975300CBDCD200BDB6BC00FAFAF700ACACB1000E1387001C23
      B1001C23B1001C23B4001C23B6001C23B7001C23B7001C23B5001C23B3001C23
      AF001B22AB001219A100C9CADF00BEBEB7000000000080808000000000000000
      000000000000000000000000000000000000000000000080800000FFFF000000
      00000000000000000000000000000000000000000000FFFFF500565CCB000911
      B3005D61CC00FFFFEC00FFFFFF0000006E0000006C00F8F8F900F8F7E7008084
      D6000810B4003B40C100FFFFF40000000000FEFBFF00ABABA2001C833F002AB3
      72002AB271002AB4730029B5740029B5750029B5750029B474002AB372002AB1
      700029AB6900209D5A00C8DBD000C2BBC000FEFEFB00A9A9AE000E138C001C23
      B6001C23B6001C23BA001C24BC001C24BE001C24BE001C24BB001C23B8001C23
      B4001B22B0001219A600C6C7DD00C3C3BB00808080000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF000080800000FFFF00000000000000
      00000000000000000000000000000000000000000000FCB4F500BFCBEA000004
      BB000000B900E9E9F600FFFFFF000000850000008300FAFAF800FFFFFD000004
      B900040CBD009AA5E200FEDBF60000000000FEFEFE00C5BFBE00207A3A0029BA
      780029B4730029B6760029B7770028B8780028B8780029B7770029B575002AB3
      730028B06E002CA76800D8DDDB00C6C3C600FEFEFD00C5C5C100131781001B22
      BD001C24BB001C24BF001C24C3001C24C4001C24C4001C24C2001C24BE001C23
      B9001921B3001F26AC00D7D8DF00C6C6C3000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000080800000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000FB1CFC00FFFFFC00272C
      CE00121AC9000000C000FFFFFF000001950000009300FFFFFF000008C400131B
      C9000E14C700FFFFFD00FB6EFB0000000000FCFCFC00EFE8EE00426E430022B5
      6F0029B6760028B8780028BA7B0027BB7C0027BB7B0028B97A0028B7770029B5
      75001DB06A0061BA8E00E8DEE400DDDDDE00FCFCFC00F0EFE8003A3C7500131B
      BC001C24BF001C24C4001C24C9001C24CB001C24CA001C24C7001C24C2001C24
      BD000E15B500585CBD00E9E9DF00DDDDDE000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9BAF800FFFF
      FF00181ED500141AD400FFFFFF000001A2000000A000FFFFFF003036D900050D
      D100FFFFFC00FABAF700000000000000000000000000F1F1F100ABA8A200187C
      390027C2800028BA7B0027BC7D0026BE7F0027BE7F0027BB7C0028B9790025B6
      740020AC6A00C9D8D200E1DDDF000000000000000000EDECE200AAAAAA000A10
      86001A23CD001C24C8001C24CE001C24D2001C24D1001C24CC001C24C600171F
      C0001219B200C8C9D900E1E1DD00000000000000000000FFFF0000FFFF000000
      0000000000000080800000FFFF0000FFFF000000000080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FCBB
      FA00FFFFFD00FFFFFD00FFFFFF000002B1000000B100FAF9FB00FFFFFD00FFFF
      FE00FCBBF80000000000000000000000000000000000FDFDFD00FDF9FE00838A
      7A001785430020C17D0026C3830026C1830026BF810026BD7D001EBB76001DAD
      6C00A4C7B700E8DEE300F1F1F1000000000000000000FDFDFD00FEFDF8008081
      8E000A109100131CD2001B23D6001C24D8001C24D5001A23CF001119CA001018
      B800A0A2CA00E8E8DE00F1F1F20000000000808080008080800000FFFF000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F354F300FFFFFF000000BE000000BD00F9FFFD00F580F3000000
      0000000000000000000000000000000000000000000000000000FCFDFC00FDF9
      FE00A8A6A0003F8055001EA0620019B4730019B8770021B174004DAE8400BDCD
      C600ECE2E700EAEBEB0000000000000000000000000000000000FCFCFD00FEFE
      F800A7A7A800373A8A00121AB0000E16CA000F17CC00161EC100454BB800BBBD
      CF00EDECE200EAEBEC000000000000000000000000000000000000FFFF0000FF
      FF00008080000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FD25FD00FFFFFE005F63E1004247DC00FFFFFF00FB1FFA000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F1F1F100ECE3E800C1BFBC00A7BAAF00AAC2B900C6CECC00EAE0E500EFEB
      ED00F3F3F300000000000000000000000000000000000000000000000000FCFC
      FD00EDECE200EDEDE200C0C0C000A5A6BD00A8A9C600C6C6CF00EBEBE000F0EF
      EB00F3F3F4000000000000000000000000000000000000000000000000008080
      800000FFFF0000FFFF0000FFFF0000FFFF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FB32FB00FFFFFF00FFFFFF00FB7FFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFCFB00FFFEFF00FFF7FC00FBF0F500F4EFF200EFEFF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FFFFFE00FFFFF600FBFBEF00F4F4EF00EFEFF0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F81F8001800100008007000000000000
      8603000000000000022100000000000002911FF81FF8000002011FF010080000
      06000000100800000600000010080000024800001008000001FC00001FF80000
      000400001FF80000A00100000FF000009003000000000000C803000000000000
      E007000000000000F81F800180010000F81FF81FF81FFFF8E007E007E007FFF8
      C003C003C003FFE0C00180018001FFE0800180018001FF81818100000000FF03
      000000000000FF07000000000000840F800100000000001F800100000000003F
      800100000000007FC00380018001003FE00780018001003FF81FC003C003803F
      F81FE007E007C03FFC3FF81FF81FE07F00000000000000000000000000000000
      000000000000}
  end
  object sSkinManager1: TsSkinManager
    Effects.AllowGlowing = False
    ExtendedBorders = True
    AnimEffects.FormShow.Mode = atFading
    AnimEffects.SkinChanging.Mode = atAero
    IsDefault = False
    Active = False
    InternalSkins = <>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'Tahoma'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 
      'C:\DSD_Development\Apps\HosannaTecnologia\Agente\Sources\Win32\D' +
      'ebug\skin'
    SkinName = 'iOS4'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    Left = 1040
    Top = 496
  end
  object tmrDuracao: TTimer
    Enabled = False
    OnTimer = tmrDuracaoTimer
    Left = 48
    Top = 568
  end
  object tmativo: TTimer
    Enabled = False
    OnTimer = tmativoTimer
    Left = 160
    Top = 568
  end
  object tmlogoff: TTimer
    Enabled = False
    OnTimer = tmlogoffTimer
    Left = 48
    Top = 616
  end
  object imltempo: TImageList
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 1040
    Top = 104
    Bitmap = {
      494C010103009800080518001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2E3D40022772B0033803A00337F
      3A00337D3A00337C3A00327B3900367C3E00377B3E0036783D00266B2E00D0DE
      D100F8F9F70023622900366D3B00366B3B0036693B0036663B0036653A003663
      3A0036613A00365F390026502900D3DBD400D2E2E30022747700337D8000337C
      7F00337B7D00337A7C0032787B0036797C0037787B003676780026696B00D0DD
      DE00F8F9F90023606200366B6D0036696B003667690036656600366365003661
      6300365F6100365E5F00264F5000D3DBDB00D5D5DD0019194B002C2C5B002C2C
      59002C2C59002C2C57002C2C56003131580031315700313155001F1F4200D5D5
      D900EBEBEF0021213F0031314A00313148003131460031314500313143003131
      42003131400031313F001E1E2A00D6D6D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BED9C100005F0000006904000067
      030000660300006403000062020000600100005F0100005C0100004E00008DB4
      9100C7D8C80000400000004B0000004800000045000000410000003E0000003B
      0000003800000035000000220000C0CDC000BED8D900005B5F00006569000064
      67000062660000606400005F6200005C6000005B5F0000595C00004B4E008DB3
      B400C7D7D800003D400000484B000045480000424500003F4100003C3E000039
      3B000036380000333500001F2200C0CCCD00C5C5D00000002E0000003F000000
      3D0000003B0000003A0000003800000036000000350000003300000020008585
      9C00CDCDD10000001100000024000000210000001E0000001B00000019000000
      1600000014000000120000000000C8C8C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCD6BF0000650000006F0C00006D
      0B00006B0A00006A0B0000680B0000660A000065090000630A00005B00005493
      5B0091B69400004D00000054060000510700004D0500004A0600004704000044
      050000410400003E0300002A0000CBD7CC00BCD5D60000606500006B6F000069
      6D0000686B0000666A000064680000636600006165000060630000575B005490
      930091B5B600004A4D0000515400004E5100004B4D0000484A00004547000042
      4400003F4100003C3E0000272A00CBD6D700C3C3CF0000003500000046000000
      4300000042000000410000003F0000003D0000003C0000003A00000031005D5D
      750089899F000000230000002D0000002A000000270000002400000022000000
      1F0000001D0000001C0000000000D6D6D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE8DF00005D000000700A00006F
      0C00006D0C00006B0A00006A0A0000680B0000670A0000650900006106001F73
      27005A96600000540000005708000054070000510700004D0500004A06000047
      040000440400003F0200001E0000E8EFE900DEE7E80000585D00006C7000006B
      6F0000696D0000686B0000666A00006568000063670000616500005D61001F70
      73005B949600005154000054570000515400004E5100004B4D0000484A000045
      470000424400003C3F00001C1E00E8EFEF00DCDCE70000002600000045000000
      440000004300000042000000400000003F0000003E0000003B00000038001B1B
      4B006E6E810000002B000000300000002D0000002A0000002600000025000000
      220000001F0000001A0000000000E0E0E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00A3C7A600005E0000006D
      0600006D0B00006D0B00006B0A00006A0A0000680B0000660A0000650900005E
      03000F691700005C0600005A0800005708000054070000500700004C04000045
      0300003E0000003D00009FBEA100FEFEFE00FEFEFE00A4C6C700005B5E000069
      6D0000696D0000696D0000686B0000666A00006468000063660000616500005B
      5E000F66690000595C0000575A000054570000515400004E500000494C000043
      4500003C3E00003A3D009FBDBE00FEFEFE00FAFAFD00B4B4CE0000003B000000
      41000000400000004300000042000000410000003F0000003E0000003C000000
      310012124500000034000000320000002F0000002D0000002A00000026000000
      1B000000180000001A00B0B0C400FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00B4CDB3003689
      3400027803000070090000680700006B090000690A0000680A00006306001F83
      25003C9E3F00005B0300005D0900005A070000540500004A0000005001000067
      00003A8D3800B7D3B700FEFEFE00FEFEFE00FEFEFE00FEFEFE00B4CDCD003488
      890000767800006C70000064680000676B000066690000646800006063001E7D
      83003B969E0000585B00005A5D0000575A000051540000474A00004D50000065
      6700388C8D00B7D3D300FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1B1CE002E2E
      840000006800000045000000390000003F000000400000003F00000037001B1B
      68003D3D950000002F00000035000000320000002C0000001E00000025000000
      560031318700B5B5D400FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F4FAF30096CE8F002F942C000A740F00006A0800006A0B00006402005D8D
      62006C967000006008000061080000580100046409002F8E2C0099D39300F7FE
      F600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F3FAFA0091CECE002A9294000871740000666A0000676A00006064005D8B
      8D006C959600005C6000005D610000545800036164002B8D8E0094D3D300F6FD
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F0F0FA008B8BD300313192000202550000003F000000410000003A005A5A
      7B0070708C00000034000000380000002D000000440032328C008E8ED800F2F2
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D2E7CE003E8F460000680400046C0F000064
      02000061000000650900005C000038853E00D6EBD300FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D0E7E7003E8D90000065680004696C000060
      6400005D61000061650000585C0038828500D4EBEB00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CFCFED003C3C7A0000003B00020244000000
      38000000340000003C0000002F0036366B00D3D3F200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00C4CEC600277B3000026E0D00076E
      1200036B0E0000640500196D2100C6D0C800FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00C4CECE0027787C00026A6E00076B
      6E0003676B0000616400196A6D00C6D1D100FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00CDCDD7001B1B5800010145000606
      4700020242000000390012124A00CACAD600FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00006B0A00077112000970
      1300096F1300076D1200005A0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000676B00076D7100096D
      7000096B6F0007696D0000575A00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0003034400050548000707
      4900080847000606450000002E00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DBEADC00006900000A7516000A73
      16000A7215000B70150000620100C4DBC600FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DBE9EA00006569000A7175000A6F
      73000A6E72000B6C7000005E6200C4D9DB00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00E1E1E8000000360009094D000909
      4B0009094A000909490000003300C2C2D000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE002D863700057611000C7718000C76
      18000C7418000C731700076F120018712100FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE002D838600057276000C7477000C72
      76000C7074000C6F7300076B6F00186E7100FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE002A2A630003034C000B0B50000B0B
      4E000B0B4D000B0B4B00050547001A1A4D00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D6E6D800006E00000E7B1B000E7A1A000E78
      19000E771A000E7519000E74180000640000BBD5BD00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D6E6E60000696E000E777B000E767A000E75
      78000E7377000E7275000E70740000606400BBD4D500FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CFCFDB00000042000D0D53000D0D52000D0D
      51000D0D4F000D0D4E000D0D4E0000003700BABACA00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE0099C89E0000760C00107E1C00107C1C00107B
      1B00107A1B0010781B0010761B00026D0D0074AD7A00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE0099C6C80000727600107A7E0010797C001077
      7B0010767A00107478001073760002696D0074ABAD00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE009696B400000049000F0F57000F0F55000F0F
      54000F0F52000F0F52000F0F50000000440068688E00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00C4DAC60000770B0012801E00127F1E00127D
      1E00127C1D00127B1D0012791D00006D0B00B5D1B700FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00C4D9DA0000737700127C8000127B7F00127A
      7D0012787C0012777B001275790000696D00B5D0D100FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00BDBDD30000004E0010105900111158001111
      570011115500111154001111530000004200B3B3C900FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00E2F0E30000780B0014832000148120001480
      2000147E2000147D1F00147C1F00016F0D00B5D4B800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00E2EFF00000747800147E8300147D8100147C
      8000147B7E00147A7D0014787C00016C6F00B5D3D400FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D6D6E30000004D0012125C0012125B001212
      590012125800121257001313550000004400B5B5C800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CCDFCE00007B0E0016852300168421001682
      220016812200167F2200167E210004720F00ABD0B000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CCDFDF0000777B001681850016808400167E
      8200167D8100167C7F00167A7E00046F7200ABCFD000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CBCBDA0000004F0014145E0014145D001414
      5C0014145A00141459001414580000004700A9A9C100FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D6E0D600007E0E0017872400178524001784
      230017832300178223001780230003740F00BCD6BE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D6DFE000007A7E0017838700178285001781
      8400177F8300177E8200177C800003707400BCD5D600FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00CFCFDD00000051001616600016165F001616
      5E0016165D0016165C0016165A0000004800BCBCCE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDF6FC0001750D0017892400198825001986
      250019852400198424001883240000700700EBECEA00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDF6F6000170750017858900198388001983
      86001981850019808400187F8300006B7000EBECEC00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00EFEFF2000606570016166100181861001818
      600018185F0018185E0018185D0000004700DFDFE600FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0086AF8A000B871900198A26001A88
      26001A8726001A8726000A8017006CA67200FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0086AFAF000B83870019868A001A84
      88001A8387001A8387000A7B80006CA4A600FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008585A90008085900191963001919
      62001919610019196000080853006C6C9500FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F4F2F4000058030011861D001385
      2000138520000B79170018632000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F4F2F20000555700118186001381
      8500138185000B75790018606300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F3F3F20000004B000E0E64001313
      5E0014145D000808550015155300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008CC091006FBF
      770066B16D00789D7B00FBF9FA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008CBEC0006FBA
      BF0066ACB100789B9D00FBF9F900FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008787C1006767
      BE005D5DB00075759C00F9F9F900FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object tmrSoundLevel: TTimer
    Enabled = False
    OnTimer = tmrSoundLevelTimer
    Left = 160
    Top = 520
  end
  object ilbrowser: TImageList
    DrawingStyle = dsTransparent
    Height = 48
    Width = 48
    Left = 1040
    Top = 152
    Bitmap = {
      494C01010B004800900530003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECE1D500FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD000000
      0000AC763D00D7B99900FFFFFF00F9F9F900F9FAFB00FCFFFF00FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00F9F9F900F2F2F200E6E6E600DADADA00DBDBDB00E7E7E700F2F2F200F9F9
      F900FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00F9F9F900F4F4F400F1F1F100F8FD
      FF00B0815000953B0000E5DDD400EFF7FF00EDF0F300C8A47D00EFF3F700EDED
      ED00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FEFEFE00FAFAFA00F5F5F500F1F1
      F100DFDFDF00A5A5A500636465006B6D6F006060610061616100A5A5A500E0E0
      E000F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009191910091919100919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      9100919191000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F3F3F300E2E2E200D8D7D400D5D5D400E7ED
      F300AB7A46009B490000A0530100D8B9970098420000A75F120000000000F3F3
      F300EDEDED00E8E8E800E7E7E700EFEFEF00F5F5F500F9F9F900FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FCFCFC00FFFFFF00DADADA00E1E1E200EFEFF000EFEF
      EF00D1D1D100423F410038393D00787B7E0065666700323232003B3A3900D1D1
      D100EBEBEB00E8E8E800E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E8E8E800E8E8E800E7E7
      E700E8E8E800E9E9E900E8E8E800E7E7E700E8E8E800E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E4E4E400DFDFDF00E2E2E200E6E6E600E8E8
      E800E8E8E800E8E8E800E8E8E800E9E9E900E8E8E800E7E7E700E7E7E700E7E7
      E700919191000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500ECECEC00DEDEDE00DDDAD5008692A900BBB9B900D7D8
      D8009C693000A15200009F5100009A4900009E4F0000A55A0C00000000000000
      00000000000000000000FCFCFC00F0F0F000E6E6E600EBEBEB00F5F5F500F9F9
      F900FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F8F8F800EFF0F00077706E00ADA7A300C4BCAB00CECBBF00E8E8
      E500F0F1F1004F4C4D003D3F42007A7C800068696A00383939004D4B4900ECEC
      ED000000000000000000FBFBFB00EFEFEF00E6E6E600ECECEC00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E8E8E800E7E7E700E7E7
      E700E8E8E800E8E8E800E9E9E900E9E9E900EAEAEA00EAEAEA00E9E9E900E9E9
      E900E9E9E900E9E9E900EAEAEA00EBEBEB00ECECEC00EAEAEA00E9E9E900E9E9
      E900E9E9E900EAEAEA00E9E9E900E9E9E900E8E8E800E8E8E800E7E7E700E6E6
      E600919191000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00E6E6E600F2F2F200F4F3F100A6ABB400002495003787F300547F
      BB0088562000AC610B00A65E0C00A55A0900A25603009F51000000000000FEFE
      FE000000000000000000000000000000000000000000F3F3F300E5E5E500EEEE
      EE00F7F7F700FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700F0F0F000F2F3F40079727000A9A39E00BFB5AE003740DC006E65C400B4A8
      AD00CFCAB50089867F003B3D400073777B006668680039393A004E4D4C000000
      00000000000000000000000000000000000000000000F3F3F300E6E6E600EFEF
      EF00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E9E9E900E8E8E800E7E7
      E700E8E8E800E9E9E900E9E9E900EAEAEA00EBEBEB00EBEBEB00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00ECECEC00EBEBEB00EAEAEA00EAEA
      EA00EAEAEA00E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E8E8E800E7E7
      E700919191000000000000000000000000005C8BBA006091C1006395C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F4F4F400E7E7
      E700EDEDED00FFFFFF00F9F9F900EFEBE300284B87004766AA00C6CDD500599E
      FF007E502800B0650E00AB651300AB651300AB631000A4560000E9EEF300EFF0
      F000F7F7F700FCFCFC00FEFEFE0000000000000000000000000000000000EDED
      ED00E7E7E700F4F4F400FAFAFA00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F4F4F400E8E8
      E800FBFCFC0094908E0097908D00CAC1AD00414AD600426BF2003E63F000283D
      EB004A49D5009487C200D8D1BE00B7B5A7007E7E7B002B2D2D00484746000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00E8E8E800F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E9E9E900E8E8E800E8E8
      E800E8E8E800E8E8E800EAEAEA00EBEBEB00EBEBEB00EAEAEA00EBEBEB00EBEB
      EB00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00E9E9E900E9E9E900E8E8E800E9E9E900EAEAEA00E8E8E800E7E7
      E700919191000000000000000000000000005D8CBA006091C1006395C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E6E6E600F8F8
      F80000000000FEFEFE00F2F1F000C5C5C300001E80008C8B9300CFC5BE00D8D2
      CF0092520C00AA610E00AB651300AD671500AD681600AD610700BCBCB800DBD6
      CD00E2E0DD00E9E9E900F2F2F200F9F9F900FDFDFD0000000000000000000000
      0000F8F8F800E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E6E6E6000000
      0000ACA8A70077706D00C5BFAF005A5AC4003D66F200415FE900405AE7003E58
      E7003950E8002E42E9002729DE00645BCA00B5AABF00C7C3AA008A887D00F7F8
      F700000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E8E8E800E8E8E800E8E8
      E800E9E9E900EAEAEA00EAEAEA00ECECEC00EBEBEB00EAEAEA00EBEBEB00ECEC
      EC00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00E9E9E900E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E8E8
      E800919191000000000000000000000000005C8BBA006090C1006395C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00F1F1F100E6E6E600FEFEFE000000
      000000000000FAFAFA00F0EDE80055709A001E4186008D837800C0BAB900C6C8
      CF0095550D00AB620F00A9621100AA641300AD671500BD6A02000052F4003C6A
      BB008E96A100D3CABA00DDD9D200E4E3E100ECECEC00F5F5F500FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00E6E6E600F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00F1F1F100E5E5E500FDFDFD000000
      0000BFBAB800E0DAD700ABA0A1002641EE004161E8003E58E5003D54E4003B4E
      E3003948E1003744E000343FDF002D36E0001D20DE00372ED1008175C100BCB6
      A700C6C3B100E0E0D90000000000000000000000000000000000000000000000
      000000000000FDFDFD00E5E5E500F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E7E7E700E6E6E600E8E8
      E800E9E9E900EBEBEB00EAEAEA00E8E8E800E9E9E900E9E9E900EAEAEA00EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00ECECEC00ECEC
      EC00ECECEC00E9E9E900E9E9E900E9E9E900E9E9E900EAEAEA00E9E9E900EAEA
      EA009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E6E6E60000000000000000000000
      0000FEFEFE00F3F3F300E0DAD00000328E00334A7600746C6500BDB8B700BEBF
      C700A2621400A75F0D00A9621100AB661400AC671500AE600100BCC3DA005D8D
      F400065DFF000651DA005576AE00A9A8A600D8D1C300E0DDD800E6E6E500EFEF
      EF00F7F7F700FCFCFC00FFFFFF00E7E7E700F2F2F200FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E6E6E60000000000000000000000
      0000EBE9E900FFFFFF00BDB9A8005D57C6003957E8003B51E200394CE1003747
      E0003541DE00333DDD003137DB002F32D9002D2ED8002827D7001F1CD6001307
      D1004C3FBF009288AB00BDB9A100CECCC000EFEFEC0000000000000000000000
      0000000000000000000000000000E6E6E600F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E6E6E600E5E5E500E7E7
      E700EAEAEA00EBEBEB00E8E8E800E2E2E200E5E5E500E8E8E800E5E5E500E5E5
      E500EAEAEA00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00ECECEC00ECECEC00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F4F4F400E6E6E600FEFEFE0000000000000000000000
      0000FBFBFB00F0EEEA007C8AA300003CA30023407600675F5800BCB6B500B0B0
      B600DEB26E00F1B64E00D1973C00B16E1B00A9631200A95D0300D1CBC800DED2
      C600E6D7C600A2B1DE00417EFC000051FC00205CCA007185A700C0BAAF00DCD6
      CC00E2E0DD00E9E9E900F3F3F300F9F9F900E5E5E500F4F4F400FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F4F4F400E6E6E600FDFDFD0000000000000000000000
      0000F3F4F400F8F3F100EBE6E100A59A9F002634E100384BDF003645DD003440
      DC00323ADA003035D9002E31D7002C2BD5002A27D4002822D100271ECF002419
      CC001D10CB001000C8001F0CBE006356AE00A59F9D00BDBAA500DBD9D200FDFE
      FE00000000000000000000000000FDFDFD00E6E6E600F4F4F400FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100E7E7E700E7E7E700E9E9
      E900EBEBEB00EDEDED00E7E7E700E1E1E100E5E5E500E8E8E800E4E4E400E3E3
      E300E9E9E900ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00EEEEEE00EDEDED00ECECEC00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EAEA
      EA009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800E8E8E800FAFAFA000000000000000000000000000000
      0000F5F5F500EBE4DB00154189000B48AE000D3B8D0070635200BFB5AD00B3AC
      AA00ADADB400B2ADB000D1B08700F0BD6A00EEB24A00CB8A2700C2BEBF00C8C3
      C200CCC6C400D6CDC500E4D7C600DCD3CD0083A2E900226DFF00004DEE00396A
      BC008A93A200D2CABA00DEDAD200E5E4E200E9E9E900E1E1E100F6F6F600FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800E8E8E800F9F9F9000000000000000000000000000000
      000000000000E5E4E300FFFFFF00BFBAA700554CC3003042DE00333ED9003139
      D8002F33D7002D2FD6002B2AD3002925D2002721D000261CCD002418CB002213
      C8002011C5001E0DC1001A07BF001200BB000700B7003322AC007970A000B1AD
      9600C5C3B600EAEAE6000000000000000000F8F8F800E8E8E800F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EAEAEA00EBEBEB00ECEC
      EC00EDEDED00EDEDED009191910091919100919191009191910091919100E4E4
      E400EAEAEA009191910091919100919191009191910091919100919191009191
      9100919191009191910091919100ECECEC00ECECEC00EBEBEB00EAEAEA00E8E8
      E8009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00F0F0F00000000000000000000000000000000000FCFC
      FC00F1F0ED009FA6B000003597000F4AAD000E46AD001A4083004665A2008B81
      7C00B5A89F00B6B0AB00B0AEB100ADAEB800B8ADAA00DBB37D00BBB9BB00C0BB
      BA00C3BEBD00C6C2C000CAC4C300D0C9C600DBD1C700EDDCC800C9C9D6006792
      F3000C62FF000351DC005275B000A9A9AA00E7E0D200E5E3E000EAEAEA00FAFA
      FA00FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00EFEFEF00000000000000000000000000000000000000
      000000000000F4F4F500F8F3F100EDE8E300A3989E00171ADA002B34D9002D32
      D5002C2DD3002A28D1002923D000271FCE00251ACB002316CA002112C800200F
      C5001E0BC1001C08BE001B05BA001903B6001700B2001100AF000900AE000A00
      AB004D40A000857E9200BFBDB8000000000000000000EFEFEF00EEEEEE00FAFA
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EBEBEB00EBEBEB00EDED
      ED00EDEDED00EEEEEE0091919100E9E9E900EBEBEB00EDEDED0091919100EAEA
      EA00EDEDED00EFEFEF00F0F0F000F0F0F000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EEEEEE00EEEEEE00EDEDED00EEEEEE00EDEDED00ECECEC00EAEAEA00EAEA
      EA009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F4F4F400E7E7E7000000000000000000000000000000000000000000F7F7
      F700EEE9E20032558E000944A8000F45A200175AD5001D63D8001366FF004193
      DF002D5B9C0052597200998E8700B8ADA400B7B1AF00B1AFB300B5B0AF00B8B3
      B200BCB7B500BEB9B900C3BDBC00C6C0BF00CAC4C200CDC7C600D5CDC800E1D6
      C900EEDECC00AEBBE0004D88FC000059FB001E60CC00B3C3D900EAE8E500F5F5
      F500FCFCFC00000000000000000000000000000000000000000000000000FDFD
      FD00F4F4F400E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000E5E4E300FFFFFF00B9B4A800887CA6005045BC001F17
      CD001915D200201CCF00241CCD002419CA002215C8002111C6001F0EC4001D0A
      C0001C07BE001A04BA001901B6001700B4001600B0001700AE001700AC001400
      A9000100A80052469C00BFBCB100000000000000000000000000E7E7E700F4F4
      F400FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EAEAEA00EBEBEB00ECEC
      EC00EDEDED00EEEEEE0091919100F0F0F000F1F1F100F1F1F10091919100F2F2
      F200F0F0F0009191910091919100919191009191910091919100919191009191
      91009191910091919100EFEFEF00EEEEEE00EEEEEE00EDEDED00ECECEC00EBEB
      EB009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F5F5F50000000000000000000000000000000000FDFDFD00F2F1
      F000C2C1BF00003291000F4AAD000D3F9C002974F2000E51D8004390F1005FB9
      FF005CB9FF0054B3FF002E7AD200315690005E5F6F00A89B8F00BBB1AA00B9B2
      AE00B7B1AF00B7B2B100BBB5B400BEB9B700C2BCBA00C5BFBE00C9C3C200CBC6
      C400D0CAC800D9D1CB00E8DACB00EADDD100538BF100CBDDF900FAF8F500ECEC
      EC00F9F9F900FEFEFE0000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F5F5F50000000000000000000000000000000000000000000000
      00000000000000000000F5F5F600EBEAE900FEFDFD00D0CDC500B8B2A100B4AE
      98008E83A600574AB8001D0EC6001000C8001807C5001C09C2001D09BF001C06
      BD001A03BA001901B6001700B4001700B1001700AF001700AD001700AB001200
      A9001F0CA500ABA68F00FDFEFD00000000000000000000000000F5F5F500ECEC
      EC00F9F9F900FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100ECECEC00EBEBEB00ECEC
      EC00EDEDED00EEEEEE0091919100EFEFEF00F0F0F000F0F0F00091919100F2F2
      F200F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F1F1F100F0F0F000F0F0
      F000F0F0F000EFEFEF00EFEFEF00EEEEEE00EEEEEE00EEEEEE00EDEDED00ECEC
      EC009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E8000000000000000000000000000000000000000000F9F9F900F0EC
      E700536D96000640A3000F46A400114EC2002365D0000F56F10066BDFF0057AE
      FF0058AFFF0057AEFF0059B3FF0057B6FF004AA7FF00256BC20036528400716D
      7500AFA29600BDB3AC00BAB4B100B8B3B100BAB4B300BDB7B600C1BBB900C4BE
      BD00C7C2C000CBC5C400CEC9C800D4CCC800D5D6DC000000000000000000E8E8
      E800F5F5F500FCFCFC0000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA00EFEFEF00F4F5F500F2F2
      F100D9D6D000C2BDAE00BBB69C00988FA6005D4FB300220EBD000A00BE001000
      BA001500B7001700B5001700B3001700B1001700AF001600AB001500A6000800
      A20088828C00D6D5CF000000000000000000000000000000000000000000E8E8
      E800F5F5F500FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100ECECEC00ECECEC00ECEC
      EC00EDEDED00EFEFEF009191910091919100919191009191910091919100F2F2
      F200F2F2F2009191910091919100919191009191910091919100919191009191
      91009191910091919100EEEEEE00EFEFEF00EEEEEE00EDEDED00EEEEEE00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FEFEFE00FBFBFB00EEEE
      EE00F3F3F30000000000000000000000000000000000FEFEFE0000000000DBD5
      CD0000328A000E49AB000D409A002772F1000F4DD0003C88EF005AB1FF0057AD
      FF0056ADFF0056ADFF0054ABFF0054ABFF0053ABFF0055AFFF0054B3FF003E97
      F9002666B9003D5480007C767800B4A89C00BFB6B000BAB4B200B9B4B300BCB6
      B600BFB9B800C2BDBC00C6C0C000C8C2C100DAD6D4000000000000000000F3F3
      F300EEEEEE00FBFBFB00FEFEFE000000000000000000FEFEFE00FBFBFB00EEEE
      EE00F3F4F40000000000A09C9B00A49F9E00AFA6A400B8B1AE00C0B9B700CAC5
      C300D1CECD00D8D6D600E1E0E000E9E9E900F5F5F500FBFCFC00FFFFFF00F2F3
      F300F7F8F800D3D2D300ECEAE900DAD6CF00C5C0B200C1BDA400A49DA9006558
      AE002814B3000A00B3001000AB001300A1001300960012008B00110084000800
      82004C447400EFEFE7000000000000000000000000000000000000000000F2F2
      F200EEEEEE00FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100ECECEC00ECECEC00EDED
      ED00EEEEEE00EFEFEF00EFEFEF00EEEEEE00EFEFEF00F0F0F000F2F2F200F2F2
      F200F2F2F200F1F1F100F2F2F200F2F2F200F3F3F300F2F2F200F2F2F200F1F1
      F100F1F1F100EFEFEF00EFEFEF00EEEEEE00EDEDED00EEEEEE00EEEEEE00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800E8E8
      E800FEFEFE0000000000000000000000000000000000FBFBFB00F0EEEA007385
      A000013D9E000F47A6000D45B200286DD9000D52EB005EB3FC0055ACFF0055AB
      FF0056ACFF0055ACFF0054ABFF0053A9FF0052AAFF0051A7FF004FA7FF0050A8
      FF004FAAFF004CAAFF003389F000245DAC004654750090868000BBAFA400BFB7
      B300BBB5B400BBB6B400BEB9B800C1BBBA00C8C4C3000000000000000000FEFE
      FE00E8E8E800F8F8F800FEFEFE000000000000000000FEFEFE00F8F8F800E8E8
      E80000000000E4E2E200ACA7A5009F9C9C007CB0BE0089A8B0008CA0A700919A
      9F009D999A00A6989500AC999400AE9A9400AD9B9600AD9E9900AFA09C00B4A6
      A300BAAFAB009186840080797A008C828A00938B8800918A890099928D00A09B
      8F0095937E006F6C6B00352E610011065F00000062000000660003006C000300
      720000007500A09D91000000000000000000000000000000000000000000FDFD
      FD00E8E8E800F8F8F800FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EDEDED00EDEDED00EEEE
      EE00EFEFEF00F0F0F000F0F0F000EFEFEF00F0F0F000F1F1F100F2F2F200F3F3
      F300F2F2F200F2F2F200F3F3F300F3F3F300F4F4F400F3F3F300F1F1F100F2F2
      F200F1F1F100F0F0F000EEEEEE00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FDFDFD00F5F5F500EAEA
      EA0000000000000000000000000000000000FEFEFE00F4F4F400E8E2D8000F3F
      8A000C48AB000D419A00256EEB00114DC600337DEE0057AFFF0054AAFF0054AA
      FF0053AAFF0054A9FF0052A9FF0052A9FF0050A7FF0050A7FF0050A5FF004DA4
      FF004CA2FF004AA1FF004AA1FF0049A4FF0044A5FF002377E10026559C00535B
      73009E928800BEB3A900C0B8B400BCB6B500B6B0B00000000000000000000000
      0000EAEAEA00F4F4F400FDFDFD000000000000000000FDFDFD00F5F5F500EAEA
      EA0000000000F7F7F700EEEEED00A497930077B0C1006FEEFF006FE4F6006AE0
      F50061DBF4005AD5F10057CFEC005AC9E60060C4DF0065BDD6006AB8CF0070B3
      C70076AFC20081B0BF008BAFBB0094ABB4009DA9AE00A7A8A800AEA5A200B2A4
      9F00B7A6A000BAA9A100B9A99D00B5A79600A79A9100877B8F00796C8C006B5E
      89005447890073697B00D5D1CE00E4E3E3000000000000000000000000000000
      0000EAEAEA00F5F5F500FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EDEDED00EEEEEE00EEEE
      EE00EFEFEF00F1F1F100F0F0F000F0F0F000F2F2F200F2F2F200F3F3F300F3F3
      F300F3F3F300F5F5F500F5F5F500F4F4F400F3F3F300F3F3F300F3F3F300F2F2
      F200F2F2F200F0F0F000EFEFEF00EDEDED00ECECEC00ECECEC00EDEDED00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FCFCFC00F1F1F100F0F0
      F00000000000000000000000000000000000FCFCFC00F1EFEC0097A0AD000038
      9A000F48A7000D42A700286DDE000C4FE50056A8F70051A7FF0052A8FF0053A9
      FF0052A8FF0051A7FF0052A8FF0051A8FF0050A6FF004DA4FF00439EFF00409C
      FF0049A1FF0049A0FF00489EFF00459CFF00449BFF00449DFF00419EFF003897
      FF001D69D3002C53910063657300AA9D9100BAB0A800F4F3F000000000000000
      0000F0F0F000F0F0F000FCFCFC000000000000000000FCFCFC00F1F1F100F0F0
      F0000000000000000000EDEDED00E3E0E000A4908A006DBFD50074E4F50070DB
      ED006ED8EC006AD6EB0067D3EA0063D1E9005ECEE9005BCCE80057C9E70053C7
      E7004FC5E7004BC3E70048C1E60043BEE5003EBCE4003AB8E30037B3DF0038B0
      DA003DADD40043AACE004EA8C80057A7C30063A7BF0070AABC007BACB90087AE
      B60094B0B3009BACB0009BA1A500A5989500D8D6D60000000000000000000000
      0000F0F0F000F1F1F100FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EDEDED00EEEEEE00EFEF
      EF00EFEFEF00F0F0F000F2F2F200F2F2F200F3F3F300F5F5F500F4F4F400F4F4
      F400F4F4F400F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F3F3
      F300F2F2F200F0F0F000EFEFEF00EEEEEE00EDEDED00EEEEEE00EDEDED00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FBFBFB00EEEEEE00F6F6
      F60000000000000000000000000000000000F7F7F700EEE8E0002C518E000A45
      A7000E429C001F64DD001753C5002870ED0056ADFF0050A6FF0051A6FF0051A6
      FF0050A7FF0051A7FF0050A6FF004FA5FF004DA5FF00449FFE00ABD4FE00B1D5
      FE00479EFE00459CFF00469EFF00459CFF004298FF004198FF003F95FF003E96
      FF003E97FF003B98FF002E8AFF00175EC5002F4D800098979C00000000000000
      0000F6F6F600EDEDED00FBFBFB000000000000000000FBFBFB00EDEDED00F6F6
      F600000000000000000000000000ECEDED00CCC7C500A39390006AD3E90073E0
      F0006FDAED006BD7EB0068D4E90064D1E90061CEE7005ECBE6005BC9E50058C6
      E40054C3E20052C1E2004FBFE0004BBCDF0049B8DC0046B5D90043B1D6003FAD
      D3003CA9D1003BA8CF0039A7CE0038A7CF0038A7D00037A9D00036AAD30037AD
      D60037AFD90036B1DC0031B3E10061AFCA00AE999300F1F2F100000000000000
      0000F6F6F600EDEDED00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EDEDED00EEEEEE00EEEE
      EE00EEEEEE00F0F0F000999999009C9C9C009E9E9E009D9D9D009C9C9C00F5F5
      F500F5F5F5009494940092929200919191009191910091919100919191009191
      910091919100F1F1F100F1F1F100F1F1F100F0F0F000F0F0F000EEEEEE00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FAFAFA00EBEBEB00F9F9
      F900000000000000000000000000FDFDFD00F2F1EF00BABABB00003292000F49
      A9000D409E00296FE5000B4DDD004D9CF1004EA4FF004CA2FF004EA4FF004FA5
      FF004FA4FF004FA5FF004EA4FF004DA3FF003D9AFF00D8E9FC00FFFFFD00FFFF
      FD00FFFDFB003995FF00459BFF004399FF004299FF004097FF003E95FF003C93
      FF003B91FF00398FFF00388EFF003790FF003291FF001B74F3001054BC000000
      0000FCFBFA00EBEBEB00FAFAFA00FEFEFE0000000000FAFAFA00EBEBEB00FAFA
      FA0000000000000000000000000000000000F7F8F800ABA2A000A19797006BDC
      F10071DCEE006DD8EB006AD5EA0066D2E90063CFE8005FCDE6005CC9E40059C7
      E30055C4E30053C2E10050BFDF004CBBDD0049B7DB0046B4D70042AFD4003FAB
      D0003DA7CD003BA5CB003CA5CA003BA5CB003BA5CC003DA8CE003EA9D0003FAC
      D1003FADD40041B0D60040B1D80035B3DF0084A9B700AA9D9900000000000000
      0000FAFAFA00EBEBEB00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100EDEDED00EDEDED00EEEE
      EE00EFEFEF00F1F1F1009C9C9C00A5C1A80015621C0075A27A00A2A2A200F5F5
      F500F5F5F500F4F4F400F1F1F100F3F3F300F7F7F700F3F3F300F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EFEFEF00EEEEEE00EDED
      ED009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000FEFEFE00F9F9F900E9E9E900FCFC
      FC00000000000000000000000000F9F9F900F0ECE6004B6794000641A3000E45
      9F001858CE001D5AC7002166EA0054AAFF004CA1FF004DA1FF004DA1FF004DA2
      FF004EA3FF004DA1FF004CA1FF004CA2FF003695FD00FFFCF700FFFEFD00FCFC
      FC00FFFFFC005BA4FA004198FF004398FF004196FF003E94FF003D93FF003B92
      FF003A90FF00388FFF00368DFF00348AFF003489FF002982FF005EA4FF000000
      0000FDFDFD00E9E9E900F8F8F800FEFEFE00FEFEFE00F9F9F900E9E9E900FDFD
      FD0000000000000000000000000000000000B3B0AE00A99691007CB1C00073E5
      F50073DDEE006EDAED006BD7EA0068D4EA0064D0E70061CDE6005ECAE5005AC8
      E30057C4E20054C2E10050BEDF004DBBDC0049B6D90046B2D60041ADD1003EA9
      CE003CA5CB003BA3C9003BA3C9003BA4CA003BA4CA003CA6CC003DA8CF003FAC
      D2003FAED30040AFD50041AFD70040B1D80034B2DF00A1A3A500B6AFAE000000
      0000FDFDFD00EAEAEA00F9F9F900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100ECECEC00ECECEC00EEEE
      EE00F1F1F100F2F2F2009E9E9E006596690005580D0005580D0045774A00F5F5
      F500F4F4F4009999990096969600939393009292920091919100919191009191
      9100F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000EEEEEE00EEEEEE00EEEE
      EE009191910000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000FEFEFE00F8F8F800E8E8E800FEFE
      FE000000000000000000FEFEFE00F3F2F200D9D3CA0000328B000F48AA000D3E
      97002971EA000C4CD4004390EE004A9FFF00499EFF004B9FFF004BA0FF004BA0
      FF004CA0FF004CA1FF004BA0FF004A9FFF003F9AFF0093BAE900FFFFFF00FFFF
      FE00FCF6F2003590FC004296FF004197FF003F94FF003E94FF003C92FF003A8F
      FF00388DFF00368CFF00358AFF00338AFF003187FF001877FF00000000000000
      000000000000E8E8E800F8F8F800FEFEFE00FEFEFE00F8F8F800E8E8E8000000
      0000000000000000000000000000B6B3B200A6948F007EABB90075EDFC0078E3
      F00074DFEF0070DCED006DD8EC0069D5E90066D2E90062CFE6005FCBE6005BC8
      E30058C5E20054C2E00051BFDE004DBBDB004AB7D70045B1D30041ACD0003FA8
      CC003CA5C9003AA2C8003AA2C8003AA0C500399EC100399FC4003BA4C8003EAA
      D0003EAED4003FAFD40041B0D60041B0D7003EB0D8003BB0D900A59C9B00CBC8
      C800FFFFFF00E8E8E800F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00EFEFEF00F0F0
      F000F3F3F300F4F4F400AFAFAF0045824B0005580D0066986B0005580D006698
      6B00F7F7F700F6F6F600F4F4F400F5F5F500F8F8F800F4F4F400F2F2F200F3F3
      F300F4F4F400F4F4F400F3F3F300F3F3F300F3F3F300F1F1F100F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000FEFEFE00F8F8F800E8E8E8000000
      00000000000000000000FBFBFB00F0EDE9006D809E00023D9F000F45A100124D
      BE002363CB001A5EE80052A6FF00479BFF00489CFF00489CFF00489DFF00489D
      FF004A9DFF004A9EFF00499DFF00469CFF003C96FF002C8DFF005E9CE70084B0
      E800368DF4004197FF004297FF004094FF003F94FF003C91FF003B91FF00398F
      FF00388DFF00368DFF00348AFF003288FF001E7BFF00A0C7FF00000000000000
      000000000000E8E8E800F8F8F800FEFEFE00FEFEFE00F8F8F800E8E8E8000000
      00000000000000000000C0BEBD00A294910083AAB60079F5FF007FEBF6007BE6
      F20078E2F10074DFEE0070DBEC006CD7EB0069D4E90064D0E70061CDE6005DCA
      E3005AC6E10056C2E00052BFDD004DBBD90049B5D60046B0D20043ACCE0040A7
      CB003DA5C9003A9FC3003595B8003592B3003594B6003697BB00389EC3003AA9
      D0003EACD30040AED50040AFD40040AFD5003BAFD7004EADCE00AA9C9900C5C4
      C300FFFFFF00E8E8E800F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EEEEEE00EEEEEE00F0F0
      F000F1F1F100F4F4F400AEAEAE003F76440005580D00B7B7B700709173000558
      0D0066986B00AFAFAF00ABABAB00A8A8A800A6A6A600A5A5A500A4A4A400A4A4
      A400A4A4A400F4F4F400F3F3F300F3F3F300F2F2F200F1F1F100F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000FEFEFE00F9F9F900EAEAEA00FCFC
      FC000000000000000000F4F4F400E6E0D6000D3C8A000D47A8000D4097002970
      E8000E4BCC003B85EB00469AFF004599FF00469AFF00479BFF00469AFF00479B
      FF00479BFF00479BFF00459AFF004398FE00B0D3FC0095C4FC003290FF003A94
      FF004096FF004095FF003F94FF003E93FF003D91FF003C91FF00398DFF00388D
      FF00368AFF003488FF003389FF002D84FF003688FF0000000000000000000000
      0000FDFDFD00E9E9E900F8F8F800FEFEFE00FEFEFE00F9F9F900E9E9E900FDFD
      FD0000000000D4D3D20097908D00969DA1006BC9DD0076CFDF0070D2E3006BD5
      E90068D8ED0065DAF00062DBF10061DAF10061D9F00060D7EE005DD3EC005AD0
      E90057CBE70053C6E4004FC2E1004BBCDC0047B6D70044B1D40043AED1003EA5
      C8003794B6003088A8002B86A7002989AB00278DB2002691B8003A9DC10054AD
      CD003BB2DB003BAED5003FAED4003DAED5003BAED500ACA09D00AEABA9000000
      0000FDFDFE00E9E9E900F9F9F900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00EFEFEF00F0F0
      F000F0F0F000F3F3F300F4F4F400E4EAE50086AC8900F8F8F800F7F7F70097B8
      9A0005580D0066986B00F7F7F700F5F5F500F3F3F300F3F3F300F3F3F300F4F4
      F400F4F4F400F3F3F300F4F4F400F3F3F300F2F2F200F2F2F200F0F0F000EFEF
      EF00A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FAFAFA00EBEBEB00F9F9
      F90000000000FCFCFC00F0EFEC00929CAC00003899000F48A4000F46AE002666
      D0001557E4004C9FFF004295FF004396FF004497FF004598FF004599FF004598
      FF004498FF004598FF00318FFF00D5E5F800FFFFFA00FFFFF900CEE1F900328E
      FF004095FF003E93FF003E93FF003C91FF003A8EFF003A8EFF00388DFF00378B
      FF00368AFF003387FF003185FF001674FF00DBEAFF0000000000000000000000
      0000F9F9F900EBEBEB00FAFAFA00FEFEFE0000000000FAFAFA00ECECEC00FAFA
      FA0000000000E6E5E400B9B4B200AEA7A500AC9D9800A7969200A4928E00A291
      8D00A0908D009F9190009C9493009795980091989D008B9BA200859EA8007FA2
      AE007BA6B40077AABA0071ACBE0068ABC0005FAAC20052A2BD003D8DA9002E7B
      9700237998003685A2005B95AC007AA2B4009AAEBC00B7B6BF00C4B5B300BEAD
      A800A8928B0047A9CB0036AED70030AED9009BA4A700A1999700000000000000
      0000FAFAFA00EBEBEB00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00EFEFEF00EFEF
      EF00F0F0F000F2F2F200F4F4F400F5F5F500F6F6F600F5F5F500F6F6F600F7F7
      F700A6C2A90015631D00C7D7C800F5F5F500F1F1F100F1F1F100F3F3F300F3F3
      F300F5F5F500F3F3F300F3F3F300F3F3F300F2F2F200F1F1F100F0F0F000EFEF
      EF00A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FBFBFB00EEEEEE00F5F5
      F50000000000F6F6F600ECE7DE00264E8E000B45A6000D419800256AE100124F
      C900347BE7004095FF004192FF004194FF004294FF004395FF004396FF004396
      FF004296FF003F94FF004A99FD00FFFFF900F9F9F800FAFAF900FFFEF3002886
      FF003E91FF003D91FF003C90FF003A8EFF00398EFF00378BFF00368AFF003589
      FF003488FF003388FF002780FF006AA6FF000000000000000000000000000000
      0000F6F6F600EDEDED00FBFBFB000000000000000000FBFBFB00EDEDED00F6F6
      F60000000000F6F7F700EFEFEF00EFF0F000F3F3F400F1F2F100EDEDEA00EAEA
      E600E4E3DE00DDDBD700D7D4CF00D5D1CC00D2CDCA00D2CBC900D3CBC900D0C6
      C200C3B7B300ADA09C009589850090827F008F848100958B8B00A49C9E00B9B0
      B400C7C0C700C9C3CB00C6BBBC00C6AC9300C69C6A00CA872E00B9A69200B6B3
      B500B8A79E007E9FAB0067A4BB0083A3AF00A0959200F2F2F200000000000000
      0000F6F6F600EDEDED00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00EFEFEF00F0F0
      F000F2F2F200F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F5F5F500F6F6
      F600F5F5F500D6E1D700E7ECE700F3F3F300F0F0F000F1F1F100F1F1F100F3F3
      F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F1F1F100F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FCFCFC00F1F1F100F0F0
      F00000000000F4F3F100BBBCC000003494000F47A5000E42A3002869D7001151
      DC004799FD003D8FFF003E91FF003F90FF004193FF004093FF004193FF004193
      FF004092FF00338DFF00B7D4F900FFFEF800F8F8F800FFFDF800A4C5F1002B88
      FF003D91FF003C90FF003A8DFF00398DFF00378BFF00368BFF003489FF003488
      FF003286FF002E82FF001A76FF00000000000000000000000000000000000000
      0000F1F1F100F1F1F100FCFCFC000000000000000000FCFCFC00F1F1F100F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600E2E2E200CDCD
      CF00B8B8BD00A4A4AB00C3C4CC00D2D6E300CFD2DB00CAC0B400CBAA8100CD9B
      5700CE8B2C00D27C0400D3740000D2740000D0740000C87F1C00B4B9C600B9AE
      AA00C3B9B500C9C2C100CABFBC00B0A8A600D9D7D70000000000000000000000
      0000F1F1F100F1F1F100FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EEEEEE00EFEFEF00F1F1
      F100F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F5F5F500F5F5F500F4F4
      F400F4F4F400F5F5F500F5F5F500F3F3F300F2F2F200F1F1F100F2F2F200F3F3
      F300F4F4F400F3F3F300F3F3F300F1F1F100F0F0F000F1F1F100F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FDFDFD00F5F5F500EAEA
      EA00FEFEFE00FFFCF600506FA1000641A3000E429A002161D6001752C5002D73
      E5003C8FFF003A8CFF003C8EFF003D8FFF003D8FFF00378CFF00328AFF003A8E
      FF003F92FF002E88FF00CDDAEC00FFFFF900F7F7F700F9F8F700F9F7F6004694
      FD003388FF00398CFF00388CFF00388BFF00368AFF003588FF003387FF003285
      FF003085FF001B76FF00A7CAFF00000000000000000000000000000000000000
      0000EAEAEA00F4F4F400FDFDFD000000000000000000FDFDFD00F5F5F500EBEB
      EB00000000000000000000000000000000000000000000000000000000000000
      0000F7F8F800E4E4E500D6D6D900C9CACF00BBBCC500B8BAC600BDC1D100C3BB
      BA00CBB09200D2A86D00D99E4800DC8E1B00DC820000DB800000DA810000D87F
      0000D67F0100D37F0300D37C0400D07B0300D1710000B8B2B000B6B2B200B1A3
      9D00E5E7E600F4F5F500EFF0F000FAFBFB000000000000000000000000000000
      0000EBEBEB00F5F5F500FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00F0F0F000F0F0
      F000F1F1F100F3F3F300AAAAAA00ADADAD00AFAFAF00B0B0B000AEAEAE00F4F4
      F400F5F5F500A8A8A800A7A7A700A5A5A500A5A5A500A4A4A400A4A4A400F3F3
      F300F3F3F300F3F3F300F2F2F200F1F1F100F0F0F000F0F0F000F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800E9E9
      E900FEFEFD00FFFAF200002F90001049A7000D3F9900296CDC000F4ED7004190
      F800398AFF003A8BFF00398BFF003A8CFF003087FF0069A7FC00BAD4FA004B96
      FE00388CFF003B8EFF00287FF500CED7E700FFFFF800F5F5F500F8F6F400FFFB
      F3003187FE003588FF003789FF003587FF003487FF003386FF003285FF003083
      FF002A7EFF003B89FF000000000000000000000000000000000000000000FEFE
      FE00E8E8E800F8F8F800FEFEFE000000000000000000FEFEFE00F8F8F800E9E9
      E900FEFEFE000000000000000000000000000000000000000000C6C6C900B4B5
      BF00B8BAC600C0BCC200C6B3A100CEAC7C00D7A65A00DE9D3400E4910B00E690
      0300E5920900E3910B00E1900B00DF8D0E00DE8C0F00DC8B0E00DA880C00D986
      0B00D7840900D5810800D4800700D47A0000C4914F00B7BAC300B3A8A200C0BB
      B80000000000000000000000000000000000000000000000000000000000FEFE
      FE00E9E9E900F8F8F800FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400F0F0F000F0F0F000F0F0
      F000F1F1F100F3F3F300ADADAD00A4C0A70015621C0075A17900B2B2B200F4F4
      F400F4F4F400F4F4F400F3F3F300F4F4F400F4F4F400F4F4F400F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F1F1F100F0F0F000F0F0F000F0F0F000F0F0
      F000A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      00000000000000000000000000000000000000000000FEFEFE00FBFBFB00EEEE
      EE00FCFAF600B6C5DE0000389C000F449C001B58CA001D59C400276BE300388A
      FF003787FF003788FF00388AFF003688FF003F8EFD00FFFFF700FFFFF700FFFB
      F5002882FF003A8DFF00398CFF001B78FB00B5C9E600FEFAF500F3F4F400FEF9
      F200B4CFF5002680FF003488FF003387FF003384FF003183FF003083FF002E81
      FF001372FF00E3EEFF000000000000000000000000000000000000000000F2F2
      F200EEEEEE00FBFBFB00FEFEFE000000000000000000FEFEFE00FBFBFB00EFEF
      EF00F4F4F40000000000000000000000000000000000DFE1E500C7AF9100DEA5
      4800E5A02A00EA9E1500ECA11800EBA21B00EAA01C00E89F1D00E79F1F00E59D
      1D00E49A1B00E3981900E2951700E1941500DF911300DE8E1100DC8C0F00DA89
      0E00DA870C00D7840A00D6820700D17E0900B8BBC700B6B0AE00AB9F9A00FDFE
      FF0000000000000000000000000000000000000000000000000000000000F4F4
      F400EFEFEF00FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00F0F0F000F0F0
      F000F2F2F200F2F2F200AFAFAF006596690005580D0005580D004C7E5100F5F5
      F500F4F4F400ABABAB00A8A8A800A6A6A600A5A5A500A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000EFEF
      EF00A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F5F5
      F500F9F5EF007091C600043FA1000E3F9500296CDD000E4BD0003B87F3003485
      FF003485FF003586FF003687FF002E84FF0080B0F600FFFFF700F7F7F700FFFF
      F60067A3FA003084FF00388AFF003688FF001D76F700FFFAF000F3F3F300F4F4
      F300FFF9EF00237CFF003184FF003184FF002F83FF002F82FF002E80FF002178
      FF0075AAFF00000000000000000000000000000000000000000000000000E8E8
      E800F5F5F500FDFDFD0000000000000000000000000000000000FDFDFD00F5F5
      F500E9E9E90000000000000000000000000000000000B7B8C500ECA82A00F0AD
      2D00EDAC2F00ECAB2E00EBA92C00EBA82A00EAA62800EAA52500E8A32300E8A1
      2100E69F1F00E59C1D00E49A1A00E3971900E2951700E0911500DE901300DD8C
      1100DB8A1000DA880E00D8850A00D4830C00B9B9C300B7B3B300CEC9C800FBFC
      FC0000000000000000000000000000000000000000000000000000000000E8E8
      E800F5F5F500FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EFEFEF00EFEFEF00F0F0
      F000F1F1F100F2F2F200AFAFAF0044814A0005580D0065976A0005580D006597
      6A00F4F4F400F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3
      F300F2F2F200F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000EFEFEF00EFEF
      EF00A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FAFA
      FA00FFFDF5003765B00009409C00154FBB00225EC5002265E1003486FF003180
      FF003384FF003485FF003484FF002E82FF00649CF200FFFFF600F5F5F500FBF9
      F500D6E3F4001576FF003184FF003084FF00227AFE00FFFBF000F2F1F100F2F2
      F100FFFDEE002F82FC002F82FF002F82FF002E80FF002D80FF00297DFF001A74
      FF00000000000000000000000000000000000000000000000000F6F6F600ECEC
      EC00FAFAFA00FEFEFE0000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F7F7F7000000000000000000D9DBE200CFAE7B00F4B32F00EFB1
      3600EFB03400EFB03200EEAF3000EDAD2E00ECAC2C00ECA92A00EBA82800EAA5
      2500E9A32300E8A02100E69E1F00E59C1D00E4991A00E3971900E1931600DF90
      1400DD8E1200DC8C1100DA890F00D9850600CF882500B6BDCC00B5AFAD00C8C4
      C30000000000000000000000000000000000000000000000000000000000ECEC
      EC00F9F9F900FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EEEEEE00EFEFEF00EFEF
      EF00F1F1F100F1F1F100AEAEAE003F76440005580D00B7B7B700709173000558
      0D0065966900AFAFAF00ABABAB00A8A8A800A6A6A600A5A5A500A4A4A400A4A4
      A400A4A4A400F1F1F100F1F1F100F0F0F000F0F0F000F0F0F000EEEEEE00E2E2
      E200A4A4A40000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00000000001F53A800093B93002A6BDC000F4BCA00347DED002E7FFF002F7F
      FF00307FFF003283FF003283FF003282FF001C73F900FCF6EF00F7F6F400F4F4
      F400FFFCF200B7D0F6003B89FE003687FE00C3D6F300F9F6F100F0F0F000F2F1
      F000FDF6EB001E76FE002E80FF002E80FF002D80FF002C7FFF00146FFF00B5D1
      FF00000000000000000000000000000000000000000000000000E7E7E700F4F4
      F400FCFCFC00000000000000000000000000000000000000000000000000FDFD
      FD00F4F4F400E8E8E8000000000000000000B7B7C200F0AC2C00F3B83C00F1B6
      3B00F1B53800F1B43600EFB23400EFB23200EFAF3000EDAE2D00EDAD2B00ECAA
      2900EBA82700EAA52400E9A22300E7A02100E59D1E00E59A1C00E3971A00E195
      1800DF921600DE8F1400DC8D1200DA8A1100DB830000C59B6300B3B5BF00BBB6
      B300D5D3D3000000000000000000000000000000000000000000E8E8E800F4F4
      F400FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EEEEEE00EFEFEF00F0F0
      F000EFEFEF00F1F1F100F0F0F000E0E6E10083AA8700F3F3F300F3F3F30094B5
      970005580D0064966900F1F1F100F2F2F200F1F1F100F1F1F100F1F1F100F0F0
      F000F1F1F100F0F0F000F0F0F000F0F0F000F0F0F000EBEBEB00DFDFDF00D2D2
      D200A2A2A20000000000000000000000000000BAFE0000D1FE00009DFE000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00000000001A4DA1000C43AA002664CB001E5EDA003183FF002C7BFF002D7E
      FF002E7EFF002F7EFF002F7FFF003080FF002A7FFF00538DE800FFFFF400F3F3
      F300F3F3F300FAF7F100FFFDF000FFFCEF00F8F5F100F0F0F000F0F0F000F9F5
      EF00B6CAE9001D76FF002E7FFF002C7CFF002B7DFF002478FF00418AFF000000
      00000000000000000000000000000000000000000000F0F0F000EEEEEE00FAFA
      FA00FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00F5F5F500DCDEE300CDAC7C00FBBF3900F4BB4000F3BA
      3E00F3B93C00F2B83A00F2B83800F1B53600F1B53400EFB33200EFB02F00EEAE
      2D00EDAC2B00ECAA2900EBA72600E9A42400E8A22200E69E2000E59C1E00E499
      1B00E2951600E1921200E08F0D00DE8B0900DD880400DF7C0000BFA78B00AFAC
      AF00B9B3B100ECECEC00000000000000000000000000F1F1F100EEEEEE00FAFA
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EDEDED00EFEFEF00EFEF
      EF00EFEFEF00F0F0F000F0F0F000EFEFEF00F0F0F000F2F2F200F2F2F200F2F2
      F200A4BFA60015621C00C2D2C300F2F2F200F1F1F100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000ECECEC00E6E6E600DCDCDC00D4D4D400CACA
      CA00A2A2A200000000000000000000000000B3B3B3007F7F7F004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000305AA2001D60D500104CC8002E75E8002979FF002B7AFF002C7C
      FF002C7CFF002C7CFF002F7EFF002E7EFF002F7FFF001E77FF006997E200FFFF
      F200F7F5F300F0F0F000F0F0F000EFEFEF00EFEFEF00EFEFEF00F2F1EF00FFFA
      E8002D7AF400297BFF002B7BFF002A7BFF00287AFF000D69FF00EEF4FF000000
      000000000000000000000000000000000000FAFAFA00E8E8E800F7F7F700FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800EAEAEA00EFEFF000BCBBC400F6B83700F7C04300F5BE
      4200F5BD4000F4BD3E00F4BB3C00F3BA3A00F2B83800F1B63600F1B43400F0B2
      3100F0B02C00F0AE2800EFAB2400EEA81F00EEA41900ECA01300E99A0F00E496
      1500DD982900D69B4100CE9E5800C6A26F00BFA68400B9AA9E00B6B0AC00B9B5
      B400837B7600A09C99000000000000000000FBFBFB00E9E9E900F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EDEDED00EDEDED00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100D2DDD300E1E7E200F1F1F100F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000EBEBEB00E4E4E400DDDDDD00D5D5D500CBCBCB00A0A0
      A000A3A3A300000000000000000000000000B2B2B2007E7E7E004B4B4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CA5D5002868CF001958D5001F75FF002272FF002979FF002977
      FF002B7AFF002C7BFF002C7CFF002C7BFF002D7DFF002E7CFF001E76FF003E7E
      E700DDDEE200FFFFF100FCF8F000FAF6F000F9F5EF00FFFBEF00F7F0E4003F80
      EB002276FF002A7AFF002979FF002979FF001A71FF007CADFF00000000000000
      0000000000000000000000000000FEFEFE00E7E7E700F5F5F500FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F4F4F400EFEFEF00CFD0D700D3B58600FDC53E00F8C3
      4600F9C34200F8C23E00F8C03A00F8BF3500F8BD3100F8B82900F4B12300EFAD
      2900E8AC3A00DFAC5000D9AE6400D0AE7900C9B09000C4B6A800BFBBBE00BABD
      C900BABDC900BEBFC800C4C5CB00CDCCD100D5D5D800D7D6D700D8D7D600DEDC
      DC00E4E1DF00EDEBEA000000000000000000E8E8E800F4F4F400FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400ECECEC00EDEDED00EDED
      ED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F1F1
      F100F1F1F100F1F1F100F1F1F100F0F0F000F0F0F000EFEFEF00EFEFEF00EFEF
      EF00F0F0F000EBEBEB00A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A40047474700000000000000000000000000B2B3B3007F7E7F004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F5F2008EB1EF00468AFE000B63FF00186D
      FF002172FF002977FF002A78FF002A79FF002B7BFF002B7BFF002B79FF00277A
      FF00126BFC003E7CE70082A5E200A0B7E00099B3E0006795E400166AF6002477
      FF002A7BFF002979FF002879FF002577FF00196EFF0000000000000000000000
      0000000000000000000000000000E7E7E700F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F3F3F300E5E6E700BDBECB00F2B53800F5B8
      3300EBB74900E4B75C00DDB66E00D5B68200CFB79600C8BAAF00C4BFC500C1C3
      CF00C5C7D200CECFD800D7D6DD00DFDEE300E8E8ED00E6E5E600E0DDDD00E5E4
      E300E8E8E700EDEDED00EEEFEF00EDEDED00EDEEEE00F2F2F300FBFBFB000000
      0000000000000000000000000000E8E8E800F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EBEBEB00EBEBEB00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EDEDED00ECECEC00EDEDED00EFEFEF00F0F0
      F000EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0F0F000EEEEEE00EDEDED00EEEE
      EE00EBEBEB00E4E4E400A4A4A400EFEFEF00EFEFEF00E6E6E600B8B8B8004848
      480000000000000000000000000000000000928BD6006D65C2003D369F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFCFB00FDF8F000FEF5E700FFFFFE00B2CF
      FF005C97FF00176CFF00146AFF001E70FF002776FF002977FF002978FF002978
      FF002978FF002476FF001F73FF001D72FF001D73FF002174FF002878FF002978
      FF002877FF002777FF002777FF000E66FF00BED6FF0000000000000000000000
      000000000000FEFEFE00E7E7E700F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00F6F6F600CDCCCB00C2C1C900C5C6
      D400CACBD700D3D3DC00DAD9E100DDDDE300DCDCE000DCDCDE00E1E0E000EAEA
      E900E9EAEB00DED8D500D3D2D300CCCFD500AFA8A2005D564E006C6A6900FCFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E800F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EBEBEB00ECECEC00ECEC
      EC00ECECEC00EEEEEE00EDEDED00ECECEC00EBEBEB00EBEBEB00EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EDEDED00ECECEC00ECEC
      EC00E4E4E400DDDDDD00A4A4A400F3F3F300E9E9E900B9B9B900484848000000
      000000000000000000000000000000000000928BD6006D65C2003D369F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E9E8E600FFFF
      F900FFFFFF00FFFFFF00C7DBFF0072A6FF002272FF001068FF001C6FFF002474
      FF002876FF002876FF002877FF002876FF002776FF002776FF002776FF002776
      FF002675FF002575FF001D6FFF004286FF000000000000000000000000000000
      0000F9F9F900E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200D7D6D600E7E7
      E600F0F0F000ECEDED00EDEDED00F1F1F200F8F9F90000000000000000000000
      0000C4BFBB0073717200999FA500BCC2C900D9D5D300AAA096004E494400A2A1
      9F00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00E7E7E700F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EBEBEB00EBEBEB00ECEC
      EC00ECECEC00EDEDED00EDEDED00ECECEC00EAEAEA00E8E8E800EBEBEB00EDED
      ED00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00E3E3
      E300DBDBDB00D5D5D500A4A4A400ECECEC00BABABA0048484800000000000000
      000000000000000000000000000000000000000000006D65C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00F5F5F500E8E8
      E800EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCE9FF0086B0FF00307A
      FF000C64FF00186BFF002171FF002775FF002675FF002674FF002675FF002573
      FF002574FF002474FF000761FF00EFF5FF00000000000000000000000000EFEF
      EF00E8E8E800F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F6F6F700EBEB
      EB00F4F4F4000000000000000000000000000000000000000000000000000000
      0000BBB6B200706E6F00A0A5AA00B5BBC300BFBDBC00A9A09700534E4A00ADAB
      A90000000000000000000000000000000000000000000000000000000000F1F1
      F100E8E8E800F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00E7E7E700DBDB
      DB00D3D3D300CBCBCB00A4A4A400BBBBBB004848480000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00E7E7E700F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3F7FF0099BDFF004386FF000C63FF001368FF001D6EFF002372FF002371
      FF002473FF001468FF007DABFF000000000000000000F4F4F400E7E7E700EFEF
      EF00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00E8E8E800F7F7F700000000000000000000000000000000000000
      0000B2AEAA0072707100A3A8AD00B7BEC600B7B6B500A79E950056504C00AFAD
      AB000000000000000000000000000000000000000000F7F7F700E8E8E800EEEE
      EE00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400EBEBEB00ECECEC00EBEB
      EB00EBEBEB00EBEBEB00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EAEAEA00DBDBDB00D2D2
      D200CACACA00A0A0A000A4A4A400474747000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500EDEDED00E7E7E700F1F1F100FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADCAFF005692FF001064FF001165
      FF001668FF00186AFF00FFFFFD00F3F2F100E6E6E600EDEDED00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500ECECEC00E9E9E900F3F3F300FEFEFE00000000000000
      0000ACA7A4006E6C6E009EA4AB00B3BBC400AEAEAF009E979100514D4800ACAB
      A9000000000000000000FEFEFE00F2F2F200E8E8E800ECECEC00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A2A2A200A0A0A000A0A0
      A0009E9E9E009D9D9D0047474700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F4F4F400F7F7F700FAFAFA00FFFFFE00FFFFFF00FFFFFA00FFFFF700B6CC
      F300538CF300ACC3EC00F2EFE800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800EAEAEA00F1F2
      F300C3BCB700B1A39A00E0D9D500EDEFED00EFE4D200D8BEA70097867700D3D0
      CD00ECEDED00EBEBEB00E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00EEEDEC00F6F3
      ED00FFFCF100FEFBF500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F3F3
      F300DEDFDF00FFF7ED00FDF5EE00FEFAF800F4EEE900E6DDD600FFF6EC00E0E1
      E200F3F3F300F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00F9F9F900F9F9F900F8F8F800F8F8F800F9F9F900F9F9F900FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD00FCFC
      FC00FCFDFD00E7E8E900E6E7E800E6E7E700E7E8E900E8E9EA00E7E8E900FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FCFCFC00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F600F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F8F8F800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FAFAFA00F9F9F900F5F5F500F1F1
      F100EEEEEE00EBEBEB00E9E9E900E7E7E700E7E7E700E9E9E900EBEBEB00EEEE
      EE00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FCFCFC00FAFAFA00F8F8F800F5F5F500F1F1
      F100EDEDED00EBEBEB00E9E9E900E7E7E700E7E7E700E9E9E900EBEBEB00EDED
      ED00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABACAB00D0D1
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D1D000AFAFAF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00FAFAFA00F6F6F600F0F0F000E7E7E700E9E9E900EEEE
      EE00F4F4F400F8F8F800FCFCFC00FEFEFE00FEFEFE00FCFCFC00F8F8F800F4F4
      F400EEEEEE00E8E8E800E8E8E800EFEFEF00F6F6F600FAFAFA00FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00000000000000000000000000000000000000
      000000000000FDFDFD00F9F9F900F5F5F500EFEFEF00E7E7E700E7E7E700EDED
      ED00F3F3F300F7F7F700FBFBFB00FDFDFD00FDFDFD00FBFBFB00F7F7F700F3F3
      F300EDEDED00E7E7E700E7E7E700EFEFEF00F5F5F500F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00EBEBEB00DDDDDD00E9E9E900FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F4F4F400EBEBEB00E7E7E700E6E6E600E5E5
      E500E1E1E100DDDDDD00D6D6D600D0D0D000D9D9D900E5E5E500E9E9E900E8E8
      E800E8E8E800E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E8E8E800E9E9E900E5E5E500D9D9D900D1D1D100D5D5D500DDDDDD00E2E2
      E200E4E4E400E6E6E600E6E6E600E9E9E900F2F2F200FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F5F5F500EFEFEF00EFEFEF00F3F3F300F6F6F600F8F8
      F800F7F7F700F3F3F300EBEBEB00E7E7E700F1F1F100FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F0F0F000E6E6E600ECECEC00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C1C1C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00CECECE00CECDCD00DBDAD900CFCECD00C9C9
      C900F8F8F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F2F2F200D4D3D300B5B3B200A6A4A400A4A3A200A2A0
      9F009C9A9900969594009F9D9C00A8A7A600A7A6A500A6A4A400A5A4A300A5A4
      A300A5A3A300A5A3A300A5A3A200A5A3A200A5A3A200A5A3A200A5A3A300A5A3
      A300A5A4A300A5A4A300A6A4A400A7A6A500A8A7A6009F9D9D00969494009C9A
      9900A1A09F00A5A3A200A6A4A300B1AFAE00CCCCCB00EDEDED00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F5F5F500DEDEDE00CACACA00C6C6C600CCCCCC00D3D3D300D6D6
      D600D5D5D500D2D2D200E4E4E400F5F5F500F8F8F800FAFAFA00FCFCFC00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300E5E5E500EEEE
      EE00F7F7F700FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9BAB9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E0E000E2E1E000EBEAEA00E9E9E800EBEAE900E7E7
      E600CDCDCC00FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00E4E3E300A7ABAC007C8A910079868D0079878D007987
      8E0079868D00818E9500828F9600839197008592990087949B0088959C008A97
      9D008B999F008C9AA0008E9BA2008F9CA3008F9CA3008D9BA1008C9AA0008B99
      9F008A979D0088969C0087949B008592990083919700828F9600818E95007885
      8C0079868D0079878D0079868D007A888F009CA1A400DBDBDA00FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00EAEAEA00BEC3C3009CA8A600929F9D00969D9C00969696009797
      9700A9A9A600BEBEBD00C5C5C500CCCCCC00D4D4D400DCDCDC00E2E2E200E8E8
      E800EDEDED00F2F2F200F6F6F600F9F9F900FBFBFB00FDFDFD00000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00E7E7E700F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00D1D1D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B2B10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCDBDB00EAE9E800E9E8E600EEEAE600E9E8E600EAE9
      E800E1E0DF00D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900D9D7D60083919900728B9800778F9B007A929E007D95
      A1007F97A300829AA600859DA90088A0AC008BA3AF008EA7B30092AAB60094AC
      B80097AFBB0099B1BD009CB4C0009DB5C1009DB5C1009AB3BF0099B1BD0096AF
      BA0093ACB80091A9B5008DA6B2008BA2AE00879FAB00849CA8008199A5007E96
      A2007B939F0078909C00768E9A00728B970077899300D2D0CF00F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00DCE3E300C4A5A800961521008C16220095505700AAB1AE00A8AB
      9A00807E8E009192880093948D00959595009D9E9E00A9AEAE00B2B5B400BBBB
      BB00C3C3C300CBCBCB00D4D4D400DBDBDB00E1E1E100E8E8E800EDEDED00F1F1
      F100F5F5F500F8F8F800FBFBFB00FDFDFD000000000000000000000000000000
      0000F9F9F900E6E6E600F2F2F200FAFAFA00FEFEFE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00FBFCFB00FBFBFB00FCFDFC00FBFBFB00FCFCFC00DFDFDF00FBFB
      FB00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F9F9F900FBFBFB00C1C1C100FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00DDDDDD00E9E8E800EEEAE700B8CEE800F8F0E700E8E8
      E700EBEAE900D6D5D500E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800D1CFCE0069818D0070889400758C980078909C007C93
      9F007E96A200839AA600879EAA008BA3AE008FA6B20091A9B40094ACB70097AE
      BA0099B0BC009BB2BD009EB5C0009FB6C1009FB6C1009DB4BF009BB2BE0099B1
      BC0097AEBA0095ACB80092A9B50090A7B2008DA4AF008BA1AD00889FAA00869C
      A800849AA6008198A4007F96A1007D94A000768F9B00C9C8C800F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFDFD00C9BEBF0090000B00A43B4500B7707700E5F0ED00DCDCE0005B46
      D4002709D1002306CE009A92CB00C6CBC400B5BFBE00895B600088757700827F
      7F008C8D8C00999A9400A7A89C00ADAEA600B1B2AF00B9B9B900C2C2C200CBCB
      CB00D2D2D200DADADA00E0E0E000E7E7E700ECECEC00F1F1F100F5F5F500F8F8
      F800FCFCFC00FDFDFD00E6E6E600F1F1F100FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00F7F7F700F7F7F700F8F8F800F8F8F800F9F9F900FAFAFA00DFDFDF00E1E1
      E100E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E8E8E800E3E3E300D6D6D600FBFBFB00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F600E0DFDE00EAE9E800F9F1E700559BE8007CB0E800FEF3
      E700EAE9E800EDECEB00CECDCD00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F7F700CACBCB00E3F7FF00DCEDF700D6E9F200CEE1EA00C6DA
      E400BCD1DA00AFC4CF009FB5C1008CA4B00089A1AE008DA6B20090A9B50094AC
      B80095ADB90096AEBA0098B0BC0099B1BE009CB4C0009EB6C200A2BAC600A6BE
      CA00AAC2CE00AFC7D300B5CDD900BBD3DF00C0D8E500C7DFEB00CEE6F200D2EB
      F700D7EFFB00DDF5FF00E1F9FF00E3FBFF00EAFFFF00C8C8C700F7F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8FDFD00B88D920088000C00D6D3D300E1ECEB00DDDDDC00CECCDA00B1AB
      D7009185D400CAC7DA00E8ECE100D5C4C70099132000950312009C132100D7B7
      BB00E4E9DC009B95C0004F3FAB005D519F007E7B94008C8E8B008F99980097A3
      A2009FA8A700A3A4A400ACACAC00B8B8B700C1C1C000C9C9C900D1D1D100D8D8
      D800E0E0E000E7E7E700ECECEC00DADADA00E8E8E800F3F3F300FAFAFA00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FCFCFC00F8F8F800F5F5F500F0F0F000EFEFEF00CFCFCF00C6C6
      C600D9D9D900D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D8D8D800CBCBCB00E6E6E600FEFEFE00000000000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEEEEE00E4E2E200EAE9E800FDF3E8004293E800006AE700C8D7
      E900F3EDE800EAE9E800ECEAEA00CBCBCC00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F600C8C8C700E6F9FF00E3F4FD00E4F5FE00E4F5FE00E4F6
      FF00E5F6FF00E6F8FF00E9FAFF00EBFCFF00DCEEF700C2D6E000A5BCC7008CA4
      B100849DA900859DA9008AA2AE008EA6B20090A8B40093ABB70096AEBA009AB2
      BE009DB5C100A2BAC600A7BFCB00ADC5D100B1C9D500B7CFDB00BDD5E100C3DB
      E700C8E0EC00CDE5F100D2EAF600D6EEFA00DAF4FF00C5C4C300F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F6F500B78F9300DBDEDB00D0D3D300D8D8D800DDDDDD00DDDDDC00E1E2
      DC00E4E5DC00DFE0DC00DCDCDC00DDDFDF00DCDCDC00CEB5B800DEE2E100E4E9
      E300A8A0D8003419CE00270ACE007766D700EBEDE600E8ECEB00A84952008F20
      2B00882B3500A7A1A100A4A69E0094948E00949589009D9F920099999900A1A1
      A100ADB1B100B7BAB900C1C1C100C7C7C700BCBCBC00CFCFCF00DCDCDC00E5E5
      E500EDEDED00F6F6F600FCFCFC0000000000000000000000000000000000EEED
      ED00E1E1E100D4D4D300C4C3C300B4B4B400A5A4A5009C9B9B007E7E7E00A7A7
      A700CCCCCC00C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700CBCBCB00ACACAC00B6B6B600E5E5E500E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E9E8E700EAEAE900FFF7E8001A81E9000F7BE7000878
      E800F5EFE900EDEBE800EBEBE900E5E4E300D3D3D30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F4F4F400C2C1C000E2F4FC00E2F3FC00E2F3FC00E2F3FC00E2F3
      FC00E1F3FC00E0F2FC00DFF1FB00DFF2FC00E1F3FD00E2F4FE00E3F6FF00DFF3
      FD00C9E0EB00A9C2CE0089A2AE007B939F00859DA90089A1AD008CA4B0008FA7
      B30094ACB80098B0BC009DB5C100A3BBC700A8C0CC00ADC5D100B4CCD800BBD3
      DF00C2DAE600C9E1ED00CDE5F100D3EBF700D5EFF900C0BEBD00F3F2F200FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00D6DBD100D1D2DA00DBDBD900CDCDCD00DBDBDB00DEDEDE00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DEDFDF00DFE3E200DEDFDF00DDDD
      DD00E4E4DE00EEF1DF00E6E8DE00E9EBDE00E1E7E500BE828800AD4F5900A535
      4000D7C4C600ECF2EA00B0A8DF003316D5002C10D000513DC300C6C8C100B8C7
      C500907073008B7B7D008789890091919100979794009B9D9200ACADA500B6B6
      B300C6C6C600E0E0E000F6F6F600000000000000000000000000000000009E9F
      9D008C8C8B00848484007B7C7B00727272006C6D6C0065666500111211007070
      7000B6B6B600ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00B6B6B60066666600303130009191910095969400D0D0
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1E2E200EBEAEA00ECEAE900FBF2EA000076E8001480E8000B7C
      E800308EE900FFF9E900EBEAE900EDECEB00DCDBDB00DADADA00F6F6F600F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00ECECEC00CBC9C900DFF0F700E2F3FC00E2F3FC00E2F3FC00E2F3
      FC00E2F2FC00E7F8FE00E2F4FD00E0F2FC00DFF2FC00DEF0FA00DDF0FA00DBEE
      F900D9EDF800D5EBF700CFE7F400B6CFDC00869DA900768D9900839CA80088A0
      AD008BA3AF008FA7B30093ABB80099B1BD009DB5C200A4BCC800ABC3CF00B2CA
      D700B9D1DE00C1DAE600C8E0ED00CFE7F400D2EBF500C9C7C600EBEBEB00FBFB
      FB00FEFEFE00000000000000000000000000000000000000000000000000FDFD
      FD00E8EAE2009991C7004129CA00E7EAD900D9D9D900CCCCCC00DBDBDB00DFDF
      DF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DFDFDE00DEDEDE00DEDEDE00E1E7E600E3EDEC00E4F0
      EF00E0E3E200DFDFDE00A69DD8009387D7008D81D600F2F5E300E2E0E000AA3E
      48009703120099051400C7878E00DEE6DE00BFBEC4005143A70061579B00736E
      92009B9B9700C8CECE00F0F1F100FEFEFE000000000000000000000000009899
      9900ABACAC00AFAFAF00B3B3B300B5B6B500B9BABA00B7B8B8004D4E4D007373
      7300A1A1A1009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00A1A1A1006969690053545300ADAEAE00AEAEAE00A0A0
      A000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1E0E000ECEBEA00F0EDE900DDE3EA000077E8001482E8001382
      E8000179E80072B1EA00FFF6E900EBEBE900EFEFED00D2D1D000C8C8C700C7C6
      C600C5C5C400C7C7C700D6D6D600E9E9E900F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F5F5F500E6E6E600DEDCDB00DDEDF600E2F4FE00E2F3FD00E2F3FD00E2F3
      FD00E9FBFF00BDCCEA00ECFDF700E6F8FF00E1F3FD00E0F3FD00DFF1FC00DDF0
      FB00DAEEFA00D6EBF700D1E7F500CDE5F300CDE7F700B2CAD8007A8D95007187
      8E007D959E00839BA300869EA5008AA1A9008EA6AD0093AAB20099B1B800A0B8
      BF00A8C0C700B1C9D000BAD2D800C2DAE000C3DAE000DDDBDA00E6E6E600F5F5
      F500FCFCFC00000000000000000000000000000000000000000000000000FAFA
      FA00DEE0D1001F02C6006D5CCE00E5E6DA00D9D9D900DADADA00CBCBCB00DDDD
      DD00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DFDFDE00E4E5DF00E7E9DF00E7E9DF00DFDFDF00DFDFDF00DCD7
      D800D0B5B700D8CCCD00E7F0EC00C9C5DE00391FD100290DD200523BD700DCDA
      E600EFFCF800B4747A00E1DBDC00FFFFFF00000000000000000000000000B9B8
      B800EAE9EA00E9E9E900E9E8E800E8E8E800E8E8E800E4E4E300D9D9D900D1D1
      D100CBCBCB00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCB
      CC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCB
      CC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCBCC00CCCB
      CC00CCCBCC00CCCBCC00CBCBCB00D1D0D100DDDCDC00E9E8E800E9E8E800BBBB
      BB00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400D8D8D800EDEDEC00F3EFEA00B6D2EB00007BE9001385E9001385
      E9001384E9000077E900BAD4EB00F8F1EA00EBEBEA00EEEEED00EFEEEE00EFEE
      EE00EFEFEE00ECECEB00DFDFDF00D1D1D000C7C7C700C5C5C600DADADA00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F5F5F500E1DFDF00D7E4E100DFEDEC00DFECEB00DFECEB00E3F1
      F000E5F3DE000F15C6003941B600D6E3D200E5F3F200DEECEB00DEECEB00DDEB
      EB00DBE9E900D8E7E800D4E5E600D0E2E400CBDEE100C7DCE000CAE0E400AAB9
      BF00808F9700748A95007E96A3008AA2AF008DA5B20090A8B40095ADBA009CB4
      C000A4BCC900AEC6D200B7CFDC00C3DCE900C4D9E400E1DEDD00F5F5F500ECEC
      EC00F9F9F900FEFEFE000000000000000000000000000000000000000000F8F8
      F500B9B7C500290DCA00C6C4D700DDDDD900D9D9D900D9D9D900DADADA00C9C9
      C900DFDFDF00E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E1E2
      E200E2E6E500E1E4E400E0E0E000E4E4E000F0F3E200E4E4E000ECEEE100E7EE
      EA00C0848A0091000900D7C5C700FFFFFF000000000000000000000000009D9C
      9B00C2C0BF00C4C3C100C7C5C400BFBEBD00C7C5C300B9B8B600C7C5C500CFCE
      CC00CBCAC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCB
      C900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCB
      C900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCBC900CCCB
      C900CCCBC900CCCBC900CBCAC900CFCECD00C9C7C700BCBBBA00BFBFBD009F9E
      9D00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F100CBCB
      CB00C6C6C600E2E1E100EEEDEC00F9F1EB0090C1EB000380E9001387E9001387
      E9001387E9001086E900007EE900F1EDEB00FAF2EB00F5EFEB00F4EFEB00F1ED
      EB00EEECEB00EDECEB00EEEDEC00EFEEED00F0EFEE00EFEEED00DDDCDC00C9C9
      C900C7C8C800ECECEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E80000000000E4E2E100D7E4EA00E3F5FE00E2F3FC00E3F4FE00C9D8
      DF00ABB8B800070DD200070DD60095A1B800C6D6D900E4F5FF00E2F4FE00E1F3
      FC00E0F1FB00DFF1FB00DDF0FA00D9EDF800D5EAF600D2E8F400CCE4F100CAE5
      F300C9DEE800AFB8BD0085959D006E828C00758D990089A2AE0090A8B40094AC
      B8009AB2BE00A3BBC700ADC5D100B8D1DE00BDD1DA00E1DFDE00FFFFFF00E9E9
      E900F5F5F500FCFCFC0000000000000000000000000000000000FEFEFE00EFEF
      ED00B0ADC100E2E3DE00DFE0DB00D9D9D900D9D9D900D9D9D900DADADA00DBDB
      DB00C8C8C800E0E0E000E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E1E1E000E2E2E100E2E2E200E5EE
      ED00AC5D6500931A2600EDF4F300FFFFFF000000000000000000000000008A88
      8600A9A6A4009E9C9A0094929000AAA7A4009E9C9900B0AEAC00B4B2B000C5C3
      C100C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1
      BF00C3C1BF00C3C2BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C2C000C3C1
      BF00C3C2BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1BF00C3C1
      BF00C3C1BF00C3C1BF00C3C1BF00C4C2C000BAB8B700B1B0AD00B6B4B1009796
      9500FBFBFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700CDCDCD00CACACA00E9E9
      E800F1F1F000EEEEED00EDECEB00FFF5EB006BB1EC000684EA001189EA001189
      EA001189EA001189EA000A85EA002793EB00AFD1EC00B2D2EC00BCD7EC00DFE6
      ED00F8F2EC00FFF7EC00FFF5EC00F9F1EC00F1EEEB00EDEDEC00EFEEED00F1F0
      EF00EDEDEC00CECDCD00C9C9C900F2F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FBFBFB00EEEE
      EE00F3F3F30000000000E6E5E400D6E3E900E3F4FE00E1F3FC00E2F3FC00EBFD
      F8007E89E8002128D4002D34D500505AE000DEEEE400C6D4DC00DBECF400E1F3
      FD00E1F3FC00E0F2FB00DFF1FB00DFF0FA00DDEFF900DAEDF700D6EAF500D1E7
      F300CBE3F100CDE5F200D2DADD00B1BBC00085969F00657A8400677E8A008199
      A50099B1BD009EB6C200A5BDCA00B0C9D600B8C9D200E2E0DF00FFFFFF00F3F3
      F300EEEEEE00FBFBFB00FEFEFE00000000000000000000000000FBFBFB00E3E3
      E300CBD0CE00DCDAD900D7D3D300DBDBDB00DADADA00DADADA00DADADA00DBDB
      DB00DBDBDB00C7C7C700E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E3E3E300E3E3E300D4D4D400D4D9
      D800C2939800D9E5E200F6F7F700FFFFFF000000000000000000000000009B9A
      9800CECDCC00CBCAC900C0C0BE00CDCDCA00ACABA900C4C3C100777577006362
      6500656365006563650065636500656365006563650065636500656365006563
      650066646600605E6000636263006362630061606100656465005F5E5F006565
      6600605E60006462640065646600656365006563650065636500646364006564
      66006463640064636400656466006361640075747500D6D4D300D8D6D400B2B1
      B000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E300C5C5C500E8E7E700F2F1F000EEEE
      ED00EEEDEC00F7F1EC00FFF7ED00FCF3ED00349BEC000B88EA00118BEB00118B
      EB00118BEB00118BEB00118BEB000C88EA000083EA000082EA000082EA00007F
      EA000081EB00178EEB0050A7EC0094C5EC00E6E9ED00FFF8ED00F9F2EC00EFED
      EC00EEEDED00F1F0F000ECEBEB00C8C9C800DBDBDB0000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800E8E8
      E800FEFEFE0000000000EAE8E800D6E0E400E4F4FE00E3F2FB00E7F8FD00E7F8
      FD000000CA009FACED00BBCAF4000409CD00CFDFFA00E2F4F800D6E7EF00DCEC
      F500E0F2FB00E1F2FB00E1F2FB00E1F1FA00E1F1FA00E0F0FA00DDEFF800DAED
      F700D6EAF500CFE6F200CBE3F200E4EBEF00D2D8DB00A8B5BC0082949D006177
      8100586F7B00768E9A009BB2BA00AAC3CB00B3C1C500E3E1E100FEFEFE000000
      0000E8E8E800F8F8F800FEFEFE000000000000000000FEFEFE00F8F8F800DCDF
      DF00C2ABAE0092051300E1ECEB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00C6C6C600E5E5E500E4E4E400E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E2E2E200E1E1E100E1E1E100E1E1E100E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E4E4E400E6E6E600D6D6D600CFCFCF00DADADA00DCDC
      DC00EBF1E300C4C3D000FCFCFA00FFFFFF00000000000000000000000000B5B4
      B400EEEEED00EAE9E900E5E5E500E3E2E000D9D8D700E7E6E500414243000303
      0500131417001615190016151900161519001615190016151900161519001515
      180011111400131317000D0D0F000E0E12000E1012000B0B0F00121216000A0A
      0E00121316000E0D110013131700151418001515180014131700101013000F0F
      12000E0E130010101300111013000403050049484B00EEEDED00EBEAEB00BFBE
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00D1D1D100D5D4D400F3F2F200F0EFEE00EFEEED00FBF3
      ED00FFF9ED00A6CFED00359DEC000081EB000A8AEB00118DEB00118DEB00118D
      EB00118DEB00118DEB00118DEB00118DEB00118DEB00118DEB00118DEB00118D
      EB00108DEB000D8BEB000789EB000086EB000081EB002596EC0096C7ED00FFF6
      EE00FEF4ED00F0EEED00EFEEEE00F4F2F200DBDADA00CBCACA00FBFBFB000000
      00000000000000000000000000000000000000000000FDFDFD00F5F5F500EAEA
      EA000000000000000000ECEBEB00D5DEE100E4F6FF00E4F5FE00E5F6FE000D13
      D0003E47DB00FBFFFF00FAFFFF005963E1004650DB00F8FFFF00E3F5FF00E2F3
      FD00E3F3FD00E3F3FE00E3F3FE00E2F4FE00E2F3FD00E2F2FD00E1F2FC00E0F1
      FB00DDF0FA00DBEDF800D5EAF600CCE5F300EBF4F900EBEDEE00C7D1D600A2B1
      B9007E929B00627883004D657200667F8C009DAAB100EAE8E700FEFEFE000000
      0000EAEAEA00F4F4F400FDFDFD000000000000000000FDFDFD00F4F4F400DCE8
      E700992935009D243000E3F1EF00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DCDCDC00DBDBDB00C5C5C500E8E8E800E6E6E600E5E5E500E6E6
      E600E4E4E400E2E2E200DCDCDC00D7D7D700D7D7D700DADADA00DFDFDF00E3E3
      E300E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E6E6E600E9E9E900D9D9D900CDCDCD00D9D9D900DCDCDC00DCDCDC00E6E8
      DC007F70D2006756CA00FFFFFB00FFFFFF00000000000000000000000000BBBA
      BA00F0F0EF00E8E7E600E3E2E100E0DFDE00E0E0DF00FCFBFA005A5A5C000000
      0000111312001415150014151500141515001415150014151500141515001011
      12000E0F0F007B7C7B00515252004F51500075767700252627008A8B8B002324
      2400838483004345440007080900141415001112130014151500404142002729
      28003233350038393900202122000000000056565700F3F2F100EDECEB00C0BF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00CBCBCB00E4E4E300F3F2F100EFEEEE00F5F1EE00FFFAEE0099CA
      EE00058BEC000086EB00098CEB000F8FEC000F8FEC000F8FEC000F8FEC000F8F
      EC000F8FEC000F8FEC000F8FEC000F8FEC000F8FEC000F8FEC000F8FEC000F8F
      EC000F8FEC000F8FEC000F8FEC000F8FEC000F8FEC000A8DEB000087EB000086
      EC007FBFED00FFF8EE00F8F2EE00EFEEEE00F2F1F000EBEBEA00C6C6C600F6F6
      F6000000000000000000000000000000000000000000FCFCFC00F1F1F100F0F0
      F0000000000000000000EFEEEE00D3D9D700E0EDEB00DFECEA00E3F0EA009AA5
      E200EAF6EB00E0EDEA00E1EDEA00E9F6EC002B32D300A3AEE100E9F6EB00DFEB
      EA00DFEBE900DFEBE900DFEBE900DFEBE900DEEBEA00DFECEA00DEEBEA00DDEA
      E900DDE9E900DBE9E800D9E7E700D5E4E500CADDDF00ECF5FA00F8F8F800DEE4
      E800BDC9CE009AABB3007B909A00637A86008EA6B300EFECEB00000000000000
      0000F0F0F000F0F0F000FCFCFC000000000000000000FCFCFC00EFF0F000D7E1
      DF00920B1900CDAFB200DFE3E300DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DDDDDD00DBDBDB00C5C5C500EBEBEB00E7E7E700E5E5
      E500E0E0E000D5D5D500C7C7C700BDBDBD00BBBBBB00C1C1C100CDCDCD00DBDB
      DB00E4E4E400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E8E8E800EBEB
      EB00DCDCDC00CDCDCD00D7D7D700DEDEDE00DDDDDD00DCDCDC00E0E1DD00C9C6
      DB001A00CA00988ED000FFFFFB00FFFFFF00000000000000000000000000BABA
      BA00F0F0EF00E9E8E700E4E3E200E0DEDD00DEDDDB00FFFEFD00757577000000
      000005060500090A0900090A0900090A0900090A0900090A0900090A09000505
      0400000101006465640039393900363836005B5B5A000E0F0E00707170000B0C
      0B006D6E6C002C2D2B000000000008090800050605000B0C0B00505251002C2D
      2C003C3D3C0043434300202121000000000063636200F4F3F300EAEAE900C1C0
      BF00000000000000000000000000000000000000000000000000000000000000
      0000CECECE00EAE9E900F2F1F100EFEFEF00FFF6EF00DBE6EF001996ED000088
      EC000C90EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91
      EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91
      EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91EC000F91EC000D91
      EC00008AEC00088EED00BFDBEF00FFF9EF00F0EFEF00F1F0F000F0EFEF00CBCB
      CB00FAFAFA0000000000000000000000000000000000FBFBFB00EEEEEE00F6F6
      F6000000000000000000F1F0F000D4DBDD00E4F6FF00E3F3FD00E3F4FD00EAFB
      FE00E4F4FE00E3F3FD00E3F3FD00EAFBFF00C6D5F600333BD800E3F4FD00E6F6
      FE00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E2F3
      FD00E2F3FD00E1F2FC00E0F1FC00DEF0FB00DBEDF800D0E5F200ECF5FA00FFFE
      FE00EDF1F300D5DDE200B5C0C500A3C3D500B1C5D000EEECEB00000000000000
      0000F6F6F600EDEDED00FBFBFB000000000000000000FBFBFB00EBEBEB00CBC8
      C800DED7D500E3EAE600DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DEDEDE00DBDBDB00C4C4C400EBEBEB00DEDE
      DE00D0D0D000BCBCBC00A8A8A8009D9D9D009B9B9B00A1A1A100B1B1B100C9C9
      C900DDDDDD00E6E6E600E8E8E800E8E8E800E9E9E900ECECEC00E1E1E100CCCC
      CC00D4D4D400DEDEDE00DEDEDE00DDDDDD00DDDDDD00DDDDDD00E4E5DE009F95
      D7004831CF00D7D7D600FCFDFB00FFFFFF00000000000000000000000000BCBC
      BC00F2F2F200EBEBEA00E6E6E500E1E1E000DFDEDC00FCFBFA008A8A8A000000
      000013161300191B1900191B1900191B1900181B1800181B1800191B19001416
      1400101110006C6C6C004648460043444300646564001F211E00787978001C1F
      1C00757676003A3B3A000C0F0C0017191700151715001A1C1A005B5C5B00393A
      3900484A48004D4E4C002F312F00000000007A7A7A00F4F3F200EAE9E800C2C1
      C10000000000000000000000000000000000000000000000000000000000D8D8
      D900E6E5E500F3F2F100F1F0EF00FFFAEF009ACDEF000087EC000991EC000E93
      ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93
      ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93
      ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93ED000E93
      ED000E93ED000B92EC000087EC0071BCEE00FFFCEF00F1F0EF00F2F1F000EDEC
      EC00D1D1D10000000000000000000000000000000000FAFAFA00EBEBEB00F9F9
      F9000000000000000000F4F3F300D4DADA00E4F5FF00E3F3FC00E3F3FC00E3F3
      FC00E2F2FC00E7F7FD00E3F4FD00E2F2FC00EFFFFE00A8B6F000616AE000F0FF
      FE00E3F3FC00E3F3FC00E3F3FC00E3F3FC00E3F3FC00E3F3FC00E3F3FC00E3F3
      FC00E2F3FC00E1F3FB00E1F1FA00E1F1FA00DFF0F900DCEEF700D2E8F400EBF4
      FA00FFFFFF00FDFCFC00CADDE800AFD0E100B8C7CF00F0EEED00000000000000
      0000FAFAFA00EBEBEB00FAFAFA00FEFEFE00FEFEFE00FAFAFA00E6E6E600D5D7
      D000DBDCE100BDB7DA00E1E1DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DDDDDD00D4D4D400B9B9B900CECE
      CE00B4B4B4009C9C9C00878787007E7E7E007D7D7D008686860099999900B2B2
      B200CFCFCF00E2E2E200E9E9E900EEEEEE00E6E6E600CDCDCD00D0D0D000DEDE
      DE00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E0E1DE00C2BE
      DB00F3F9E900D4D5D200FBFBFB00FEFEFE00000000000000000000000000BDBD
      BD00F4F4F400EDECEC00E8E8E700E3E3E200E3E1E000F5F4F300999798001718
      17003235320037383700373837003738370037393700383938003F423F004345
      4300393C390097989700727472006F706F009394930048494800A7A9A7004547
      4500A2A3A200666866003C3D3C004647460038393800383A38006F716F005253
      52005F615F00636563004A4C4A000B0C0C0090909000F2F1F000E8E8E700C2C2
      C100000000000000000000000000000000000000000000000000ECECEC00DAD9
      D800F4F4F300F1F1F000FFFBF00077C0EF000089EC000D95ED000D96ED000D96
      ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96
      ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96
      ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96ED000D96
      ED000D96ED000D96ED000D96ED00008CEC0049AEEE00FFFCF000F1F1F000F3F3
      F200E2E2E200E2E1E2000000000000000000FEFEFE00F9F9F900E9E9E900FCFC
      FC000000000000000000F6F5F500D4D9DB00E4F6FF00E3F3FD00E3F3FD00E3F3
      FD00EAFBFF00C1CFEB00EEFEF700E7F7FF00E3F3FD00F2FFFF009BA8EE008E9A
      EB00EFFFFF00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3
      FD00E3F3FD00E3F3FD00E2F3FD00E2F3FC00E1F1FC00DFF1FB00DDEFFA00D4E9
      F600F0F7FD00EAF3F900C3DCEB00BED9E900C1CCD200F1F0EF00000000000000
      0000FDFDFD00E9E9E900F8F8F800FEFEFE00FEFEFE00FAFAFA00E5E5E100B7B3
      CE002609CE00C9C6DC00E2E3DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DCDCDC00D7D7D700CCCCCC00B2B2B2009191
      91009191910097979700D9D9D900F4F4F400EAEAEA00B8B8B800808080009D9D
      9D00BBBBBB00D9D9D900E6E6E600CFCFCF00CDCDCD00DEDEDE00E0E0E000DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E9F5
      F100C5A5A800E0E4E400FAFAFA00FEFEFE00000000000000000000000000B8B8
      B800F7F7F700EFEEEE00EAE9E900E5E4E400E3E3E200F1F1F000A09FA0003737
      370050505000545354005453540054535400545454005A5A5A00424342002B2B
      2B0015171500292B29001C1D1C0019191900272727000F0F0F002A292A000C0D
      0C00292829001B1A1B001A1A1A002E2E2E0053535300555555004B4B4B004C4B
      4C004B4A4B004C4B4C004B4B4B002F2F3000A5A5A400F1F0EF00E7E6E500C3C3
      C2000000000000000000000000000000000000000000FEFEFE00D2D2D200F6F5
      F400F2F1F100FFF8F10094CDF000008CED000D98EE000D98EE000D98EE000D98
      EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98
      EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98
      EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98EE000D98
      EE000D98EE000D98EE000D98EE000D98EE00008FED005EB8EF00FFFBF100F1F1
      F000F5F5F400D5D5D500F9F9F90000000000FEFEFE00F8F8F800E8E8E800FEFE
      FE000000000000000000F8F7F700D4D6D500E1EFED00DFEBEA00DFECEB00E4F0
      EF00E7F4DF000F15C6003C43B500D8E4D200E5F2F100DFECEB00EDFAED009FA9
      DE00A9B4E600E9F5EC00DFEBEA00DFEBEA00DFEBEA00DFEBEA00DFEBEA00DFEB
      EA00DFEBEA00DFEBEA00DFEBEA00DFECEB00DFECEA00DEEAEA00DCEAE900DAE8
      E800D5E4E500D1E1E300CEDFE000C6DADE00C7CECF00F3F2F200000000000000
      000000000000E8E8E800F8F8F800FEFEFE00FEFEFE00F9F9F900E6E8DC007263
      CA002103CD00E9EAE000E0E0DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DBDBDB00D3D3D300C5C5C500B0B0B000939393008585
      8500D1D1D100FFFFFF00F9F9F900F7F7F700F8F8F800FFFFFF00DEDEDE008080
      8000A7A7A700AEAEAE00BABABA00D9D9D900E0E0E000E0E0E000DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E4EDEB00B96F
      760098232F00EAF6F400F9F9F900FEFEFE00000000000000000000000000AFAE
      AE00FAFAFA00F2F2F100ECECEB00E7E5E500E4E3E300F4F2F3009E9F9F005452
      54006B696B006D6B6D006D6B6D006D6B6D006E6C6E007C7A7C00282828000202
      0200999999009B9A9B0094949400919191009192910092939200909190009294
      920091919100A6A6A6005E5E5E000202020064646400767476006C6A6C006B69
      6B006B696B006B696B00696769004E4C4E00B6B5B500F0EFEE00E3E2E100C6C6
      C5000000000000000000000000000000000000000000E9E9E900E8E7E600F4F3
      F300F8F4F200E2ECF200008DEE000C9AEE000D9AEE000D9AEE000D9AEE000D9A
      EE000797ED000093ED000092ED000094ED000A99EE000D9AEE000C9AEE000094
      ED000496ED000D9AEE000D9AEE000496ED000094ED000D9AEE000D9AEE000898
      EE000093ED000B99EE000D9AEE000B99EE000095ED000092ED000093ED000597
      ED000D9AEE000D9AEE000D9AEE000D9AEE000D9AEE00008EED00B4DBF100FDF6
      F200F3F2F200F0EFEF00E0E0E00000000000FEFEFE00F8F8F800E8E8E8000000
      00000000000000000000F9F9F900D5D6D600E5F7FF00E3F3FD00E4F4FF00CBD9
      E000ABB7B800070DD200060DD60096A2B700C8D6DB00E5F5FF00E4F4FE00EEFF
      FF00B7C6F300BAC8F400E9FAFE00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3
      FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E2F3FD00E2F2FC00E0F1
      FC00DFF0FB00DCEEF900D8EBF700D3EAF700CDD3D600F5F4F400000000000000
      000000000000E8E8E800F8F8F800FEFEFE0000000000F8F8F800E2E4D700533E
      C800C0BBDE00E6E7E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000DEDEDE00D9D9D900CFCFCF00BDBDBD00A1A1A1008E8E8E00CACACA00FFFF
      FF00FBFBFB00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600FEFEFE00D7D7
      D7006B6B6B009D9D9D00C0C0C000D4D4D400DEDEDE00E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E1E000E5F0EF009504
      1200AE5B6300EAF3F200F9F9F900FEFEFE00000000000000000000000000ABAA
      AA00FBFCFB00F5F5F500F0F0F000ECEAEA00E5E4E300F7F6F4009D9C9D006869
      6900838583008384830082848200828482008485840092939200403F40001819
      1800CDCDCD00D3D2D300CCCCCC00CBCBCB00CACACA00CACACA00CACACA00CCCB
      CC00CCCCCC00DFDFDF0089888900040404007C7D7C008C8D8C00838583008284
      820082848200828483008082800067696700C0BFBF00F0F0EE00E1E0DF00CACA
      CA000000000000000000000000000000000000000000DDDDDD00F6F5F500F3F3
      F200FFFDF30028A7EF00049AEE000B9CEF000B9CEF000B9CEF000B9CEF000097
      EE0023A6F00098D5F800B0DEF9007ECAF6000299EE00079BEE000096ED008CD0
      F70049B6F3000399EE000399EE0052B9F30084CDF7000097EE00079AEE0025A7
      F000ACDDF9000098EE00089BEE000095EE0073C6F500AFDEF9009CD7F80036AD
      F1000095ED000B9CEF000B9CEF000B9CEF000B9CEF00089BEE000298EF00FFFB
      F300F4F3F200F6F5F500DDDDDD00FEFEFE00FEFEFE00F9F9F900EAEAEA00FCFC
      FC000000000000000000FBFBFA00D7D7D700E4F6FF00E3F2FC00E3F3FC00EAFA
      F700828DE9001E25D3002931D500555EE000DDECE200C6D4DC00DDEDF500E3F3
      FC00E9FAFD00D0DFF800C4D3F500E6F6FC00E3F3FC00E3F3FC00E3F3FC00E3F3
      FC00E3F3FC00E3F3FC00E2F3FC00E3F3FC00E2F3FC00E1F3FC00E1F3FC00E1F2
      FB00DFF1FA00DEF0FA00DDEFF900DAEFFA00D0D4D500F7F6F600000000000000
      0000FDFDFD00E9E9E900F8F8F800FEFEFE0000000000F7F7F700D2D3D200DCDE
      DB00EBF1EA00E0E0E000E0E0E000E0E0E000E1E1E100E1E1E100E0E0E000DEDE
      DE00D7D7D700C9C9C900B1B1B10095959500C2C2C200FFFFFF00FDFDFD00F7F7
      F700F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600FFFF
      FF00D0D0D00081818100AAAAAA00C5C5C500D8D8D800DFDFDF00E1E1E100E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E2E4E400D9CACB00A635
      4000DCDEDE00E9EBEB00F9F9F900FEFEFE000000000000000000FEFEFE00ADAC
      AC00F9F9F900F8F8F700F3F3F300F0F0EF00EEEEED00F4F4F3009F9F9F007E80
      7E00A1A2A1009C9D9C009C9D9C009C9D9C009E9F9E00A5A8A5007D7E7D006060
      600058595800535453004F4F4F00494849004545450043444500444445004648
      46004B4D4B0051515100575957005F605F009A9B9A00A1A2A1009C9E9C009C9D
      9C009C9D9C009C9D9B009D9F9B0084868500C7C7C700F0EFEF00DFDDDD00D3D3
      D30000000000000000000000000000000000FDFDFD00E0E0E000F5F5F500FAF6
      F300D3E8F3000094EE000B9EEF000B9FEF000B9FEF000B9FEF00029BEE003EB3
      F200FFFFFF00FFFFFF00EBF7FD00FFFFFF00FFFFFF000098EE00039BEE00FFFF
      FF00D8EFFC000096ED000095ED00EAF6FD00FFFFFF00009AEE000097EE009DD8
      F800FFFFFF003EB2F2000093ED00F1F9FE00FFFFFF00F4FBFE00FFFFFF00FFFF
      FF005BBEF400009AEE000B9FEF000B9FEF000B9FEF000B9FEF000097EE00A2D6
      F200FFF7F300F5F5F400E3E3E300F8F8F80000000000FAFAFA00EBEBEB00F9F9
      F9000000000000000000FCFCFC00D8D8D800E5F6FD00E3F3FC00E7F7FC00ECFC
      FE000000CA009AA7EC00B7C4F3000309CD00D4E3FB00E2F2F700D7E6EF00DDEC
      F500E2F2FB00E5F5FC00E1F1FB00D5E4F800E3F3FC00E3F3FB00E2F2FB00E2F2
      FB00E2F2FB00E1F2FB00E1F2FB00E1F2FB00E1F2FB00E2F2FB00E2F3FB00E1F3
      FC00E1F2FB00E0F1FA00DFF1FA00DFF3FE00D1D3D300F8F8F800000000000000
      0000F9F9F900EBEBEB00FAFAFA00FEFEFE0000000000F7F7F700C7CBCA00E6E1
      E100C48C9100E4EAE900E1E1E100E2E2E200E2E2E200E1E1E100DCDCDC00D3D3
      D300C0C0C000A0A0A000BCBCBC00FAFAFA00FFFFFF00F8F8F800F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00CACACA0086868600B1B1B100CCCCCC00DBDBDB00E1E1E100E2E2
      E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E2E3E200DFD9DA00EEF9
      F000DEE0DD00ECECEC00FAFAFA00FEFEFE00000000000000000000000000C1C0
      C000F5F5F500FBFBFB00F6F6F500F3F1F200F3F3F300F5F3F300A7A6A6009092
      9200B9BBB900AEB0AE00ADAFAD00ADAFAD00AEAFAE00AEB2AE00B9BCB900BFC0
      BF00BEC1BE00B5B7B4009B9B9C00B1B0B200C5C5C500CFCFCF00C7C7C700B2B3
      B3009D9C9D00B6B6B600C0C1C000C0C0C000B4B5B400AFAFAF00AFB0AF00AEB0
      AE00AFB0AF00AFB0B000B5B7B500999A9900CCCBCA00F2F1F000CAC8C8000000
      000000000000000000000000000000000000F5F5F500E7E7E600F6F5F500FFFA
      F40070C5F200009CEF000BA1F0000BA1F0000BA1F0000BA1F0000099EE00DAF0
      FC00FFFFFF00049EEF000090ED0052BDF400FFFFFF0065C4F600009CEE00FFFF
      FF00D7EFFD000098EE000097EE00E6F5FD00FFFFFF00039EEF000099EE009CD9
      F900FFFFFF003DB4F20040B6F300FFFFFF007ECDF6000090ED000091ED00FFFF
      FF00F0F9FE000097EE000BA1F0000BA1F0000BA1F0000BA1F000029EEF003EB4
      F100FFFBF400F5F5F400EDEDEC00EEEEEE0000000000FBFBFB00EEEEEE00F5F5
      F5000000000000000000FDFDFD00DAD9D900E4F6FD00E6F6FE00E7F7FE00131A
      D1003740D900FCFFFF00FCFFFF00525CDF004B54DC00F9FFFF00E4F4FE00E2F2
      FC00E3F3FD00E3F3FE00E3F4FE00E4F5FE00E3F3FE00E3F3FE00E3F3FE00E2F3
      FE00E2F3FE00E2F3FE00E2F3FE00E2F3FE00E2F3FE00E2F3FE00E2F3FE00E2F3
      FE00E2F3FE00E1F4FE00E1F2FC00E1F5FF00D4D4D500FAFAF900000000000000
      0000F6F6F600EDEDED00FBFBFB000000000000000000F6F8F800C7BFC0009805
      1400C8969B00E5EBEB00E2E2E200E2E2E200E0E0E000DADADA00CCCCCC00B0B0
      B000BABABA00F4F4F400FFFFFF00F9F9F900F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800FFFFFF00C3C3C3008F8F8F00B8B8B800D1D1D100DEDEDE00E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200F3F6E400A59B
      DD00CFCCDA00F0F1EF00FBFBFB0000000000000000000000000000000000C4C3
      C200F5F5F500FDFDFD00F8F8F700F5F6F600F7F7F600EDEBEC00C3C3C3009B9B
      9B00D5D4D500E1E1E100DCDBDC00DDDBDC00DEDCDC00DEDCDD00DDDDDD00DEDD
      DE00DEDDDE00E1E1E000F2F2F200F9FAF900F7F8F700F6F7F600F7F8F700F9F9
      F900F3F4F300E1E1E100DEDEDE00DFDDDD00DEDEDE00DFDEDF00DFDEDF00DEDE
      DF00DFDFDF00E3E3E400CDCECD0098989800D9D8D800F2F2F100CAC9C8000000
      000000000000000000000000000000000000EFEFEF00F0EFEF00F6F5F500FFFC
      F50032B1F10002A0F00009A3F00009A3F00009A3F00009A3F000009FEF005BC1
      F5004EBDF4000096EE000098EE00A0DBF900FFFFFF0077CCF700009EEE00FFFF
      FF00D6EFFD00009AEE000099EE00E6F5FD00FFFFFF00019FEF00009BEE009BD9
      F900FFFFFF0040B7F30005A1F000A4DDF9000095ED000097EE002CB0F200FFFF
      FF00FFFFFF000099EE0009A3F00009A3F00009A3F00009A3F00006A2F00007A1
      F000FFFDF500F6F5F500F6F5F500EBEBEB0000000000FCFCFC00F1F1F100F0F0
      F0000000000000000000FDFDFD00DEDDDD00DEEAE800E0EDEA00E2EEE900909A
      E200E7F4EB00E0EDEA00E1EDEA00E7F4EC00272ED300A9B3E200E8F5EB00DFEB
      EA00DFEBEA00DFEBEA00DFEBEA00DFEBEA00DFEBEA00DFEBEA00DEEBEA00DEEB
      EA00DEEBEA00DEEBEA00DEEBEA00DEEBEA00DEEBEA00DEEBEA00DEEBEA00DEEB
      EA00DEEBEA00DEEBEA00DEEBEA00DEECEA00D6D6D500FBFBFB00000000000000
      0000F1F1F100F1F1F100FCFCFC000000000000000000F6FBFB00B88D92009500
      0D00DACACB00E5E8E700E2E2E200DFDFDF00D5D5D500BEBEBE00BCBCBC00ECEC
      EC00FFFFFF00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900FFFFFF00BDBDBD0097979700BFBFBF00D5D5D500E0E0
      E000E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300ECEEE4009184DB002407
      CD00EDEFE100F2F3F200FCFCFC0000000000000000000000000000000000CBCB
      CA00F8F8F80000000000FEFDFD00FCFBFB00FDFDFC00EEEEED00D6D5D500C2C3
      C200D3D3D200CECDCD00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CCCC
      CB00CCCCCB00CBCBCA00C6C6C500C2C3C100C1C2C000C0C2C000C1C2C100C2C3
      C100C6C6C600CBCBCA00CCCCCC00CCCCCC00CCCECC00CCCDCC00CCCCCC00CDCC
      CC00CECCCC00D1CFCF00D1D1D100C5C5C600EBEAEA00F6F6F600CECCCC000000
      000000000000000000000000000000000000F0F0F000F3F3F300F6F6F600FFFE
      F60020ACF10003A3F00009A5F10009A5F10009A5F10009A5F10009A5F100009C
      EF0018AAF100B5E3FB00FFFFFF00FFFFFF00FFFFFF0007A4F10006A4F000FFFF
      FF00D5EFFC00009CEF00009CEF00E5F5FC00FFFFFF0000A1F000009EEF009ADA
      F900FFFFFF0042BAF40000A0F0000098EF007DCFF800F2FAFE00FFFFFF00FFFF
      FF0076CDF70000A0F00009A5F10009A5F10009A5F10009A5F10007A4F10000A1
      F000FFFEF600F6F6F500F7F7F600EBEBEB0000000000FDFDFD00F5F5F500E9E9
      E9000000000000000000FEFEFE00E3E1E000DFEFF700E4F5FE00E5F5FD00EBFC
      FE00E4F5FE00E3F3FD00E3F3FD00EBFBFF00C1D0F500343CD800E6F7FE00E5F6
      FE00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E2F3FD00E2F3FD00E2F3
      FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3
      FD00E2F3FD00E2F3FD00E2F3FE00E0F4FE00D8D7D600FDFCFC00000000000000
      0000EAEAEA00F4F4F400FDFDFD000000000000000000F3F9F800B0707600DAC3
      C500E7EEEE00E2E2E200DDDDDD00CCCCCC00C0C0C000E7E7E700FFFFFF00FCFC
      FC00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00B8B8B800A0A0A000C7C7C700DADA
      DA00E2E2E200E4E4E400E4E4E400E4E4E400E3E3E400F3F6E500523BD6004932
      CE00F1F4E400F6F6F600FDFDFD0000000000000000000000000000000000F3F3
      F300ECECEC00F2F2F200F2F2F100EFEFEF00EEEEEE00E2E2E100E6E6E600A5A5
      A400FBFAFA00FEFDFD00FDFCFC00FDFCFC00FDFCFC00FDFCFC00FDFCFC00FDFC
      FC00FDFCFC00FDFCFC00FDFCFC00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFD
      FD00FDFCFC00FDFCFC00FDFCFC00FDFCFC00FDFCFC00FDFDFC00FDFDFD00FEFD
      FD00FEFDFD0000000000EAE9E900B3B4B300EEEEEE00F0F0F000ECECEC000000
      000000000000000000000000000000000000F3F3F300F4F4F300F7F7F600FFFE
      F60021B0F10003A5F00009A7F10009A7F10009A7F10009A7F10001A4F00035B7
      F400FFFFFF00FFFFFF00FFFFFF0094D9F90000A0F00000A3F00009A7F000FFFF
      FF00DFF4FD00009DEF00009EEF00E6F6FD00FFFFFF0003A5F00000A0EF009ADB
      F900FFFFFF0042BBF400009CEF00EAF8FD00FFFFFF00FFFFFF00C8EBFC0035B7
      F300009DEF0009A7F10009A7F10009A7F10009A7F10009A7F10006A6F10000A2
      F000FFFEF700F7F6F600F8F8F700EDEDED0000000000FEFEFE00F8F8F800E9E9
      E900FDFDFD000000000000000000E5E4E300DDEBF200E4F5FD00E3F3FC00E2F2
      FC00E3F3FC00E3F3FC00E3F3FC00E2F2FC00F0FFFE00A2AFEE00646FE100F2FF
      FF00E3F3FC00E3F3FC00E2F3FC00E1F3FC00E1F3FC00E2F3FC00E2F3FC00E2F3
      FC00E2F3FC00E2F3FC00E2F3FC00E2F3FC00E2F3FC00E2F3FC00E1F3FC00E1F3
      FC00E1F3FC00E0F3FC00E1F3FC00DEF1FA00DCDAD900FDFDFD0000000000FEFE
      FE00E8E8E800F8F8F800FEFEFE000000000000000000EBEBEB00DDE3DF00F0F5
      EB00E1E1E100D6D6D600C8C8C800E4E4E400FFFFFF00FDFDFD00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00B5B5B500A9A9A900CDCD
      CD00DDDDDD00E3E3E300E5E5E500E4E4E400E4E4E400F1F3E5006450D800E6E9
      DC00E6E6E400F9F9F900FEFEFE00000000000000000000000000000000000000
      0000ECECEC00DDDDDE00DADADA00DADADA00DFDFDF00EDEDED00EFEFEF00AAAA
      A900F4F3F300F7F6F600F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F8F7F700E5E5E400B6B7B600DBDBDB00DBDBDB00000000000000
      000000000000000000000000000000000000F8F9F900F0F0F000F8F7F700FFFD
      F7004EC1F30000A6F10007A9F20007A9F20007A9F20007A9F20000A3F100B7E6
      FB00FFFFFF003EBCF500009AEF0000A5F1008FD8F90000A4F10008A8F100FFFF
      FF00FFFFFF00009BEF00009BEF00F6FBFE00FFFFFF0022B2F400009BEF00A8E1
      FA00FFFFFF0038BAF40026B4F400FFFFFF00B6E6FB00009EF0000098EF0077D0
      F8002DB6F40002A7F10007A9F20007A9F20007A9F20007A9F20002A7F10020B2
      F200FFFFF700F8F7F700F5F4F400F3F3F30000000000FEFEFE00FBFBFB00EEEE
      EE00F2F2F2000000000000000000E8E6E500DCE9F100E4F5FF00E3F3FD00E3F3
      FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00E3F3FD00F2FFFF0095A2ED00929F
      EC00EEFFFF00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3FD00E2F3
      FD00E2F3FD00E2F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3
      FD00E1F3FD00E1F3FD00E1F4FE00DCEEF600DFDDDC00FDFDFD0000000000F2F2
      F200EEEEEE00FBFBFB00FEFEFE000000000000000000ECEDE800CECCD7006451
      D200DCDED100E1E1E200FFFFFF00FEFEFE00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FFFFFF00B4B4B400B1B1
      B100D2D2D200E0E0E000E4E4E400E5E5E500E5E5E500E4E4E500F5FDF100D7DA
      D800ECECEC00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000B9BA
      B900F5F4F400F7F6F600F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F8F7F700E9E9E800C4C5C4000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00ECECEC00F9F9F900FFFB
      F800A1DCF60000A5F10007ABF20007ABF20007ABF20007ABF20000A6F10097DB
      F900FFFFFF0031B9F40000A9F100EBF8FD00FFFFFF0004AAF10006ABF100FFFF
      FF00FFFFFF00AFE4FB0071CFF700FFFFFF00FFFFFF00F4FBFE0056C6F600FFFF
      FF00FFFFFF0018B1F3000BADF200FFFFFF00A9E2FA0000A4F10076D1F800FFFF
      FF0092DAF90000A6F10007ABF20007ABF20007ABF20007ABF20000A7F10070CD
      F400FFFDF800F8F8F800EFEFEF00FAFAFA000000000000000000FDFDFD00F5F5
      F500E8E8E8000000000000000000E8E7E700D7E0DF00DFEDEB00DFEBEA00DFEB
      EA00DEEBEA00DFEBEA00DEEBEA00DEEBEA00DEEBEA00DEECEA00ECFAED009CA6
      DD00AAB6E600E8F5EB00DEECEA00DEECEA00DEECEA00DEECEA00DEECEA00DDEC
      EA00DEECEA00DEECEA00DEECEA00DEEBEA00DEEBEA00DDEBEA00DDEBEA00DDEB
      EA00DDEBEA00DDEBEA00DEECEB00D6E2E200DFDEDE000000000000000000E8E8
      E800F5F5F500FDFDFD00000000000000000000000000F0F2E4002306C8007B6B
      DB00FFFFFF00FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFFFF00B4B4
      B400BBBBBB00D7D7D700E2E2E200E6E6E600E6E6E600ECF9F700CA919700BA8C
      9000F6FBFA00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F100C8C9
      C800F5F4F400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F8F7F700EBEBEB00CDCDCD00FEFEFE0000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00FAFAF900FAF9
      F800FFFFF90000A7F20004ADF30007ADF30007ADF30007ADF30004ADF20000AB
      F200FEFEFE00FFFFFF00FFFFFF00FFFFFF007ED5F80000A7F20000AAF200FFFF
      FF009CDEFA00F1FAFE00FFFFFF00FFFFFF0069CDF700BDE9FB00FFFFFF00FFFF
      FF00C4EBFC0000A6F10000A7F20089D8F900FFFFFF00FFFFFF00FFFFFF00F2FA
      FE0000ABF20004ADF20007ADF30007ADF30007ADF30006ADF30000A4F200ECF4
      F800FDFAF800FAFAF900EEEEEE00000000000000000000000000FEFEFE00FAFA
      FA00ECECEC00F5F5F50000000000E9E8E700D7E2E700E3F5FF00E2F3FD00E2F3
      FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00ECFF
      FF00B4C3F300B9C9F500E7F9FF00E0F3FD00E0F3FD00E0F2FD00E0F2FD00E0F2
      FD00E0F2FD00E0F2FD00E0F2FD00DFF2FD00DFF2FD00DFF2FD00DFF2FD00DFF2
      FD00DFF2FD00DFF2FD00E0F4FF00D6E5EE00E1DFDE0000000000F6F6F600ECEC
      EC00FAFAFA00FEFEFE00000000000000000000000000D6D3E3003719E600D6D0
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFCFC00FFFFFC00FEFE
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00B4B4B400C2C2C200DBDBDB00E4E4E400E9EFEF00CD9CA10098000E00CFC3
      C400FBFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700D2D2
      D200F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F7F5F500F0F0F000D8D8D8000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F8F7F700F9F9
      F900FFFDF9008CD8F60000A9F20005B0F30005B0F30005B0F30005B0F30002AE
      F20000A7F20038C0F50047C4F60004AFF30000A9F20005B0F30000ADF20032BE
      F50002AEF30000A7F1003EC1F60023B9F40000A8F20000A7F20032BEF50033BE
      F50000A8F20005AFF30005B0F30000A9F20012B3F3004BC6F6002ABBF50000A6
      F10003AFF30005B0F30005B0F30005B0F30005B0F30000ABF20055C8F500FFFF
      F900F9F9F900FAF9F900F1F1F10000000000000000000000000000000000FCFC
      FC00F5F5F500E7E7E70000000000ECEAEA00D6E0E500E4F6FF00E2F4FD00E2F3
      FD00E2F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3FD00E1F3
      FD00E7FAFE00CDDEF900C3D4F600E3F6FD00E0F3FD00E0F3FD00E0F3FD00E0F3
      FD00E0F3FD00E0F3FD00E0F3FD00E0F3FD00DFF3FD00DFF3FD00DFF3FD00DFF3
      FD00DFF3FD00E0F3FD00E1F5FF00D5E2E800E3E2E10000000000E8E8E800F4F4
      F400FCFCFC0000000000000000000000000000000000E3E0F000E0DCF700FFFF
      FF00E4B3B800B4283600BA364300D5878F00FFFFFF00FFFFFE00DED9FA00FBFA
      FC00FFFFFD00FDFDFD00FEFFFF00FFFFFF00FFFFFF00FDFFFF00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FFFFFF00B7B7B700C9C9C900DFDFDF00EAF3F200BC6B7300A4273300E1E9
      E800FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E000F7F6F600F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F8F7F700E2E2E2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F1F1F100FBFB
      FB00FAFAFA00FFFFFA001FB9F50000AEF30005B2F40005B2F40005B2F40005B2
      F40004B1F40000AFF30000AFF30002B1F30005B2F40005B2F40005B2F40000B0
      F30003B1F30004B1F40000AFF30000B0F30005B2F40005B2F40000AFF30000AF
      F30005B2F40005B2F40005B2F40005B2F40001B0F30000AFF30000B0F30005B2
      F40005B2F40005B2F40005B2F40005B2F40000B0F30000AFF400FFFFFA00FCFA
      FA00FAFAFA00F3F3F300FCFCFC0000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00F1F1F100F3F2F100D3DFE400DBF5FF00DAF2FE00DAF2
      FE00D9F2FE00D9F2FE00D9F1FD00D9F1FD00D9F1FD00D9F1FD00D9F0FD00D8F1
      FD00D8F0FD00DBF3FD00D6EEFC00CBE2FA00D9F1FD00D8F1FD00D8F1FD00D8F0
      FC00D8F0FC00D8F0FC00D8F0FC00D7F0FC00D7F0FC00D7F0FC00D7F0FC00D7F0
      FC00D7F0FC00D8F0FC00D8F2FF00CFDFE600ECEAEA00F1F1F100EEEEEE00FAFA
      FA00FEFEFE000000000000000000000000000000000000000000F6F8F400ECE8
      E800D69DA200CA818900CD8D9300FCFFFF00F4F2FE006A53F1004225EC003F22
      EC00C2B8F900FFFFFF00F8EEEF00DD9FA500EBC7CA00F7EAEB00FFFFFF00FFFF
      FE00FFFFFF00FFFFFE00FFFFFE00FDFDFD00FDFEFE00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00B9B9B900D0D0D000E5EBEB00C88D9300E3EEEB00EEEF
      EF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F8F7F700E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F8F8
      F700FBFBFA00FEFBFA00FFFFFB0001B3F40000B1F30005B4F30005B4F30005B4
      F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4
      F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4
      F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4F30005B4
      F30005B4F30005B4F30005B4F30000B2F30000ADF300EEF7FA00FFFCFA00FBFA
      FA00FAFAF900F4F4F40000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800E9E9E900F9F8F700B4BDC00070848E00768A93007689
      9300768992007689930076899300768993007689930076899200768993007689
      9300768A9300768A9300778A9300788B93007689930076899300768992007689
      9200758992007588920075889200748791007486900073869000738690007588
      910075899200768A930071868F00A3ADB200F7F6F500E8E8E800F7F7F700FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000FBFFFF00ECF3F200F9F9F900F2F2F300DFDCF100BFB6EE00E5E3
      F000FBFFF600E5C1C500B3223000B2212F00C4545F00FCF4F400FFFFFF00A598
      F6008775F3009E8FF500EEECFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FDFDFD00FFFFFE00FFFFFE00FEFEFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00BDBDBD00D6D6D600F2FAEE00D6D6DA00F7F8
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E5E5E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300FBFBFB00FBFBFB00FFFCFB00FFFFFB0011BAF50000B1F40003B6F50003B6
      F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6
      F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6
      F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6F50003B6
      F50003B6F50003B6F50000B3F40000B3F400EEF7FA00FFFEFB00FBFBFA00FCFC
      FC00F2F2F2000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F5F5F500F1F1F100918F8F002C2A2900373533003735
      3300363433003634330037343300373433003634330036343300373534003634
      3300363332003634330037343300363433003634330036343300373433003633
      3300353332003633320036343300353332003634330035333200363332003432
      300035333200343231002C2A290075747300F3F3F300F4F4F400FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F4F4F400E7E7E7000000000000000000000000000000
      00000000000000000000FCFFFF00F0E7E800F5FFFF00F8FBF300A99CEC00654E
      E6005237E900C3BAF900FFFFFF00F6E3E500BD404D00BE404D00CC6B7500FFFF
      FF00FFFFFF00EFECFD00FFFFFF00FFFFFF00FFFFFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFFFF00FEFEFE00CED0C5009084D6007464D100FFFF
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F300FCFCFC00FCFCFC00FFFDFC00FFFFFC0053CEF70000AFF40000B7
      F40003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8
      F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8
      F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8F50003B8
      F50000B8F40000B1F40030C4F600FFFFFC00FFFEFC00FCFCFB00FDFDFD00F4F4
      F400FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00FCFCFC009D9D9D003B3B3B00464646004545
      4500454545004444440044444400454545004545450045454500444444004444
      4400444444004444440044444400444444004343430044444400444444004343
      4300434343004343430043434300434343004040400044454500444444004343
      430042424200434343003939390083838300FEFEFE00FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFF900F8F9F100F1F5F400D89DA300CF818900C76F7800F5F6F600FFFF
      FF009685F5004225ED004022ED009989F600FFFFFF00FFFFFF00E2ABB100EED0
      D300F8ECED00FFFFFF00FFFFFF00FFFFFF00E9E7FB000F00BF00A49BD8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F4F4F400FDFCFC00FCFCFC00FEFCFB00FFFFFC00CAEFFA0007BC
      F60000B4F50000B9F50002BAF60003BAF60003BAF60003BAF60003BAF60003BA
      F60003BAF60003BAF60003BAF60003BAF60003BAF60003BAF60003BAF60003BA
      F60003BAF60003BAF60003BAF60003BAF60003BAF60002BAF60000B9F50000B5
      F50000B7F500ACE7FA00FFFFFC00FFFDFB00FCFCFB00FDFDFC00F5F5F500FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE0000000000B3B3B300404040004C4C4C004C4C
      4C004C4C4C004D4D4D004C4C4C004C4C4C004C4C4C004C4C4C004B4B4B004A4A
      4B004B4B4B004B4B4B004B4B4B004B4B4B004A4A4A004B4B4B004B4B4B004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004545450042424200434343003F3F
      3F004545450044444400393939009C9C9C0000000000FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00F1F1F100E7E7E700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFEFD00EEEE
      F000D7D1EF00BCB3ED00C7C0ED00FFFFF500F0E3E400BA344200B4233100B931
      3F00F1D1D400FFFFFF00D1CBFC008F7DF4008E7CF6005F48EB00E0E0E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600FCFCFC00FDFDFD00FDFDFD00FFFFFD00FFFF
      FD00ADE8FA001AC3F60000B5F50000B9F50000BBF50001BCF50001BDF50001BD
      F50001BDF50001BDF50001BDF50001BDF50001BDF50001BDF50001BDF50001BD
      F50001BDF50001BDF50001BDF50000BCF50000B9F50000B5F50009BEF60093E1
      FA00FFFFFD00FFFFFD00FDFDFD00FDFDFD00FDFDFD00F6F6F600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C70042424200505050004F4F
      4F004F4F4F004F4F4F004F4F4F004E4E4E004F4F4F004E4E4E004D4E4E004E4E
      4E004E4E4E004E4E4E004D4D4D004E4E4E004E4E4E004E4E4E004D4D4D004C4C
      4C004D4D4D004D4D4D004C4C4C004D4D4D004B4B4B004B4B4B00494949004848
      48004C4C4C004949490041414100ABABAB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E7E7E700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFFFF00F9FFFF00EFE0E100F4F8
      F800F2F8F200BFB8E6005B43E5004E32E9009C8CF800FFFFFC00F3F3F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800F9F9F900FEFDFD00FDFDFD00FDFD
      FC00FFFFFD00FFFFFD00E1F6FC0077DCF90016C4F70000B8F60000B9F60000BB
      F60000BCF60000BCF60000BDF60000BDF60000BDF60000BDF60000BDF60000BC
      F60000BBF60000B9F60000B8F6000AC1F70066D7F900D1F2FB00FFFFFD00FFFF
      FD00FEFDFC00FDFDFD00FEFDFD00FAFAFA00F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADADA005F5F5F00696969006969
      69006767670070707000707070006E6E6E006E6E6E006E6E6E006E6E6E006E6E
      6E006D6D6D006D6D6D006E6E6E006E6D6D006D6D6D006D6D6D006D6D6D006D6D
      6D006D6D6D006C6C6C006D6D6D006D6D6D006D6D6D006D6D6D006E6E6E006666
      660067676700686868005D5D5E00C3C4C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F4F4F400E8E8
      E800EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F2
      F200E9E9E900F8F9F400FFFFFA00FFFFF700F7F9ED00F3F3F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F7F7F700FCFCFC00FEFE
      FE00FEFEFE00FEFEFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00C3EFFC008DE2
      FB005FD8F90040D0F80027CAF80029CAF80029CAF80028CAF80038CEF8005BD6
      F90084E1FA00BAEDFC00FBFDFE00FFFFFE00FFFFFE00FFFFFE00FEFEFE00FEFE
      FE00FEFEFE00FDFDFD00F7F7F700FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EFEFEF00E7E7E700F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E7E7E700EFEF
      EF00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E3
      E300F5F4F400F5F4F400F5F4F400F6F4F400F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00F9F9
      F900FAFAFA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFEFD00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FBFB
      FB00F9F9F900FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500EDEDED00E7E7E700F1F1F100FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F1F1F100E6E6E600EDEDED00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500EDEDED00E6E6E600F1F1F100FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F1F1F100E6E6E600EDEDED00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E300F4F3F300F4F3F300F4F3F300F4F3F300F5F3F300F5F4F400F5F4F400F5F4
      F400F5F4F400F5F4F400F6F4F400F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00FAF9F900FBFBFB00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FBFBFB00FAFAFA00F9F9F900FCFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F4F4F400F7F7F700FAFAFA00FEFEFE0000000000FAFAFA00F7F7F700F4F4
      F400EEEEEE00E8E8E800E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F3F3F300F7F7F700FAFAFA000000000000000000FAFAFA00F7F7F700F4F4
      F400EEEEEE00E8E8E800E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E300F3F1F100F3F2F100F3F2F200F3F2F200F3F2F200F3F2F200F4F2F200F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300F4F3F300F5F4F300F5F4F400F5F4
      F400F5F4F400F5F4F400F5F4F400F6F5F500F6F5F500F6F5F500F6F5F500F6F5
      F500F6F5F500F6F5F500F7F6F600E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FBFBFB00FAFAFA00FAFAFA00FAFA
      FA00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FAFAFA00FAFAFA00F9F9F900FBFBFB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00ECECEC00EDED
      ED00F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EDEDED00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00ECECEC00EDED
      ED00F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E300F1F0F000F2F0F000F2F1F000F2F1F100F2F1F100F2F1F100F2F1F100F3F1
      F100F3F2F100F3F2F200F3F2F200F3F2F200F3F2F200F3F2F200F4F3F200F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300F5F4F300F5F4F400F5F4F400F5F4
      F400F5F4F400F5F4F400F7F6F600E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00F9F9F900F9F9F900F8F8F800F8F8F800F9F9F900F9F9F900FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00FAFAFA00F9F9F900F8F8F800F8F8F800F9F9F900FAFAFA00FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400DEDDDD00DEDDDD00DEDEDD00DEDEDD00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DFDEDE00DFDE
      DE00DFDEDE00DFDEDE00DFDEDE00DFDEDE00DFDEDE00E0DFDE00E0DFDF00E0DF
      DF00E0DFDF00DFDFDF00E1E0E000E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FCFCFC00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FCFCFC00FBFBFB00F9F9F900FAFA
      FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F8F8F800F8F8F800F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FCFCFC00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD00FCFC
      FC00FCFCFC00FDFDFD00FEFEFE00FDFDFD00FBFBFB00F9F9F900F6F6F600F1F1
      F100EEEEEE00EBEBEB00E9E9E900E7E7E700E7E7E700E9E9E900EBEBEB00EDED
      ED00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FAFAFA00F8F8F800F5F5F500F1F1
      F100EEEEEE00EBEBEB00E9E9E900E7E7E700E7E7E700E9E9E900EBEBEB00EEEE
      EE00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F8F8F800F3F3F300EEEEEE00ECEC
      EC00EDEDED00F0F0F000F3F3F300F4F4F400F4F4F400F4F4F400F2F2F200EFEF
      EF00EDEDED00EBEBEB00E8E8E800E7E7E700E7E7E700E9E9E900EBEBEB00EEEE
      EE00F1F1F100F5F5F500F8F8F800FBFBFB00FCFCFC00FDFDFD00FCFCFC00FCFC
      FC00FBFBFB00FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FAFAFA00F8F8F800F5F5F500F1F1
      F100EDEDED00EBEBEB00E9E9E900E7E7E700E7E7E700E9E9E900EBEBEB00EDED
      ED00F1F1F100F5F5F500F8F8F800FAFAFA00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FAFAFA00F1F1F100E6E6
      E600E3E3E300E5E5E500E8E8E800E8E8E800E6E6E600E2E2E200E4E4E400ECEC
      EC00F3F3F300F8F8F800FCFCFC00FEFEFE00FEFEFE00FCFCFC00F7F7F700F3F3
      F300EDEDED00E7E7E700E7E7E700EFEFEF00F5F5F500F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE0000000000FEFEFE0000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E7E7E700E8E8E800EEEE
      EE00F3F3F300F7F7F700FBFBFB00FDFDFD00FDFDFD00FBFBFB00F7F7F700F4F4
      F400EEEEEE00E8E8E800E7E7E700EFEFEF00F4F4F400F9F9F900FCFCFC00FEFE
      FE0000000000000000000000000000000000FEFEFE0000000000FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F9F9F900F1F1F100E6E6E600DCDCDC00D7D7
      D700D6D6D600D9D9D900DBDBDB00DCDCDC00DBDBDB00D8D8D800DBDBDB00E3E3
      E300EBEBEB00F1F1F100F7F7F700FAFAFA00FBFBFB00FAFAFA00F5F5F500F0F0
      F000EAEAEA00E3E3E300E2E2E200E8E8E800EDEDED00EFEFEF00F0F0F000EEEE
      EE00EEEEEE00EEEEEE00F0F0F000F4F4F400F9F9F900FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F9F9F900F5F5F500EFEFEF00E7E7E700E7E7E700EDED
      ED00F3F3F300F7F7F700FBFBFB00FDFDFD00FDFDFD00FBFBFB00F7F7F700F3F3
      F300EDEDED00E8E8E800E7E7E700EFEFEF00F5F5F500F9F9F900FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F3F3F300D7D7D700B9B9
      B900AEAEAE00B2B2B200B4B4B400B7B7B700C7C7C700D8D8D800E6E6E600EFEF
      EF00F7F7F700F9F9F900F7F7F700F9F9F900FCFCFC00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00F0F0F000E6E6E600ECECEC00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F300EEEEEE00EDEDED00EDEDED00EDEDED00EBEB
      EB00E9E9E900E4E4E400DCDCDC00D7D7D700E0E0E000ECECEC00F1F1F100F0F0
      F000F0F0F000EFEFEF00EFEFEF00EFEFEF00EEEEEE00EFEFEF00EFEFEF00EFEF
      EF00F0F0F000F2F2F200EDEDED00E2E2E200D8D8D800DDDDDD00E5E5E500EAEA
      EA00ECECEC00EEEEEE00EFEFEF00EFEFEF00EFEFEF00F3F3F300F9F9F900FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F6F6F600E9E9E900D7D5D500C4BEBE00B8B4
      B400B4B2B200B5B5B500B5B5B500B7B7B700C4C4C400D4D4D400DEDEDE00E3E3
      E300E7E7E700EBEBEB00EEEEEE00F2F2F200F3F3F300F5F5F500F4F4F400F3F3
      F300F2F2F200F0F0F000E8E8E800DADADA00CECECE00D1D1D100D6D6D600D6D6
      D600D7D7D700D8D8D800DEDEDE00E7E7E700F2F2F200F9F9F900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500ECECEC00E5E5E500F0F0F000FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F0F0F000E6E6E600EBEBEB00F5F5F500FAFA
      FA00FDFDFD0000000000FDFDFD00FAFAFA00F8F8F800F8F8F800FAFAFA00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E6E6E600B5B5B5009D9D
      9D008E8E8E007B7B7B0086868600989898009F9F9F00A6A6A600B5B5B500CFCF
      CF00E2E2E200DFDFDF00D8D8D800DADADA00E2E2E200E8E8E800EDEDED00F2F2
      F200F6F6F600F9F9F900FCFCFC00FFFFFF00FFFFFF00F4F4F400E5E5E500EFEF
      EF00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00EFEFEF00DCDCDC00C9C9C900C4C5C400C4C5C400C2C2C200BEBE
      BE00B8B8B800B3B3B300BDBDBD00C8C8C800C6C6C600C5C5C500C4C5C400C3C4
      C400C3C3C300C2C3C300C2C3C300C2C3C300C2C3C300C3C3C300C3C4C400C4C4
      C400C5C5C500C5C6C600C6C7C700C8C8C800C9C9C900BFBFBF00B4B4B400BABA
      BA00C0C1C100C4C5C500C7C7C700C7C8C800CACACA00D8D8D800ECECEC00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F2F2F200E0DFDF00C0C4C500A6D9DF00A0BB
      BE00939C9C008C8584009B949300ABA7A600B2AFAF00B8B6B600BEBEBE00C5C5
      C500CCCCCC00D2D2D200D8D8D800DCDCDC00E0E0E000E1E1E100E0E0E000DEDE
      DE00DADADA00D7D7D700D3D3D300D0D0D000CCCCCC00BDBDBD00AEAEAE00B0B0
      B000B3B2B300B9B7B900C5C2C400D8D6D700E9E9E900F6F6F600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00E5E5E500F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E5E5E500EDED
      ED00F3F3F300EFEFEF00E6E6E600DFDDDC00DCD9D800E4E1E000F2F0EF00FAFA
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900D7D7D700B2B2B200C5C5
      C500C5C5C500CACACA00BEBEBE00B0B0B000A6A6A6009C9C9C009B9B9B00B1B1
      B100CBCBCB00BABABA00A5A5A500A5A5A500AFAFAF00B9B9B900C2C2C200CACA
      CA00D3D3D300DADADA00E1E1E100E7E7E700EDEDED00F4F4F400FCFCFC00ECEC
      EC00E6E6E600F3F3F300FAFAFA00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E3E3E300888687008A8889008A88890089888800898788008987
      8800878686008C8A8B008D8B8C008F8D8E0092919100979495009C999A00A09E
      9E00A5A1A300A9A5A600ACA9A900AEAAAA00ADA9A900ABA7A700A7A4A300A39F
      9F009E9B9B00999797009592920091908F008E8C8C008E8C8C008E8D8C008A88
      87008B8988008C8A89008C8B8A008D8B8A008D8B8B008C8A8A00CECECE00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00EEEEEE00D7D4D400AFC6C800A4F2FB00A7F0
      F900A8F4FD00A7F4FC00A2DDE4009EC7CB009CB2B5009B9FA0009F999900A7A1
      A100ADA9A900B4B2B100BAB9B900BFBFBF00C3C3C300C4C4C400C3C3C300C0C0
      C000BBBBBB00B7B6B700B1AFB000AEAAAC00A9A4A700A59FA300A19A9F00918B
      8F008D908E009CACA200A7C8B300BFCBC300E1DFE000F2F2F200FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F4F4F400E7E7
      E700EDEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00FCFCFC00FCFCFC00FEFEFE00FEFEFE00E4E4
      E400CECDCC00C4BFBD00B1ABAA00939CA1008EA4AE009EB6C000AFC4CE00FDFB
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F2F2F200C8C8C800B6B6B600C3C3
      C300C2C2C200C2C2C200C3C3C300C4C4C400C5C5C500C5C5C500C7C7C700BEBE
      BE00C5C5C500B2B2B200ABABAB009D9D9D00929292008B8B8B008C8C8C009595
      95009C9C9C00A6A6A600AFAFAF00B9B9B900C2C2C200D4D4D400E6E6E600EFEF
      EF00E3E3E300D2D2D200E1E1E100EDEDED00F4F4F400F9F9F900FBFBFB00FDFD
      FD00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000F7F7F700B8B7B700838182008A8889008B898A008B898A008B8A8B008C8A
      8B008C8A8A008C898A008E8C8C0091909000989596009E9B9B00A5A2A200ABA7
      A600B1ADAC00B7B3B200BCB7B600C0BAB900BDB8B700B7B3B100B1ADAC00ABA7
      A600A4A09F009D9A990096939200908E8D008B88870088858300878582008785
      8200878481008683800085827F0085827F0084817F007F7C7C009E9C9C00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800E8E8E800CDC8C800A6CED300A5EEF700A5EB
      F300A5EAF200A4E9F100A2E9F100A1E9F0009FE7EF009CE6EE0095D7DF008FC0
      C4008DACB000919FA1009B9C9D00A5A0A100A6A1A400A49FA300A39CA0009F97
      9C009A969900989E9B0099AB9F009AB9A4009BC7AA009DD7B100A0E7B900A4F4
      C000A7FBC400A5F7C100A2F8C000ACCEB800D9D5D700EEEEEE00FBFBFB000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE0000000000FDFDFD00FAFAFA00F3F3F300E7E7E700F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FAFAFA00F4F4
      F400EEEEEE00E8E8E800E4E4E400E2E1E100E2E1E100E4E4E400E1E1E100D5D2
      D100A6A4A500709BAC0088C7DB00ABE6F500BCF1FD0078B9D100DDE1E400FEFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00E7E7E700B5B5B500BEBEBE00C4C4
      C400C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C1C1
      C100D9D9D900BCBCBC00C6C6C600C7C7C700C9C9C900C9C9C900C1C1C100B3B3
      B300A7A7A7009D9D9D00939393008787870090909000AEAEAE00CDCDCD00D0D0
      D000C0C0C000BABABA00B0B0B000C1C1C100CFCFCF00DADADA00E2E2E200EBEB
      EB00F4F4F400FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000F2F2F200B4B3B300ADAAAA00A7A4A400A29E9E009E9A9A009B9897009996
      95009A9695009A9794009A979600989593009692900093908E00969290009D98
      9600A49E9D00AAA4A300AFAAA700B5AFAD00B8B1AF00BAB4B200BDB7B500C0BA
      B700C2BCB900C3BDBB00C6C0BE00C9C4C100CEC7C400D1CCC900D7D2CE00DDD7
      D300E2DDDA00E7E3E100EBE8E700EEEDED00EEEDED00EFEEEE00DBDADA00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F5F5F500E1E1E100C2BCBB0091C5CC0089C5CD0086BE
      C50082B9C0007EB2B90078ABB20073A2AA006D9AA20067919900618A92005B83
      8C00547A83005078800056838200638E850080A7920097C3A5009CD8B100A0E9
      B900A4F5C000A5F8C200A5F6C100A4F5C000A4F3C000A4F2BF00A4F0BE00A4EF
      BE00A3EEBD00A3EEBD00A3F2BE00A4D2B400D0CBCE00EAEAEA00FAFAFA00FEFE
      FE0000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F3F3F300EBEBEB00E7E7E700E2E2E200DCDCDC00F7F7F700FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F7F7F700EBEBEB00DFDEDD00D1CD
      CC00C3BDBB00BBB4B200ADA7A500A29FA000A19F9F00ABA6A400B3A9A6008697
      9F0089CDE200C3F4FE00BBEEF900B0EBF70086C4D900E3DCDA00FFFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FBFBFB00F1F1F100D6D6D600BABABA00C8C8C800C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C3C3C300BFBFBF00D1D1
      D100E5E5E500C3C3C300C5C5C500C5C5C500C5C5C500C5C5C500C6C6C600C7C7
      C700C8C8C800C9C9C900CACACA00CECECE00C1C1C100B8B8B800BDBDBD00BABA
      BA00A2A2A2008C8C8C008D8D8D008686860094949400A2A2A200AFAFAF00C1C1
      C100DADADA00F3F3F300FEFEFE00000000000000000000000000000000000000
      0000EDEDED00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00E8E7
      E600D3D2CF00BDBBB8009F9D990086827C00857F7A00928B8700A49D9900B2AB
      A700BBB5AF00C2BAB500C7BFBB00CDC5C000D2CBC500D8D1CB00DFD7D100E6DE
      D800EBE5E000F1EBE900F7F2F100FDF8F900FFFFFF00FFFFFF00EBEBEB00EDED
      ED00000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EFEFEF00D5D5D500B6B0B000538A94003A5E67003354
      5C002F4F57002C4A52002B4A4F0030515000375C55003E665900467260004F80
      67005B927100639E7900639D7900639D790068A480007DBD950096DEAF00A2ED
      BD00A4EFBE00A3EEBD00A3EEBD00A3EEBD00A3EEBD00A3EEBD00A3EEBD00A3EE
      BD00A3EEBD00A3EEBD00A3F0BE009FDAB300C5BFC300E4E4E400F8F8F800FEFE
      FE0000000000000000000000000000000000000000000000000000000000FDFD
      FD00F6F6F600E8E8F000CDCEDB00B8B8C600B0B0BC00CBCCD400D8D8DD00E4E5
      E500F2F2F200FBFBFB00FEFEFE00000000000000000000000000000000000000
      000000000000FEFEFE00F9F9F900EBEBEB00D8D6D500C3BCB9009B9FA2007D9E
      AC007DB0C20082C0D4008DD2E60098DCF0009ADCF0008FD3E80084C0D300A4E1
      F100BAEEF900ADE7F400A6E4F200A6E8F7008FAFBC00ECE8E600FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F5F5F500E3E3E300E0E0E000B4B4B400C9C9C900C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C8C8C800CACACA00F5F5F500FDFD
      FD00F7F7F700D2D2D200C4C4C400C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C6C6C600C7C7C700C9C9C900C7C7C700C0C0
      C000CBCBCB00CDCDCD00C3C3C300B5B5B500A6A6A6009C9C9C00919191009595
      9500BEBEBE00E9E9E900FDFDFD00000000000000000000000000000000000000
      0000EFEFEF00E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00FEF9F600FFFEFB00FFFDFC00DDDCD800A6A29B007D7871008B83
      7E00A59D9700B5ACA500BDB4AD00C4BBB300CBC1B900D0C7BF00D7CEC500DDD4
      CB00E1D9D200E6DFDB00ECE6E300F1ECEB00F7F2F300FFFDFE00E5E5E500F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F9F9F900E6E6E600C8C7C700A5AEB200DED9BA00D3CDB000D2CB
      AF00D2CCAF00DAD6B400DEDDB800DEDDB900DDDAB700DCD9B600D9D5B300D4D1
      AF00CEC9A800C7C2A200C0BB9B00B7B29100A8A68600779577006FAC880095D9
      AC00A1EBBB00A3EEBD00A2EDBC00A2EDBC00A2EDBC00A2EDBC00A2EDBC00A2ED
      BC00A2EDBC00A2EDBC00A2EFBD009EE6B700B9B1B600DCDCDC00F4F4F400FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000F1F1F400948F420090890A00918A16008F892300908B440098967C00B3B4
      C200CDCED600E4E4E500F5F5F500FEFEFE000000000000000000000000000000
      0000FDFDFD00F4F4F400E1E0E000C8C0BD008D9BA30078B0C4009BDDF000B4EF
      FC00B3EEFA00ADEAF700AAE7F500A8E6F400A8E6F400A9E7F500AEEAF700AAE7
      F400A7E5F300A7E5F300A6E5F300A8E9F800879EA900D8D4D300F5F5F500FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800E8E8E800F0F0F000D2D2D200AFAFAF00CBCBCB00C8C8
      C800C8C8C800C8C8C800C8C8C800C9C9C900C9C9C900BDBDBD00E6E6E600F3F3
      F300F6F6F600E3E3E300B9B9B900CACACA00C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C9C9C900C7C7C700C3C3C300E5E5E500CBCB
      CB00C8C8C800C8C8C800C9C9C900CBCBCB00CCCCCC00CDCDCD00CFCFCF00CDCD
      CD00BABABA00E4E4E400FDFDFD00000000000000000000000000000000000000
      0000F0F0F000E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFAF900F5F0EC00F3EDE800FDF9F500F3F0EB00B6B3
      AA008A837A0090878000AAA09800B7ADA400C0B6AC00C8BEB300CFC5BA00D6CB
      C000DAD1C700DFD7CF00E4DDD800E9E3E100EFEBE900F8F4F400E5E3E300F1F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F3F3F300D7D7D700D4D2D2008DA7AE00FFF8D000FFF3CF00FFF4
      D000FFF4D000FFF3CF00FFF2CF00FFF2CF00FFF2CE00FDF0CD00FCEECB00F8EB
      C700F2E5C100ECDEBB00E4D7B300DED0AD00D7C9A600D3BE9B00869B7E006CAA
      860094D8AC00A0EBBA00A2EDBC00A2EDBC00A2EDBC00A2EDBC00A2EDBC00A2ED
      BC00A2EDBC00A2EDBC00A2EDBC009EF0BB00C0BABE00CFCECE00EEEEEE00FCFC
      FC0000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFC00F2F3FF009C984900B3AC1600AEA60B00A79F0400A69F0000948D
      0000908C4F00B6B7C700D8D8DC00EBEBEB00EFEFEF00EDEDED00EBEBEB00EBEB
      EB00E7E7E700D7D4D300AEABAB0073A7BC00A5E6F600B5EFFA00A8E6F400A6E4
      F200A6E4F200A6E4F200A6E4F200A6E5F300A6E5F300A6E4F200A6E4F200A6E4
      F200A6E4F200A6E4F200A6E4F200AFECF90076A9BD00AEA5A200DDDDDC00F7F7
      F700FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00EFEFEF00EEEEEE00BBBBBB00BDBDBD00CCCCCC00CACA
      CA00CACACA00CACACA00CACACA00CBCBCB00C3C3C3009D9D9D00BABABA00CACA
      CA00D1D1D100C2C2C200B6B6B600CCCCCC00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CBCBCB00C6C6C600DADADA00DCDCDC00FFFFFF00C9C9
      C900C9C9C900CBCBCB00CACACA00CACACA00CACACA00CACACA00CACACA00CBCB
      CB00C0C0C000E9E9E900FDFDFD00000000000000000000000000000000000000
      0000F0F0F000E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFCFC00F5F0EC00EDE7E000F2EC
      E600EFEAE300C5C0B4008D887C008F877D00A59C9000B3A99D00BFB4A800C7BD
      B100CFC4B900D5CCC300DCD3CC00E2DBD600E8E2DF00F1EDEB00DDDCDC00F2F2
      F200FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F900E7E7E700DBDBDB00D5D1D0007EA9B200FFF5CD00FBEFCC00FBEF
      CC00FBEFCC00FBEFCC00FBEFCC00FBEFCC00FAEECB00FAEECB00F8ECC900F5E9
      C600F1E5C200ECE0BD00E6DAB700E0D4B100DBCFAC00D4C8A500D4C09C008A9F
      80006BA8840093D7AB009FEAB900A1ECBB00A1ECBB00A0EBBA00A0EBBA00A0EB
      BA00A0EBBA00A0EBBA00A0EBBA009DF0BA00BEC2BF00D3D2D300E2E2E200F8F8
      F800FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EEEEEE00E8E9FC009A953A00B4AC1700ABA209009E960000A39C
      0300AAA2040090880000A1A09A00BFC0CC00C4C4CF00C0C1CD00BCBDCA00BEBE
      CA00BDBABF00949B9F0080C4DA00B8F1FC00A7E6F400A6E4F200A6E4F200A6E4
      F200A6E4F200A6E4F200A6E4F200A6E4F200A6E4F200A6E4F200A6E4F200A6E4
      F200A6E4F200A7E5F300A6E4F200A7E5F300B5EFFC006FA9BF00B3ACAA00E3E3
      E300FAFAFA00000000000000000000000000000000000000000000000000FCFC
      FC00F4F4F400E7E7E700FDFDFD00E0E0E000AFAFAF00C8C8C800CDCDCD00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CECECE00C6C6C6007D7D7D00898989009494
      94009B9B9B0094949400B8B8B800CFCFCF00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CDCDCD00C4C4C400EAEAEA00FEFEFE00FDFDFD00F9F9
      F900C9C9C900C8C8C800CDCDCD00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CDCD
      CD00C5C5C500EDEDED000000000000000000000000000000000000000000FDFD
      FD00EEEEEE00DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00F5F0
      ED00EBE3DC00EAE2DA00EBE5DA00B4B0A500867F72008D847A00998F8400A99E
      9300B7ACA000C3B9AE00CEC4BB00D7CFC800E0D9D400EBE5E200D5D4D400F0F0
      F000FDFDFD00000000000000000000000000000000000000000000000000FDFD
      FD00F3F3F300DEDEDE00E7E7E700CDC7C60073B1BD00FFF3CC00FAEECB00F9ED
      CA00FAEECB00FAEECB00FAEECB00FAEECB00FAEECB00F9EDCA00F8ECC900F6EA
      C700F4E8C500F0E4C100ECE0BD00E6DAB700E1D5B200DCD0AD00D0C4A100E0CC
      A900879D7E006AA8840092D7A9009EE8B800A0EBBA00A0EBBA00A0EBBA00A0EB
      BA00A0EBBA00A0EBBA00A0EBBA009DEFB900B3C5BA00DFDCDE00DADADA00F2F2
      F200FDFDFD00000000000000000000000000000000000000000000000000FCFC
      FC00F5F5F500E8E8E800FCFCFE00CDCDD2009B930000AFA70E00A8A008009F97
      00009E960000A8A007009A9200008C884C008F8A3200918B20008F891800837B
      11005E5F1F008CD2EF00B4EEFA00A5E4F200A6E4F200A6E4F200A5E4F200A6E5
      F300A9E6F400ABE7F500ACE8F600AEE8F600AEE8F600ADE8F600ABE8F500A9E6
      F400A6E5F300A5E4F200A6E4F200A6E4F200A6E5F300B6F1FD006FA6BB00C7BF
      BC00EEEEEE00FEFEFE0000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F7F7F700F6F6F600D2D2D200AFAFAF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00D0D0D000D6D6D600C8C8C800B8B8
      B800AAAAAA009B9B9B00CECECE00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00D1D1D100B8B8B800CCCCCC00DEDEDE00E4E4E400DFDF
      DF00B8B8B800CECECE00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00C7C7C700F1F1F10000000000000000000000000000000000FEFEFE00FAFA
      FA00E8E8E800DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F3F100EAE3DB00EDE5DD00D7D3CC0097928300908B7F00867E
      74008B8178009E948A00B0A79D00C2BAB100D2CAC300E0DAD400D7D5D400EAEA
      EA00FAFAFA00FEFEFE0000000000000000000000000000000000FEFEFE00F9F9
      F900E9E9E900EAEAEA00E0E0E000C1BFBE0071BDCA00FFF2CB00FAEECB00FAEE
      CB00FAEECB00FAEECB00FAEECB00FAEECB00FAEECB00FAEECB00F9EDCA00F8EC
      C900F6EAC700F4E8C500F0E4C100ECE0BD00E7DBB800E2D6B300DCD0AD00CDC1
      9E00F1DDBA00849B7C0069A6830091D5A9009EE8B7009FEAB9009FEAB9009FEA
      B9009FEAB9009FEAB9009FEAB9009DEDB900ADCBB700DAD6D900E6E6E600E8E8
      E800FAFAFA00FEFEFE0000000000000000000000000000000000FEFEFE00F9F9
      F900ECECEC00F7F7F700FBFBFB00DEDFF000928B0800B0A80C00A79F0700A39B
      03009F9700009E960000A49C0500AAA20800A8A10600A59E040099910000766A
      00007DC1DA00B5EFFC00A5E4F200A5E4F200A7E5F300ACE8F500B1EBF800B3EC
      F900B3ECF900B4ECF900B4ECF900B5ECF900B4ECF900B5ECF900B5ECF900B4EC
      F900B4ECF900B1EBF800ACE8F500A6E4F300A5E4F200A7E5F300AAEBFA00829E
      AB00DEDAD800F9F9F90000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E800FFFFFF00EDEDED00BDBDBD00B9B9B900D5D5D500D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D3D3D300D4D4
      D400D5D5D500D6D6D600D2D2D200D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D8D8D8009494940099999900A8A8A800B1B1B100B1B1
      B1009F9F9F00D9D9D900D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D2D2
      D200C9C9C900F4F4F40000000000000000000000000000000000FDFDFD00F5F5
      F500E6E6E600E7E8E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBF7F600F2ECE600E5E2DC00A8A39400A49E
      9100918D8100817B7100857D74009B938A00B3ABA400CAC2BB00E0DFDE00E8E9
      E900F5F5F500FCFCFC0000000000000000000000000000000000FDFDFD00F5F5
      F500E5E5E500F2F2F200DAD8D800B4C2C40071BFCD00FFF1C900F9EDCA00F9ED
      CA00F9EDCA00F9EDCA00F9EDCA00F9EDCA00F9EDCA00F9EDCA00F9EDCA00F8EC
      C900F8ECC900F6EAC700F4E8C500F1E5C200EDE1BE00E9DDBA00E4D8B500D5C9
      A600E6DBB800F0DBB800869A7C0067A5820090D4A8009DE7B7009EEAB8009EE9
      B8009EE9B8009EE9B8009EE9B8009DECB800A4D0B400D6D1D400EEEEEE00E3E3
      E300F5F5F500FDFDFD0000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E800FFFFFF00F0F0F000CECFE100938B0900B1A90D00A8A00800A39B
      0300A09800009F9700009F9700009F9700009F9700009B930000897C0000618B
      7700B7F3FF00A5E4F200A7E5F300AEE9F600B2ECF900B3ECF900B4ECF900B5EC
      F900B7ECF900B7EDF800B8EDF800B8EDF800B9EDF800B8EDF800B8EDF800B7ED
      F800B7ECF900B6ECF900B4ECF900B4ECF900ADE9F600A5E4F200AEEAF70080C4
      DA00C4BDBC00F2F2F200000000000000000000000000FEFEFE00FBFBFB00EEEE
      EE00F3F3F300FCFCFC00E1E1E100B0B0B000C7C7C700D5D5D500D3D3D400DEDA
      D400E5DDD100E0D9D100DBD7D200D7D5D200D4D4D300D3D3D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D5D5D500C8C8C800AEAEAE00A1A1A100949494008282
      8200A0A0A000D9D9D900D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300D7D7
      D700C5C5C500F6F6F600000000000000000000000000FEFEFE00FBFBFB00EFEF
      EF00F2F2F200E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00EFECE900B6B1
      A500B1ACA100A49F9300928E8300827D730087817900A19A9300DEDDDC00F5F5
      F500EFEFEF00FBFBFB00FEFEFE000000000000000000FEFEFE00FBFBFB00EEEE
      EE00EDEDED00EDEDED00D5D1D100A8CACE0072BECB00FFF0C900F9EDC900F8EC
      C900F9EDCA00F8ECC900F8ECC900F9EDCA00F8ECC900F8ECC900F9EDCA00F9ED
      CA00F8ECC900F7EBC800F6EAC700F4E8C500F1E5C200EEE2BF00EADEBB00E2D6
      B300E1D5B300F1E5C200EEDAB700889B7D0067A481008FD4A7009CE6B5009DE8
      B7009DE8B7009DE8B7009DE8B7009CEAB7009ED7B200D2CCD000EAEAEA00EDED
      ED00EEEEEE00FBFBFB00FEFEFE000000000000000000FEFEFE00FBFBFB00EFEF
      EF00F0F0F000F1F1F100D4D4DC009D9D9B00A39B0000AFA70D00A29A02009F97
      00009F970000A0980000A0980000A09800009F97000098900000726B000092DA
      FD00AAE7F500AAE7F500B2EBF800B3ECF900B4ECF900B7ECF900B8EDF800BAED
      F800BBEDF800BCEEF900BDEEF900BDEEF900BDEEF900BDEEF900BDEEF900BCEE
      F900BBEDF800BAEDF800B8EDF800B6ECF900B5ECF900B2EBF800A7E5F300A7E8
      F70091A7B200EBE8E700FEFEFE000000000000000000FEFEFE00F8F8F800E8E8
      E800FEFEFE00F6F6F600D1D1D100B5B5B500CBCBCB00D7D7D700DFDBD6007A9D
      D0003680ED0072A6ED00A0C0E700C8D4E000E7E1D700EAE0D300E3DCD300E0DB
      D300DEDAD400DAD8D500D7D6D500D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D7D7D700DADADA00DBDBDB00DDDDDD00DCDC
      DC00DADADA00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D2D2
      D200C9C9C900F6F6F600000000000000000000000000FEFEFE00F8F8F800E8E8
      E800FEFEFE00E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0EE
      EC00BFBBB100BDB9AE00B1ADA100A49F9200928D80007C766A00BBB9B600FFFF
      FF00E8E8E800F8F8F800FEFEFE000000000000000000FEFEFE00F8F8F800E7E7
      E700F6F6F600E8E8E800D0C9C8009CD4DA0072BECA00FFF0C900F9EDC900F8EC
      C900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8EC
      C900F8ECC900F8ECC900F7EBC800F5E9C600F4E8C500F2E6C300EFE3C000EADE
      BB00DED3B100FFF3D000EFE3C000EEDAB600869A7C0066A480008FD3A6009AE5
      B4009CE7B6009CE7B6009CE7B6009BE8B60099DFB100CDC5CA00E7E7E700F6F6
      F600E7E7E700F8F8F800FEFEFE000000000000000000FEFEFE00F9F9F900E7E7
      E700F0F0F000D4D5DE009C9A86009D940000B2AA14009E9600009F9700009F97
      0000A0980000A0980000A0980000A09800009F9700009389000064804C00AFEF
      FF00ABE8F500B2ECF800B3EBF900B6ECF900B8EDF800BAEDF800BCEEF900BEEE
      F900BFEEFA00C0EFFA00C1EFFA00C2EFFA00C2EFFA00C2EFFA00C1EFFA00C0EF
      FA00BFEEFA00BEEEF900BCEEF900BAEDF800B8EDF800B6ECF900B4ECF900ACEB
      F80084AEBE00E5E0DE00FDFDFD000000000000000000FDFDFD00F5F5F500EAEA
      EA00FFFFFF00EEEEEE00BCBCBC00C2C2C200CFCFCF00DADADA00DBDAD800D8D8
      D9000057EB001476FB00136FEE00126AE400176FE6003784E90067A3F00086B6
      F3009CBAE700BFCBDE00DEDCDA00DADAD900D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D9D9
      D900D9D9D900D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D9D9D900D0D0
      D000D3D3D300F3F3F300FDFDFD000000000000000000FDFDFD00F5F5F500EAEA
      EA00FFFFFF00E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EAE9E500C9C5BC00C7C2B900BBB7AC00AAA49700B9B3A800DAD8D600FFFF
      FF00EBEBEB00F4F4F400FDFDFD000000000000000000FDFDFD00F4F4F400E9E9
      E900F7F7F700E3E2E200C8C0BF0094E0EA0072BCC900FFEFC800F8ECC800F7EB
      C800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F7EB
      C800F7EBC800F8ECC900F7EBC800F7EBC800F6EAC700F5E9C600F3E7C400F1E5
      C200DFD3B000FFFBE700FCF0CB00EFE3BF00EFDBB800859A7B0065A380008DD2
      A5009AE4B3009BE6B5009BE6B5009BE6B50095E5B000C6C0C400E3E3E300F8F8
      F800E9E9E900F4F4F400FCFCFC000000000000000000FDFDFD00F5F5F500E1E1
      E100DCDCE3009D9B8600A2990000AEA60D009D9500009F970000A0980000A098
      0000A0980000A0980000A0980000A09800009F970000908300006F9D8E00B2F0
      FF00B3ECF900B4EBF900B7EDF900B9EDF800BCEEF800BEEEF900C0EFFA00C2EF
      FA00C4F0F900C5F0F900C6F0F900C7F0F900C7F0F900C7F0F900C6F0F900C5F0
      F900C4F0F900C2EFFA00C0EFFA00BEEEF900BCEEF900B9EDF800B7EDF900B5EF
      FC0081B5C600E1DBD900FCFCFC000000000000000000FCFCFC00F1F1F100F1F1
      F100FCFCFC00E2E2E200B0B0B000CFCFCF00D3D3D300DBDBDB00D8D8D800F7EE
      E400679EE900005ADC000E5CCF000E5BD1000D5BD3000C5AD4000655D1000D60
      DE001975FD00005EF900195FD600E4DED300DBDBDB00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DBDBDB00D0D0
      D000DFDFDF00F1F1F100FCFCFC000000000000000000FCFCFC00F1F1F100F0F0
      F000FFFFFF00E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E1DFD900CECBC200C9C4BA00CECBC300FFFFFF00EAE9E900FFFF
      FF00F0F0F000F0F0F000FCFCFC000000000000000000FBFBFB00F1F1F100EDED
      ED00F3F3F300DEDDDD00BCBBBB0091EBF60070BCC800FFEFC800F8ECC900F8EC
      C900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8ECC900F8EC
      C900F8ECC900F8ECC900F8ECC900F8ECC900F6EAC700F7EBC800F5E9C600F4E8
      C500E4D7B100FFFCF400FFF9E200FCF0CC00EFE3BF00EEDAB70085997B0065A2
      7F008DD2A40098E2B2009AE5B4009AE5B40096EAB300BCBDBC00E1E0E000F5F5
      F500EEEEEE00F1F1F100FBFBFB000000000000000000FDFDFD00EDEDED00D7D8
      DA00AFAFAE009A920000AAA20A009D9500009F970000A0980000A0980000A098
      0000A0980000A0980000A0980000A09800009F9700008F81000074ABAC00B7F2
      FF00B4ECF900B7EDF900BAEDF800BCEEF900C0EFFA00C2EFFA00C5F0F900C7F0
      F900C9F1FA00CAF1FA00CBF2FA00CCF2FB00CCF2FB00CCF2FB00CBF1FA00CAF1
      FA00C8F1FA00C7F1FA00C5F0F900C2EFFA00BFEFFA00BDEEF900B9EDF800BCF2
      FE0080B4C600E1DCDA00FBFBFB000000000000000000FBFBFB00EEEEEE00F6F6
      F600F7F7F700D2D2D200B8B8B800CBCBCB00DCDCDC00DEDEDE00D9D9D900E8E8
      E800FFFFFF004A8AE2000D6AE5001D7CF7001E7CF8001872EE001263DC00105D
      D400035BE2001766E300E0DCD500DEDDDC00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DEDEDE00D0D0
      D000E9E9E900EEEEEE00FBFBFB000000000000000000FBFBFB00EEEEEE00F6F6
      F600FFFFFF00E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D9D6CF00D9D6CF00FFFFFF00FFFFFF00E9E9E900FFFF
      FF00F6F6F600EDEDED00FBFBFB000000000000000000FBFBFB00EDEDED00F1F1
      F100EFEFEF00DAD7D600AEC3C50090E9F5006FBCC800FFEEC700F7EBC800F6EA
      C700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EA
      C700F6EAC700F6EAC700F6EAC700F6EAC700F7EBC800F6EAC700F6EAC700F5E9
      C600E9DCB600FFFEF900FEFCF500FEF7E200FEF3D100F3E7C400F0DDB9008499
      7B0064A17E008BD0A30097E2B10099E4B30095E7B200B3C2B900DEDCDD00F2F2
      F200F3F3F300EEEEEE00FAFAFA000000000000000000FAFAFA00E2E2E200C5C6
      D6008F880D00ADA50A009D950000A0980000A0980000A0980000A09800009F97
      00009F9700009F9700009F9700009F970000A09701009285000075A9A600BBF3
      FF00B7EDF900BAEDF800BDEEF900C0EFFA00C3EFF900C6F0F900C9F1FA00CBF2
      FB00CDF2FB00CFF3FA00D0F3FA00D1F3FA00D1F3FA00D1F3FA00D0F3FA00CFF3
      FB00CDF2FB00CBF2FB00C9F1FA00C6F0F900C3F0F900C0EFFA00BDEEF900BEF3
      FE0089B4C400E4DFDE00FBFBFB000000000000000000FAFAFA00EBEBEB00F9F9
      F900EEEEEE00BDBDBD00C8C8C800CCCCCC00E2E2E200E0E0E000D9D9D900F0EF
      EE00FFFFFF00257AE7000E74F2001779F4001777F4001473F100116AE7001062
      D90070A1EA00FFFFF600D5D3D100E1E1E100E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E1E1E100D2D2
      D200F1F1F100ECECEC00FAFAFA000000000000000000FAFAFA00EBEBEB00F9F9
      F900FFFFFF00ECECEC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00FFFF
      FF00FAFAFA00EBEBEB00FAFAFA00FEFEFE0000000000FAFAFA00EBEBEB00F3F3
      F300EBEBEB00D5CFCF00A2CCD10091E7F2006DBBC800FFEEC600F7EBC800F7EB
      C800F6EAC700F7EBC800F6EAC700F7EBC800F7EBC800F7EBC800F7EBC800F7EB
      C800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F7EBC800F6EA
      C700F3E7C400EADDB800E3D6B000E0D3AE00D9CDAA00D8CCAB00DBCFAD00ECD8
      B600869B7C0063A17D008ACFA20097E0B00095E6B100AAC7B500DAD7D900EFEF
      EF00F6F6F600EBEBEB00F9F9F9000000000000000000F6F6F600D4D5DB009D9A
      7300A9A100009E9600009F970000A0980000A09800009F9700009F9700009F97
      0000A1990200A39B0900A59E0F00A7A01400A8A015009F930700719B7F00BDF5
      FF00B9EDF800BDEEF900C0EFFA00C4F0F900C7F1F900CAF2FB00CEF2FB00D0F3
      FA00D3F3FA00D5F4FB00D6F4FB00D7F4FB00D7F4FB00D7F4FB00D6F4FB00D4F4
      FB00D3F3FA00D0F3FA00CEF2FB00CAF1FA00C7F1F900C4F0F900C1EFFA00B6ED
      FB00A4BBC500E8E5E400FAFAFA00FEFEFE0000000000F9F9F900EAEAEA00FAFA
      FA00E3E3E300B0B0B000D7D7D700D0D0D000E5E5E500E3E3E300DADADA00FFFF
      F7004988D9000065E1001176EF001479F3001678F3001374F0000F6AE5000658
      CD00FFFFFF00F5F3F100D1D1D100E4E4E400E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E4E4E400D3D3
      D300F8F8F800EAEAEA00F9F9F90000000000FEFEFE00F9F9F900E9E9E900FCFC
      FC00FFFFFF00F5F5F500F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDED00FFFF
      FF00FDFDFD00E9E9E900F8F8F800FEFEFE00FEFEFE00F9F9F900E9E9E900F4F4
      F400E6E6E600CFC7C60096D7DE0091E7F1006DBBC700FFEDC600F6EAC600F5E9
      C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9
      C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F6EA
      C700F5E9C600F4E8C500F4E8C500F1E5C200EEE2BF00E8DCB900DFD3B000D2C6
      A300DBC7A500859A7C0065A480008DD4A50094E3B000A2CBB000D8D3D600EDED
      ED00F8F8F800E9E9E900F9F9F900FEFEFE0000000000F1F1F100C7C8D8009089
      0B00A69E03009F970000A0980000A09800009F9700009F970000A29A0700A69F
      1100A7A01500A8A11600A9A11800A9A21900AAA31B00A79E150075863A00B8F2
      FF00BDEFF900C0EEFA00C3F0FA00C7F0F900CBF2FB00CFF3FB00D2F3FA00D5F4
      FB00D7F5FC00DAF5FC00DBF6FC00DCF6FB00DCF6FB00DCF6FB00DBF6FC00D9F5
      FC00D7F5FC00D5F4FB00D2F3FA00CFF2FB00CBF2FB00C7F0F900CDF5FE008AC9
      DE00E7E2E100E7E7E700F9F9F900FEFEFE0000000000F8F8F800E8E8E800F7F7
      F700D2D2D200BABABA00D6D6D600D6D6D600E6E6E600E6E6E600DCDBDB00FFFE
      F700004EC8000D73EA00147CF4001A82F8001A81F800167AF3001170EC000057
      D10094B3E000F7F3EE00D3D3D300E6E6E600E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E2E2E200D9D9
      D900FDFDFD00E8E8E800F8F8F80000000000FEFEFE00F8F8F800E8E8E800FEFE
      FE00FFFFFF00FAFAFA00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECEB00FFFF
      FF00FFFFFF00E8E8E800F8F8F800FEFEFE00FEFEFE00F8F8F800E6E6E600F3F3
      F300E2E2E200C8BEBC008BE4EF0090E5F0006BBAC700FFEDC600F6EAC700F6EA
      C700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EA
      C700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EAC700F6EA
      C700F6EAC700F5E9C600F4E8C500F3E7C400F0E4C100EDE1BE00E9DDBA00E3D7
      B400DACEAB00D9C4A100849D7E0079BD930092DFAD009AD0AC00D3CDD100EAEA
      EA00F9F9F900E7E7E700F8F8F800FEFEFE0000000000ECECEE00ADACAA009E96
      00009F9700009F9700009F9700009F970000A1990300A69F1200A8A01600A9A2
      1700A9A21A00AAA31C00ABA41E00ACA52000ACA62200ACA523009C8F0B0083C4
      DD00CEF7FF00C2EFF900C7F1F900CBF1FB00CFF2FB00D2F3FA00D6F4FB00DAF5
      FC00DCF6FB00DEF6FB00E0F7FC00E2F7FC00E1F7FC00E2F7FC00E0F7FC00DEF6
      FB00DCF6FB00D9F5FC00D6F4FB00D2F3FA00CEF2FB00CAF2FB00CCF5FD009BBC
      CB00FEFAF800E7E7E700F8F8F800FEFEFE0000000000F8F8F800E8E8E800EFEF
      EF00BEBEBE00CECECE00D7D7D700DCDCDC00E9E9E900E8E8E800E1DFDD00DAE4
      EF00005DD800107DF200208DFE002F9AFF002E98FF002088FC001277F0000160
      DA006B98D500F5EFE800D9D9D900E9E9E900E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E9E9E900DBDBDB00E4E4
      E400FEFEFE00E8E8E800F8F8F80000000000FEFEFE00F8F8F800E8E8E800FFFF
      FF00FFFFFF00FCFCFC00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FDFCFB00F0F0F000FFFF
      FF00FFFFFF00E8E8E800F8F8F800FEFEFE00FEFEFE00F9F9F900E6E6E600F0F0
      F000DEDCDC00B8BBBC008AEBF7008FE4EF0069BAC700FFECC500F5E9C500F4E8
      C500F5E9C600F5E9C600F4E8C500F5E9C600F5E9C600F5E9C600F5E9C600F5E9
      C600F5E9C600F5E9C600F5E9C600F5E9C600F4E8C500F5E9C600F4E8C500F5E9
      C600F5E9C600F5E9C600F4E8C500F3E7C400F2E6C300EFE3C000ECE0BD00E8DC
      B900E3D7B400DCD0AD00DAC2A00072AD88008FDBAA0093D6AA00D0C8CD00E7E7
      E700F8F8F800E7E7E700F8F8F800FEFEFE00FEFEFE00E8E8EF00A09D7000A199
      00009F9700009F9700009E960000A49C0B00A8A11700A9A11800AAA31A00ABA4
      1D00ACA52000ADA62400AEA72600AFA82800B0A92A00B0A92C00AEA42500788C
      4700C3F3FF00C9F2FB00C9F1FA00CEF2FB00D2F3FA00D6F5FC00DAF5FC00DDF6
      FB00E1F7FC00E3F8FD00E5F8FD00E6F8FD00E7F8FD00E6F8FD00E5F8FD00E3F8
      FD00E1F7FC00DDF6FB00DAF5FC00D6F4FB00D0F3FA00E5FEFF007FBACF00F7EF
      ED00FFFFFF00E8E8E800F8F8F800FEFEFE0000000000F9F9F900E7E7E700E2E2
      E200B2B2B200DEDEDE00D7D7D700E3E3E300EBEBEB00E8E8E800E2E1E000FFFC
      FA00005CDC001386FC002A9DFF0042AFFF0041ABFF002995FF00147DF5000062
      DD0089AEDE00E9E5DF00E0E0E000EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00D8D8D800ECEC
      EC00FCFCFC00EAEAEA00F9F9F90000000000FEFEFE00F9F9F900EAEAEA00FCFC
      FC00FFFFFF00FEFEFE00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F5F3F200F7F8F800FFFF
      FF00FDFDFD00E9E9E900F8F8F800FEFEFE00FEFEFE00F9F9F900E6E6E600EAEA
      EA00D9D6D500A9C4C70089E8F4008DE4EF0068BAC700FFECC500F5E9C600F5E9
      C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9
      C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9C600F5E9
      C600F5E9C600F5E9C600F5E9C600F4E8C500F3E7C400F2E6C300EFE3C000EBDF
      BC00E8DCB900E3D7B400E3D1AE008DB28D008BD7A7008CDEA900CAC1C700E4E4
      E400F4F4F400E8E8E800F9F9F900FEFEFE0000000000E7E7F0009B965000A299
      00009F9700009E960000A59C0D00A9A21900AAA31B00ABA41E00ACA52300AEA7
      2500AFA82900B0A92B00B1AB2E00B2AB3000B3AC3300B3AD3400B3AD3500B1A2
      21006B9A8900DFFFFF00CFF4FC00D0F3FA00D5F4FB00DAF5FC00DEF6FB00E2F7
      FC00E5F8FD00E8F9FC00EAF9FC00EBFAFD00EBFAFD00EBFAFD00EAF9FC00E8F9
      FC00E4F8FD00E2F7FD00DDF6FB00D9F6FC00EFFFFF0087C1D600E6E3E300FEFD
      FC00FDFDFD00E9E9E900F8F8F800FEFEFE0000000000FBFBFB00E4E4E400CFCF
      CF00BEBEBE00DFDFDF00D7D7D700EBEBEB00EDEDED00E6E6E600E6E6E600FFFF
      FF002F86E4000580FC00219BFF0039AEFF0038ABFF002395FF00117FF7000055
      D600F3F4F500D8D7D500EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EEEEEE00D7D7D700F1F1
      F100FAFAFA00ECECEC00FAFAFA000000000000000000FAFAFA00EBEBEB00F9F9
      F900FFFFFF00FFFFFF00F0F0F000FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFBFA00F0EFEE00FCFCFD00FFFF
      FF00F9F9F900EBEBEB00FAFAFA00FEFEFE00FFFFFF00F9F9F900E6E6E600E4E4
      E400D4CECD009ACDD3008AE6F2008BE3EE0067B9C700FFEBC400F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F3E7C400F2E6C300F1E5C200EFE3
      C000ECE0BD00E9DDBA00EDDBB80091B6920089D5A5008FE3AC00BDBCBD00E3E2
      E200EEEEEE00EAEAEA00FAFAFA000000000000000000E8E8F2009B954600A199
      00009F970000A29A0600AAA31C00ABA41D00ADA62100AEA72500AFA82900B0AA
      2D00B2AB3000B3AD3300B4AD3600B5AF3900B6B03B00B6B03D00B7B13E00B6B0
      3E00B2A327006C9E9200D7F9FF00E4FCFF00D7F4FC00DCF6FB00E1F7FC00E5F8
      FD00E9F9FC00EBFAFD00EEFAFD00EFFBFE00F0FBFE00EFFBFE00EEFAFD00ECFA
      FD00E9F9FC00E5F8FD00ECFCFF00EAFDFF0082BAD000E7E5E500FFFDFC000000
      0000FAFAFA00EBEBEB00FAFAFA00FEFEFE0000000000FAFAFA00DFDFDF00B8B8
      B800D4D4D400E0E0E000D8D8D800F1F1F100F0F0F000DEDEDE00DEDEDE00F9F7
      F500F4F5F5000074EF000487FF001695FF001794FF000C86FF000064E9009DC1
      EC00FFFFF900D0D0D000F1F1F100EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F1F1F100D6D6D600F6F6
      F600F6F6F600EDEDED00FBFBFB000000000000000000FBFBFB00EEEEEE00F5F5
      F500FFFFFF00FEFEFE00F2F2F200FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FEFEFE00FDFD
      FD00FEFEFE00FFFFFF00FDFDFD00FBFBFA00FBF9F800EFEEEC00FFFFFF00FFFF
      FF00F6F6F600EDEDED00FBFBFB0000000000FFFFFF00FAFAFA00E6E6E600DCDC
      DC00CFC6C5008BD8E10089E6F1008AE3EE0066B9C700FFEBC300F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8
      C500F4E8C500F4E8C500F4E8C500F4E8C500F4E8C500F2E6C300F2E6C300F1E5
      C200EFE3C000EDE1BE00F3E1BE0093B9940088D4A4008DDFAA00B3C1B800E0DD
      DF00E8E8E800EBEBEB00FBFBFB000000000000000000EDEEF6009F9A54009F97
      00009E960000AAA31B00ACA51F00ADA62400AFA82700B0AA2C00B2AB3100B4AD
      3400B5AE3800B6B03C00B7B13E00B8B24100B9B34400BAB44600BBB44700BBB5
      4900BBB54900BAAC3500799665009BD3F000EFFFFF00EEFEFF00E7F9FE00E9F9
      FD00ECFAFD00EFFAFE00F2FBFE00F4FCFD00F4FCFD00F3FCFD00F3FCFE00F3FC
      FF00F9FFFF00F8FFFF00A8D8E70094BDCD00FCF4F100FEFDFD00000000000000
      0000F6F6F600EDEDED00FBFBFB000000000000000000F9F9F900D8D8D800A8A8
      A800E7E7E700E1E1E100DCDCDC00F3F3F300F5F5F500C3C3C300B7B7B700CBCB
      CB00DDD9D600E3DFDD00529DE9000A81F800027BF8002F8BEC00C4D8EF00FFFF
      FE00EEEEEE00D2D2D200F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F6F6F600D2D2D200FBFB
      FB00F1F1F100F1F1F100FCFCFC000000000000000000FCFCFC00F1F1F100F0F0
      F000FFFFFF00FFFFFF00F1F1F100FFFFFF00FEFEFE00FEFEFE00FDFDFD00FBFB
      FB00FAFAFA00F9F9F900F8F8F800F9F9F900FAFAFA00FCFCFC00FDFDFD00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FDFEFE00FDFDFD00FCFDFD00FCFCFC00FDFDFD00FDFD
      FD00FDFDFD00FBFCFB00FBFAFA00FBF9F900F9F8F700EDECEB00FFFFFF00FFFF
      FF00F1F1F100F1F1F100FCFCFC0000000000FFFFFF00FAFAFA00E6E6E600D3D3
      D300C5BDBC0084E4F10088E4EF0088E2EE0064B9C700FFEAC300F3E7C400F3E7
      C400F2E6C300F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F2E6
      C300F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F3E7
      C400F3E7C400F2E6C300F3E7C400F3E7C400F3E7C400F3E7C400F3E7C400F1E5
      C200F1E5C200EFE3C000F7E5C20094BA950087D3A3008DDEA900A9C4B200DDD9
      DC00E1E1E100EEEEEE00FCFCFC000000000000000000F3F3FA00AAA779009C94
      0000A29A0500ADA62300AEA72500AFA92A00B1AB2F00B3AD3400B5AF3800B6B0
      3D00B8B24100B9B34400BAB44800BBB64B00BDB74D00BDB85000BEB95100BEB9
      5300BFBA5400BFBA5300C0B64A00A8A23E0074A18D0094CDE700D6F5FF00F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFFF00D9F8
      FF0095CDE50078A6AC00D9DBDF00FFFEFC00FEFEFE0000000000000000000000
      0000F1F1F100F1F1F100FCFCFC000000000000000000F5F5F500CACACA00B9B9
      B900E7E7E700E3E3E300E0E0E000F5F5F500F4F4F400EDEDED00DCDCDC00CFCF
      CF00C2C2C200BBB9B800C1B8AF00CDC1B500D8CCC100E2D7CC00DDDAD600DEDE
      DE00D4D4D400D3D3D300F6F6F600F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200D7D7D700FFFF
      FF00EAEAEA00F5F5F500FDFDFD000000000000000000FDFDFD00F5F5F500E9E9
      E900FFFFFF00FFFFFF00F2F3F500FFFFFF00FEFFFF00FDFFFF00FBFEFF00F8FB
      FF00F5F8FD00F3F6FB00F2F5FA00F3F6FB00F6F9FE00F9FCFF00FCFFFF00FEFF
      FF00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFFFF00FEFFFF00FDFFFF00FDFFFF00FBFFFF00FCFFFF00FAFEFF00F9FD
      FF00F8FDFF00F9FCFF00FAFDFF00F9FDFF00F8FCFF00EEF0F300FFFFFF00FFFF
      FF00EAEAEA00F4F4F400FDFDFD0000000000FFFFFF00FAFAFA00E6E6E600C9C7
      C700B6C0C20082E7F40087E3EF0087E2EE0063B8C700FFE9C200F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F1E5
      C200F1E5C200F1E5C200F9E7C40095BA950085D2A2008DDDA8009FC7AD00DBD6
      D900D9D9D900F0F0F000FDFDFD000000000000000000F9F9FB00C3C1BD00978E
      0000A59D0E00AFA82800B0AA2C00B2AC3100B4AE3600B6B03B00B8B24000B9B3
      4500BBB54900BCB74E00BEB85100BFB95400C0BB5600C1BC5900C2BC5B00C2BD
      5D00C3BE5E00C3BE5E00C3BE5D00C3BD5B00C2B85000B4AA43008A9D620079A6
      900081B5B6008EC2D20095C9E10095C9E0008CC1CF007DB1AE0075A182007C8D
      3A00897C0000C3BDA500FBFAFD00000000000000000000000000000000000000
      0000EAEAEA00F4F4F400FDFDFD000000000000000000EEEEEE00BABABA00D6D6
      D600E7E7E700E2E2E200E4E4E400F8F8F800F8F7F600FAF8F700F9F8F800F9F9
      F900FAFAFA00FCFCFC00FCFCFC00EFEFEE00DEDEDE00D0D0D000C3C3C300B7B7
      B700A2A2A200D4D4D400F9F9F900F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F7F7F700E7E7E700E4E4E400FCFC
      FC00E9E9E900F8F8F800FEFEFE000000000000000000FEFEFE00F8F8F800E9E9
      E900FDFDFD00FFFFFF00F0E2CD00F6D6A300F5D6A700F3D4A400EFD0A000E9CA
      9A00E3C49300E1C19000E3C29000E0BF8E00E4C29100EAC79500EFCB9900F2CD
      9B00F4CE9A00F3CD9900F4CD9800F4CB9600F4CA9400F3C99300F4C79100F3C5
      8E00F3C48C00F0C18900EEBE8500ECBB8200EBBA8100EAB88000E3B27B00E2B2
      7B00E5B47D00E7B67F00E8B88100E9B98200EAB77E00E7C7A300FFFFFF00FEFE
      FE00E8E8E800F8F8F800FEFEFE0000000000FFFFFF00F9F9F900E7E7E700C6C1
      C100A1C5C90082E6F20086E3EF0086E2EE0062B8C700FFE9C200F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6
      C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6C300F2E6
      C300F2E6C300F1E5C200FBE9C60094B9950084D0A0008DDBA80096CAA700D4CE
      D200D5D5D500F2F2F200FEFEFE000000000000000000FCFCFC00E9EAFB008C85
      0100AAA11300B1AB2E00B3AC3300B4AE3700B7B13E00B9B34300BBB54800BDB7
      4D00BEB95200C0BB5600C1BC5A00C3BD5E00C4BF6100C5C06300C5C06500C6C1
      6700C6C16800C6C16700C6C26800C6C16600C6C16600C6C16200C6BF5D00C4BA
      5300BFB54B00BCB04100B8AD3B00B7AB3500B6AA3400B7AB3300B8AD3500B3AA
      26008E850000DDDEE900FCFCFD0000000000000000000000000000000000FEFE
      FE00E8E8E800F8F8F800FEFEFE000000000000000000E8E8E800B4B4B400EFEF
      EF00E9E9E900D9D9D900E2E2E200F4F3F100D7E3EF00E1EBF400FFFFF500FFFF
      F700FFFFF700FFFEF800FFFCF800F9F9F900FAFAFA00FBFBFB00FCFCFC00FEFE
      FE00FCFCFC00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F9F9F900E1E1E100EBEBEB00F3F3
      F300EFEFEF00FBFBFB00000000000000000000000000FEFEFE00FBFBFB00EEEE
      EE00F2F2F200FFFFFF00F2E8D900F8DDAF00F6DCB200F1D8AE00EBD1A700E2C8
      9E00DBC29600C8AC820090765400D1B38800DDC09400E4C69A00EBCEA100F1D2
      A500F5D4A600F6D4A600F5D3A500F5D2A300F6D1A200F6CF9F00F4CD9D00F3CC
      9B00F3CA9700F0C69400ECC29000EBBF8D00DCAF7E0098744E00CEA27300DDAF
      7F00DDB18200E3B78600E6BA8900E9BD8C00E9BA8700E9D1B600FFFFFF00F2F2
      F200EEEEEE00FBFBFB00FEFEFE0000000000FFFFFF00F9F9F900E9E9E900CDC5
      C4008ECBD30082E4F00084E2EE0084E1ED0060B8C600FFE8C100F1E5C200F1E5
      C200F0E4C100F1E5C200F0E4C100F1E5C200F1E5C200F1E5C200F1E5C200F1E5
      C200F1E5C200F1E5C200F1E5C200F1E5C200F1E5C200F1E5C200F1E5C200F1E5
      C200F1E5C200F0E4C100F1E5C200F1E5C200F1E5C200F1E5C200F1E5C200F1E5
      C200F1E5C200F1E5C200FBE9C60093B9940083CF9F008CDAA7008DCEA400C7BF
      C400D9D9D900F3F3F300FEFEFE00000000000000000000000000F4F5FB00AAA7
      7500A69D0700B4AE3600B5AF3900B7B13F00B9B44500BCB64A00BEB85000C0BB
      5500C1BD5B00C4BE5F00C5C06300C6C26700C7C36A00C8C46D00C9C56F00CAC5
      7000CAC67100CAC67200CAC67200CAC57100C9C56F00C9C46D00C8C36B00C7C2
      6700C5C16400C4BF6000C2BD5C00C1BB5700BEB95100BCB64B00BBB54800B3AC
      2B0097912700F3F4FF00FDFDFD0000000000000000000000000000000000F2F2
      F200EEEEEE00FBFBFB00FEFEFE000000000000000000E9E9E900D2D2D200ECEC
      EC00F0F0F000ACACAC00BFBFBF00D9D8D700E8E6E4000072F100007DFF002397
      F90054A9F80077B4F100ABC8E900FBF7F400FDFDFD00FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800FBFBFB00DCDCDC00F3F3F300E9E9
      E900F5F5F500FDFDFD0000000000000000000000000000000000FDFDFD00F5F5
      F500E8E8E800FFFFFF00F2ECE000F8DEB200F5DDB500EFD8AF00E7CFA600DBC3
      9A00CEB48A00725F50005C5F660082695100D6BA8D00DEC19600E9CBA000F0D2
      A500F4D5A800F6D5A800F7D5A700F6D3A500F5D2A300F6D0A100F5CF9F00F4CD
      9C00F2CA9900F0C59400EBC18E00E7B987007A6149005B5F640066534500CEA2
      7300D5AA7B00DCB08100E2B78800E7BC8A00E6B98500EBD7C000FFFFFF00E8E8
      E800F5F5F500FDFDFD000000000000000000FEFEFE00FAFAFA00ECECEC00D7CD
      CC0084DAE50082E2EF0083E2EE0083E1ED005FB7C700FFE8C100F1E5C100F1E5
      C200F1E5C200F0E4C100F1E5C200F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F1E5C200F1E5C200F0E4C100F1E5C200F1E5C200F1E5C200F1E5C200F0E4
      C100F0E4C100F1E5C200F0E4C100F0E4C100F0E4C100F1E5C200F1E5C200F1E5
      C200F0E4C100F1E5C200FBE9C70094B9940082CE9E008CD8A60088D6A300BCB4
      B900DDDDDD00F5F5F50000000000000000000000000000000000FBFBFC00E3E4
      F4008D850000BCB64300B7B13F00BAB44700BCB74C00BFB95300C1BC5800C3BE
      5E00C5C06400C7C26800C8C46D00CAC57100CBC77500CCC87700CDC97900CEC9
      7B00CECA7C00CECA7C00CECA7C00CEC97B00CDC97A00CCC87700CBC77500CAC5
      7100C8C46D00C7C26900C5C06400C3BE5F00C1BC5900BFBA5300BFBA5300A39B
      0900C3C1AD00000000000000000000000000000000000000000000000000E8E8
      E800F5F5F500FDFDFD00000000000000000000000000F5F5F500E1E1E100EDED
      ED00ECECEC00F0F0F000D6D6D600C0C0C000B6B4B300D7CCC10066A1DD001E88
      F2001381F100529BE900EAF1F900F3F2F000C3C3C300E9E9E900EAEAEA00EDED
      ED00F0F0F000F4F4F400FAFAFA00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FBFB
      FB00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FEFEFE00DADADA00EEEEEE00EDED
      ED00F9F9F900FEFEFE0000000000000000000000000000000000FEFEFE00FAFA
      FA00ECECEC00F6F7F800F5F0E800F8E0B400F4DFB700EED8B100E4CEA600D6C0
      9800C4AC8100868280004445470093888000CCB18500D9BF9400E6CBA000EFD2
      A700F4D6AA00F5D6AA00F6D6A900F7D5A700F5D3A500F6D2A300F5D0A000F4CD
      9D00F2CA9A00EEC69400E9BE8D00DCAE7C008C827B004F4F500079757200C498
      6800CDA47600D5AC7E00DEB38500E4BA8A00E5B88300EEDDCB00F8FAFD00ECEC
      EC00FAFAFA00FEFEFE000000000000000000FEFEFE00FBFBFB00F3F2F200DFDA
      D90078E2EF0082E2EE0082E2EE0082E1ED005FB7C700FFE8C000F0E4C100F0E4
      C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100F1E5C200F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100FBE9C60092B9930081CD9D008BD7A50085D7A100BEBD
      BE00E4E3E300F6F6F600FEFEFE0000000000000000000000000000000000F6F6
      FA00BEBDAC00A19A0C00BFB95000BCB64D00BFBA5400C2BD5B00C4BF6100C6C1
      6700C8C46C00CAC57200CCC77600CDC97B00CFCB7E00D0CC8100D1CD8400D1CE
      8500D2CE8700D2CE8700D2CE8700D1CE8500D1CD8400D0CC8100CFCB7E00CDC9
      7A00CCC77700CAC67100C8C36D00C6C16700C4BF6100C2BC5A00C5C05C00928B
      1D00F7F8FF00FEFEFE0000000000000000000000000000000000F6F6F600ECEC
      EC00FAFAFA00FEFEFE00000000000000000000000000FDFDFD00E8E8E800ECEC
      EC00EFEFEF00EFEFEF00F1F1F100F3F3F300F1F1F100DAD9D800CEC7C000CABD
      B100DACDC100E5DED600E7E5E400D7D7D700D2D2D200F2F2F200EEEEEE00EEEE
      EE00EEEEEE00ECECEC00E9E9E900E9E9E900ECECEC00EFEFEF00F1F1F100F5F5
      F500FBFBFB00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFFFF00DEDEDE00E5E5E500F5F5
      F500FCFCFC00000000000000000000000000000000000000000000000000FCFC
      FC00F5F5F500E8E9EA00F6F3EE00F9E3B800F5E1BB00EFDBB400E4D0A900D6C2
      9A00D0B98D006F6B66001B1B1E00BBB09C00CCB48700DAC09700E6CCA300EFD4
      A900F4D8AC00F6D8AD00F6D8AB00F7D6AA00F7D5A700F5D3A500F4D1A200F5CF
      9F00F1CB9B00EEC69500E6BC8C00D8AC7A00C3B09B001A1C1F0067625C00C89A
      6B00C9A07400D3AA7D00DCB28400E3B98A00E4B68200F1E4D600E9EBED00F4F4
      F400FCFCFC0000000000000000000000000000000000FCFCFC00FBF9F800D7E7
      E90072DFED0076E1EF007AE2F0007CE0EE005CB8C700FEE7BF00F0E4C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000FAE8C50092B8930080CC9C008AD6A50083D69F00C2CD
      C600EBE9EB00F8F8F800FEFEFE0000000000000000000000000000000000FCFC
      FC00F2F2FD00A29E6300B6AF3700C3BE5C00C2BC5A00C5BF6200C7C26900C9C5
      6F00CBC77500CDC97A00CFCB7F00D1CD8400D3CE8800D4D08B00D4D18E00D5D2
      9000D6D29000D6D29200D6D29100D5D29000D5D18E00D4D08C00D3CE8800D1CD
      8400CFCB8000CDCA7B00CCC77500C9C57000C6C16700CECA7700968E0700DFDF
      E300FCFCFE000000000000000000000000000000000000000000E7E7E700F4F4
      F400FCFCFC0000000000000000000000000000000000FEFEFE0000000000F4F4
      F400EAEAEA00E5E5E500F0F0F000F1F1F100F1F1F100F3F3F300F5F5F500F4F5
      F500DBDCDC00C3C3C300AFAFAF00A5A5A500E5E5E500F2F2F200F0F0F000F0F0
      F000F0F0F000F0F0F000F1F1F100F1F1F100F0F0F000F0F0F000F0F0F000EEEE
      EE00EBEBEB00EAEAEA00EEEEEE00F0F0F000F3F3F300F6F6F600FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FBFBFB00E1E1E100EDEDED00FAFA
      FA00FEFEFE00000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00EFF0F000E6E6E400FCE7BD00F6E4BE00F0DFB900E8D6B000DAC8
      A200D9C59A005B59560017171A00B0A49000D4BD9300DDC69E00EAD1A700F0D7
      AD00F5D9AF00F7DAAF00F7D9AD00F6D8AC00F7D6A900F7D5A600F5D2A300F5D0
      A000F2CD9D00EFC89700E5BC8D00D8AC7B00B9A58F001C1D20004F4C4900C89C
      6D00C79E7300D1A97C00DCB28400E2B88A00E3B58200E4DBD100F0F1F300FAFA
      FA00FEFEFE0000000000000000000000000000000000FDFDFD00FCFCFC00FBF8
      F800F6EDEC00D6DEDF00B6D9DD00A1DDE60063B5C300FCE7C000F0E4C100F0E4
      C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4C100F0E4
      C100F0E4C100F0E4C100FAE8C60091B792007DCB9A0086D5A1007CD29A00BED9
      C800F6F3F500FBFBFB00FEFEFE0000000000000000000000000000000000FEFE
      FE00F9F9F900ECEDFC009C974E00B8B24000CBC77000C7C26800CAC57100CCC8
      7700CECA7E00D1CD8300D3CF8800D4D18D00D6D29100D7D49500D8D59800D9D6
      9A00D9D69B00D9D69B00D9D69B00D9D69A00D8D59800D7D49500D6D39200D4D1
      8D00D3CF8900D1CD8300CFCA7E00CCC77600D5D28900A19A1B00CAC8B400FDFD
      FF00FEFEFE0000000000000000000000000000000000F0F0F000EEEEEE00FAFA
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800E0E0E000EBEBEB00ECECEC00F0F0F000F3F3F300F3F3
      F300F5F5F500F7F7F700F9F9F900D8D8D800F5F5F500F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F1F1F100ECECEC00E2E2
      E200E6E6E600F3F3F300F3F3F300F7F7F700ECECEC00E6E6E600F7F7F700FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F900E0E1E100FDEBC200F8E8C300F4E3BE00EDDDB700E4D3
      AD00E8D4AA005F5E5E0016191F00B3A79100E0CAA000E6D0A700EDD6AE00F4DB
      B100F6DCB200F7DCB100F8DBAF00F8DAAD00F7D7AA00F7D6A800F6D4A500F5D1
      A200F4CE9E00F2CA9900E7BE8E00DAB07E00B7A28B0023272D0044424100CA9E
      6F00C99F7400D3AA7C00DCB28300E2B78800E6B68100E0DBD700F8F9FA00FDFD
      FD000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00F6F4F300E2DDDD00E4DDDC00CCC5C800F3E6C000EFE3C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000F9E8C5008FB6900085C89E009ED2B000B2DAC000DEEA
      E200FCFAFB00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000FDFDFD00F6F6F600E9EAF900AFAB7600A7A02500D6D38B00CDC97900CFCB
      7F00D2CE8600D4D08C00D6D39200D8D49700DAD69B00DBD89F00DCD9A200DDDA
      A400DDDAA500DDDAA500DDDAA500DDDAA400DCD9A200DBD89F00D9D69C00D8D5
      9700D6D39200D4D08C00D3CF8800DBD898009D951400CAC8B400FEFEFF00FEFE
      FE0000000000000000000000000000000000FAFAFA00E8E8E800F7F7F700FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F5F5F500E8E8E800FFFFFF00F7F7F700F0F0F000EDED
      ED00F2F2F200F5F5F500F5F5F500F7F7F700F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F7F7F700E0E0
      E000F5F5F5000000000000000000FDFDFD00E8E8E800F5F5F500FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFD00EFEFF100EDE0BB00F4E6C400F1E3C100ECDFBD00E6D8
      B500EDDEB600696A6C0096887A00B2A79300E6D3AB00E7D3AE00ECD7B100EFD9
      B200F1D9B100F1D8B000F1D7AE00F1D5AB00F0D3A900F0D1A600F0D0A400EECD
      A000EECB9E00EDC89A00E2BD9000D9B28400AD9984006366680096857400C39C
      7100C8A07700D0A97E00D8B08300DEB58900DCAF7E00E8E7E600FDFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EEEEEE00D3D3D300CACCCF00F3E5BF00EEE2BF00EEE2
      BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2
      BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2
      BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2BF00EEE2
      BF00EEE2BF00EEE2BF00F2E5BF00D4CCC500CCC6CC00E9E3E700FBF6F900FEFC
      FD00FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      000000000000FCFCFC00F4F4F400E8E9F300D4D2C400948C1300CBC67100DCD9
      9D00D6D29000D7D39300D9D69A00DBD89F00DDDAA400DFDCA800E0DCAB00E0DE
      AD00E1DEAF00E1DEB000E1DEAF00E0DEAD00E0DDAC00DFDBA800DDDAA400DBD8
      9F00DAD89C00E1DFAB00CECA7A00948C1500DDDDDA00FEFFFF00FEFEFE000000
      0000000000000000000000000000FEFEFE00E7E7E700F5F5F500FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E7E7E70000000000000000000000
      0000F6F6F600F0F0F000EDEDED00F4F4F400F7F7F700F7F7F700F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600FAFAFA00DBDB
      DB00FBFBFB000000000000000000E7E7E700F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFC00F1F2F600E6E8EC00FEFFFF00000000000000
      00000000000093919100A980620054555700FCFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F6FB005A5C5F008D756300A89284000000
      0000000000000000000000000000E9EDF200F2F6FB00FCFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F5F5F500E1E1E100BFC0C400F3E6C000EFE3C000EFE3
      C000EFE3C000EEE2BF00EFE3C000EFE3C000EFE3C000EFE3C000EFE3C000EFE3
      C000EFE3C000EEE2BF00EFE3C000EFE3C000EFE3C000EFE3C000EEE2BF00EEE2
      BF00EFE3C000EFE3C000EFE3C000EFE3C000EEE2BF00EFE3C000EFE3C000EFE3
      C000EFE3C000EFE3C000F2E5BF00CBC8BD00D8D9DA00F1F1F100FDFDFD000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E8E9EC00F8F9FF00B2AE71009A92
      1900CFCB7C00E6E4B800E1DEAC00E0DDAC00E0DEAD00E2DFB000E3E0B400E4E2
      B700E4E2B800E5E3B800E4E2B800E4E2B600E3E1B400E4E1B500E4E2B600EBE9
      C300D7D390009D951C00AEAA6C00F8F8FF00FEFEFF00FEFEFE00000000000000
      0000000000000000000000000000E7E7E700F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00F1F1F100E7E7E700FEFEFE000000
      0000000000000000000000000000F6F6F600F0F0F000EFEFEF00F5F5F500F9F9
      F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900EEEEEE00E8E8
      E800FFFFFF00FEFEFE00E7E7E700F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F1F1F100E7E7E700FEFEFE000000
      000000000000CAC3BF0064524800887F7900FCFDFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300A8A5A6006D5F5500A9988B000000
      000000000000FEFEFE00E7E7E700F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900ECECEC00D1D3D600F0E3BD00EDE1BE00EDE1
      BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1
      BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1
      BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1BE00EDE1
      BE00EDE1BE00EDE1BE00EFE2BD00DAD6CC00E6E7E800F7F7F700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F2F2F200E8E8E800FFFFFF00F6F7
      FF00B8B481009A932700B0AA4200D3CF8B00EBE8C200EFEDCF00EEEDCF00EEED
      CE00EEEDCF00EFEDCF00F0EED200F1F0D500EFEECF00DCD9A000B9B354009A93
      2400B2AD7000F1F1FC0000000000FEFEFF000000000000000000000000000000
      000000000000FEFEFE00E7E7E700F1F1F100FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E7E7E700F9F9
      F900000000000000000000000000000000000000000000000000F6F6F600F1F1
      F100F0F0F000F5F5F500FBFBFB00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FCFCFC00E2E2E200F6F6
      F600FAFAFA00E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E6E6E600F9F9
      F90000000000D9D6D4005F534C00999089000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900B8B8B8006B635D00B8A89E000000
      0000F9F9F900E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F5F5F500E6E8EC00EEE0B700EEE1BB00EEE2
      BC00EFE2BC00EEE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1
      BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1
      BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EDE1BB00EEE1BB00EFE2
      BC00EFE2BC00EEE1BB00EEE0B700E8E4D900F2F2F400FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FAFAFA00F2F2F200E7E7E700F9F9
      FA00FFFFFF00FEFFFF00E6E6E600BFBB8E00A7A24D00A39E3F00A7A13F00ACA7
      4A00B0AA5000AEA84D00A9A24000A49E4000A49E4500B8B47B00DDDCD400FDFD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E6E6E600F2F2F200FAFAFA00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F4F4F400E8E8
      E800EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700F1F1F100F0F0F000F7F7F700FDFDFD00FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FEFEFE00E0E0E000EEEE
      EE00E9E9E900F4F4F400FAFAFA00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00F5F5F500E8E8
      E800F1F1F100F8F6F4007B6A6100BAB1AA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900DDDEE000897A7200E1D2C800F4F5
      F600E8E8E800F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FBFBFB00F5F6F700EFEADB00EAE5D800E3DF
      D200E0DBCE00EFEADD00EEE9DC00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8
      DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8
      DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EDE8DB00EEE9DC00EFEADD00E0DB
      CE00E3DED100E9E4D700EEE9DA00F3F2EE00FAFAFB00FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00F5F5F500E8E8
      E800EFEFEF0000000000000000000000000000000000FEFEFF00FBFBFF00F6F6
      FF00F3F4FA00F5F6FD00F9F9FF00FDFEFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00E8E8E800F4F4F400FBFBFB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EFEFEF00E7E7E700F4F4F400000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F1F1F100F1F1F100F8F8
      F800FEFEFE00FDFDFD00FDFDFD00FCFCFC00FEFEFE00F1F1F100D7D7D700EEEE
      EE00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00ECEEF000FFEEDC00E2E2E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E700FFF1E200EAE8E500EFEF
      F000F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FDFDFD00FAFBFC00F6F6F800F1F1
      F300E8E9EB00E1E2E300EEEFF000FBFBFD00FAFBFC00F9F9FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9FB00FAFAFC00FBFCFD00EEEFF100E0E1E300E8E9
      EB00F1F1F300F6F6F800F9FAFC00FCFDFD00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7
      F700EEEEEE00E7E7E700F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E7E7E700EFEF
      EF00F7F7F700FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500EDEDED00E6E6E600F1F1F100FCFCFC00000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900F3F3F300F4F4F400F7F7F700FFFFFF00FFFFFF00E3E3E300F0F0F000FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FBFBFB00EEEEEE00EEEFF100E7E7E800F1F1F100FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F2F2F200E5E5E500EEEFF000F0F0F000FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE000000000000000000FDFD
      FD00FAFAFA00F5F5F500ECECEC00E7E7E700F1F1F100FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F1F1F100E7E7E700ECECEC00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00FAFAFA00F5F5F500EDEDED00E7E7E700F1F1F100FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F1F1F100E6E6E600EDEDED00F5F5F500FAFA
      FA00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F3F3F300F7F7F700FAFAFA000000000000000000FAFAFA00F7F7F700F4F4
      F400F0F0F000E9E9E900E3E3E300E5E5E500EBEBEB00F4F4F400FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F4F4F400F7F7F700FAFAFA00FEFEFE0000000000FAFAFA00F7F7F700F4F4
      F400EEEEEE00E8E8E800E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00F9F9F900F5F5F500EFEFEF00E8E8E800E7E7E700EEEE
      EE00F3F3F300F7F7F700F9F9F900FEFEFE00FEFEFE00F9F9F900F7F7F700F3F3
      F300EEEEEE00E8E8E800E8E8E800EFEFEF00F5F5F500F9F9F900FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F5F5F500EFEFEF00E8E8E800E8E8E800EEEE
      EE00F4F4F400F7F7F700FAFAFA00FEFEFE0000000000FAFAFA00F7F7F700F4F4
      F400EEEEEE00E8E8E800E8E8E800EFEFEF00F5F5F500FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EDEDED00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00ECECEC00EDED
      ED00F1F1F100F5F5F500F9F9F900FCFCFC00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00ECECEC00EDED
      ED00F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00ECECEC00EBEBEB00E8E8E800E8E8E800EBEBEB00ECECEC00EEEE
      EE00F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00ECECEC00EAEAEA00E7E7E700E7E7E700EAEAEA00ECECEC00EDED
      ED00F1F1F100F5F5F500F8F8F800FBFBFB00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00FAFAFA00F9F9F900F8F8F800F8F8F800F9F9F900FAFAFA00FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00F9F9F900F9F9F900F8F8F800F8F8F800F9F9F900F9F9F900FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FAFAFA00FAFAFA00F9F9F900F8F8F800F8F8F800F9F9F900FAFAFA00FAFA
      FA00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00FBFBFB00F9F9F900F9F9F900F8F8F800F8F8F800F9F9F900F9F9F900FBFB
      FB00FCFCFC00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FFFFFF00FFFFFF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFF03FFFFFFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFF9000FFFFFFFF0000FFFF000000000000
      FFFFFFFFFFFFFFF800001FFFFFF800001FFF000000000000FF00000007FFFFF0
      00200FFFFFF000000FFF000000000000FF00000007FFFFC0003C03FFFFC0000C
      03FF000000000000FF00000007FFFF80002F81FFFF80001F81FF000000000000
      FF000000071FFF000001E0FFFF00001FE0FF000000000000FF000000071FFE08
      0000707FFE10000FF07F000000000000FF000000071FFC180000003FFC100003
      F83F000000000000FF000000071FF8700000001FF87000007E1F000000000000
      FF000000071FF0700000000FF07000000E0F000000000000FF000000071FF0F0
      0000000FF0F80000030F000000000000FF000000071FE1E000000007E1F80000
      0187000000000000FF000000071FE3E000000007E3FC000001C7000000000000
      FF000000071FC3C000000003C3FC000001C3000000000000FF000000071FC7C0
      00000063C7FF000003E3000000000000FF000000071F87A00000006184000000
      03E1000000000000FF000000071F8780000000618800000003E1000000000000
      FF000000071F8F00000000718800000000F1000000000000FF000000071F8F00
      000000318C0000000071000000000000FF000000071F8F00000000318E000000
      0031000000000000FF000000071F8E00000000108F0000000031000000000000
      FF000000071F0E00000000100F0000000010000000000000FF000000071F0C00
      000000381E0000000000000000000000FF000000071F1C00000000381C000000
      0000000000000000FF000000071F0C0000000070080000000010000000000000
      FF000000071F880000000070880000000031000000000000FF000000071F8800
      000000F1880000000031000000000000FF000000071F8800000001F18FFF8000
      0071000000000000FF000000071F8000000001F18FF0000000F1000000000000
      FF000000071F8000000003E187C000000FE1000000000000FF000000071F8000
      000003E1878000000FE1000000000000FF000000071FC000000007E3C7800000
      0FE3000000000000FF000000071FC00000000FC3C30000000FE3000000000000
      FF000000071FE80000000FC7E300000007C7000000000000FF000000071FE800
      00001F87E00000000387000000000000FF000000071FF80000001F0FF0000000
      030F000000000000FF000000071FF80000003E0FF0000000030F000000000000
      FF000000071FFE0000007E1FF80000001E1F000000000000FF0000000F1FFC00
      0000783FFC00000FFC3F000000000000FF0000001F1FFE000000F07FFE00700F
      F07F000000000000FF0000003FBFFF000000E0FFFF07F00FE0FF000000000000
      FF0000007FFFFF80000181FFFF81F00F81FF000000000000FF000000FFFFFFC0
      000003FFFFC0300C03FF000000000000FF000001FFFFFFF000000FFFFFF00000
      0FFF000000000000FFFFFFFFFFFFFFFC00001FFFFFF800001FFF000000000000
      FFFFFFFFFFFFFFFF0000FFFFFFFF8000FFFF000000000000FFFFFFFFFFFFFFFF
      FC3FFFFFFFFFFFFFFFFF000000000000FFFFFC3FFFFFFFFFFC3FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFC00000003FFFFFFFFFFFFF
      FFFC00003FFFFFF800001FFFFFC00000007FFFFFFFFFFFFFFFF000000FFFF9F8
      00000FFFFFDFFFFFFF7FFFFE0FFFFFFFFC000000003FF8003FFC03FFFFDFFFFF
      FF7FFFFC07FFFFFFF8000000001FF00007FF81FFFFDFFFFFFF7FFFFC03FFFFFF
      F8000000001FF000003FE0FFFF9FFFFFFF7FFFFC03FFFFFFF8000000001FF000
      0000F07FE0000000003FFFF801FFFFFFF8000000001FF0000000003FC0000000
      000FFFF800FFFFFFF8000000001FF00000000007C00000000037FFF8007FFFFF
      F8000000001FF00000000001E0000000001FFFF8007FFFFFF0000000000FF000
      00000001E0000000000FFFF80007FFFFE00000000007E00000000000E0000000
      0007FFF800007FFFE00000000007E00000000000E00000000007FFF000000FFF
      C00000000003E00000000000E00000000007FFC0000003FFC40000000003C000
      00000000E00000000007FF00000000FF840000000001C00000000000E0000000
      0007FE000000007F840000000011800000000000E0000000000FF8000000001F
      8C0000000011800000000000E0000000000FF0000000000F8C00000000318000
      00000000E0000000000FF000000000078C0000000031800000000000E0000000
      000FE000000000078C0000000030000000000000E0000000000FC00000000003
      0C0000000030000000000000E0000000000F8000000000010C00000000380000
      00000000E0000000000F8000000000011C0000000038800000000000E0000000
      000F8000000000000C0000000030800000000000C0000000000F000000000000
      8C0000000030800000000000E0000000001F0000000000008C00000000318000
      00000001E0000000001F0000000000008C0000000031800000000001E4000000
      001F0000000000008C0000000031800000000001E0000000041F000000000000
      860000000021800000000001F0000000003F0000000000008600000000218000
      00000003FFC0000000FF000000000000C60000000063800000000003FFC00000
      007F800000000001C20000000043800000000003FFC0000000FF800000000001
      E20000000047800000000007FFE0000000FF800000000001E00000000007C000
      0000000FFFE0000000FFC00000000003F0000000000FF8000000000FFFE00000
      00FFE00000000007F0000000000FF8FC0000000FFFE0000000FFF00000000007
      F8000000001FF87FF000001FFFE0000000FFF0000000000FFD00000000BFFC1F
      FFC0001FFFE0000000FFFC000000001FFF00000000FFFE0FFFFF001FFFE00000
      00FFFE000000007FFF00000000FFFF07FFFFE03FFFE0000000FFFF00000000FF
      FFFBFFFFDFFFFF81FFFF81FFFFE0000000FFFFC0000003FFFFC03FFC03FFFFC0
      3FFC03FFFFE0000000FFFFF000000FFFFFF000800FFFFFF001800FFFFFE00000
      00FFFFFE00007FFFFFFC00001FFFFFF800001FFFFFE0000000FFFFFFF00FFFFF
      FFFF0000FFFFFFFF0000FFFFFFE0000000FFFFFFFFFFFFFFFFFFFC3FFFFFFFFF
      FC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFF00003F
      FFFFFFFFFC3FFFFFFFFF0000FFFFFFFF0000FFFFFE000000FF7FFFFF0000FFFF
      FF8000001FFFFFFC00003FFFFC000000003FFFF800001FFFFF0000000FFFFD70
      00000F4FFC000000001FFFF800000FFFFF00000003FFF0000000000FFC000000
      001FFFC03FFC0407FF00000001FFF0000000000FFC000000001FFF81FFFF8007
      FF00000000FFF0000000000FFC000000001FFF07FFF80007FE0000000003F000
      0000000FF8000000001FE20FFF800007FC0000000001F0000000000FF8000000
      000FE00FFE00001FF80000000001F0000000000FF8000000000FE001F800001F
      F00000000001F0000000000FF0000000000FF000F000000FF00000000001F000
      0000000FF0000000000FE00000000007E00000000001F00000000007E0000000
      0007E00000000007E00000000003E00000000007E00000000007E00000000003
      C00000000003C00000000003C00000000003C00000000003C00000000003C000
      00000003C00000000003C0000000000380000000000380000000000180000000
      0001800000000001800000000003800000000001800000000001800000000001
      8000000000018000000000018000000000018000000000018000000000018000
      0000000180000000000180000000000180000000000180000000000180000000
      0001800000000001800000000001800000000000800000000001800000000000
      8000000000010000000000000000000000008000000000008000000000010000
      0000000000000000000080000000000080000000000100000000000000000000
      0000000000000000800000000001000000000000000000000000800000000000
      8000000000018000000000000000000000018000000000108000000000018000
      0000000100000000000180000000003180000000000180000000000100000000
      00018000000000718000000000018000000000010000000000018000000001F1
      8000000000018000000000010000000000018000000001E18000000000038000
      00000001000000000001C000000001E1800000000003C0000000000300000000
      0003C000000007E3800000000003C00000000003000000000001E000000003C3
      800000000007E00000000007800000000001E000000007C7A00000000007E000
      00000007800000000001E00000000787F0000000000FF0000000000F80000000
      0001F00000000F0FF8000000060FF0000000000FF80000000003F80000001E0F
      F8700000061FF8387FFE1E1FF80000000017F80000003E1FFC1E0000003FFC18
      7FFE183FFC000000001FFC000002F83FFE0FC000007FFE08FFFE107FFC000000
      001FFE00000FF07FFF07F80000FFFF00FFFE00FFFC000000001FFF0780FFE0FF
      FF81FF0001FFFF80FFFF01FFFC003FFC003FFF81FFFF81FFFFC03FE003FFFFC0
      3FFC03FFFF603FFC02FFFFC03FFC03FFFFF001800FFFFFF000800FFFFFF00000
      0FFFFFF000800FFFFFF800007FFFFFFC00001FFFFFFC00003FFFFFFC00001FFF
      FFFF0001FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FC3FFFFFFFFFFC3FFFFFFFFFFC3FFFFF00000000000000000000000000000000
      000000000000}
  end
  object albrowser: TActionList
    Images = ilbrowser
    Left = 1040
    Top = 8
    object actclientes: TAction
      Caption = 'Cliente'
      ImageIndex = 0
      OnExecute = actclientesExecute
    end
    object actagenda: TAction
      Caption = 'Agenda'
      ImageIndex = 1
      OnExecute = k
    end
    object actscript: TAction
      Caption = 'Script'
      ImageIndex = 2
      OnExecute = actscriptExecute
    end
    object actchat: TAction
      Caption = 'CHAT2'
      ImageIndex = 3
      OnExecute = actchatExecute
    end
    object actemail: TAction
      Caption = 'E-Mail'
      ImageIndex = 4
      OnExecute = actemailExecute
    end
    object actfax: TAction
      Caption = 'FAX'
      ImageIndex = 5
      OnExecute = actfaxExecute
    end
    object actsms: TAction
      Caption = 'SMS'
      ImageIndex = 6
      OnExecute = actsmsExecute
    end
    object actpesquisa: TAction
      Caption = 'Pesquisa'
      ImageIndex = 7
      OnExecute = actpesquisaExecute
    end
    object actajuda: TAction
      Caption = 'Ajuda'
      ImageIndex = 8
      OnExecute = actajudaExecute
    end
    object actConferencia: TAction
      Caption = 'Confer'#234'ncia'
      ImageIndex = 9
      OnExecute = actConferenciaExecute
    end
  end
  object tmrPausa: TTimer
    Enabled = False
    OnTimer = tmrPausaTimer
    Left = 48
    Top = 472
  end
  object tmrPausaPos: TTimer
    Enabled = False
    OnTimer = tmrPausaPosTimer
    Left = 48
    Top = 520
  end
  object tmrRestricao: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = tmrRestricaoTimer
    Left = 160
    Top = 376
  end
  object timerstatuslinha: TTimer
    Enabled = False
    OnTimer = timerstatuslinhaTimer
    Left = 160
    Top = 472
  end
  object tmrLastClassAuto: TTimer
    Enabled = False
    OnTimer = tmrLastClassAutoTimer
    Left = 160
    Top = 328
  end
  object tmrVerificaLoginAtivo: TTimer
    Enabled = False
    OnTimer = tmrVerificaLoginAtivoTimer
    Left = 160
    Top = 424
  end
  object tmrVerificaTrocaPausa: TTimer
    Enabled = False
    OnTimer = tmrVerificaTrocaPausaTimer
    Left = 48
    Top = 328
  end
  object tmrPausaLogin: TTimer
    Enabled = False
    OnTimer = tmrPausaLoginTimer
    Left = 48
    Top = 376
  end
  object tmrVaxRequestFailure: TTimer
    Enabled = False
    OnTimer = tmrVaxRequestFailureTimer
    Left = 48
    Top = 424
  end
  object tmrChatQueue: TTimer
    Enabled = False
    OnTimer = tmrChatQueueTimer
    Left = 248
    Top = 328
  end
  object imlChat: TImageList
    DrawingStyle = dsTransparent
    Height = 48
    Width = 48
    Left = 1040
    Top = 208
    Bitmap = {
      494C010101004800E00430003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FDFDFD00FAFA
      FA00F4F4F400F1F1F100F6F6F600F7F7F700F5F5F500F3F3F300F5F5F500F8F8
      F800F4F4F400F4F4F400FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7F7F700E2E2E200D4D4
      D400CFCFCF00CDCDCD00CDCDCD00C9C9C900CBCBCB00CBCBCB00C9C9C900C9C9
      C900CACACA00D5D5D500E9E9E900FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EFECDF00ECECE900EEEE
      EE00EBEBEB00E8E8E800D4D4D400D3D3D300DCDCDC00DDDDDD00DADADA00DFDF
      DF00ECECEC00F1F1F100F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3CE7600F8F0CF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFD00DCC36000E7D592000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF7ED00DFC76B00DABF54000000
      0000000000000000000000000000000000000000000000000000D0ECD30084CB
      850066B96600A3D7A500F1FAF300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F4E100E3CE7B00D0AD2300F8F4
      E10000000000000000000000000000000000000000009CD9A300089B10000E9B
      120021A02200049509002EA73500CDEACF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F2DC00E5D38700CDA81400E7D5
      8F000000000000000000FCFCF800FFFBF800BEE9BF0007B5280000A5080064C6
      6C00ECF8ED0024AB2600009A0300199E2100E1F3E30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5EDD100E7D58D00CFAD1F00D3B2
      2F00E6D48B00DFC66600E0BD4F00E5BB4D003DBE330000C02A0000AF0E006ECD
      7A00000000002AB13000009F050000990A0071C2740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5EED500E6D58E00D5B63900D1AF
      2700D2B22D00D2B33100E1AD2200B3AF21000EC53A0000C5340000B713006FCF
      7B00000000001CBD310000A7040000A208002FAC3900EDF6ED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F2DD00ECDFAA00E5D28600D7B94000D6B9
      4300D5B73800D6B93F00E9B63B008FBF3B0003D15700BDF0CF00D9F6DE00DAF4
      DE00FEFEFE00D8F5DB00D5F4D8009FE3A90013B32800D3ECD300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F3ED00E1C97400E9D99800E1CD7800DCC45D00DEC5
      6300DDC56100DBC05600ECBD53008FC852000AD55E00A2E0AF00C9E8CA00DEF2
      E10000000000C9EACC00D1ECD200A1E2AB000CB82800D5EFD600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EADBA000E8D79400E8D99700E0CA7200DFC96C00DFC8
      6900DEC56300DBC25A00ECBF5500ACC24F0012DD670000CC430000C12B0069D3
      8300000000001CC6420000B81A0001BA200020BF3100DEEECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F3EB00E5D38C00F3EBC800E2CE7D00DFC86D00DFC96D00DCC3
      5D00DCC45F00DDC76800ECC76B00D3C25C0037E174000CDF6A0000CD410072DD
      9500000000002CD6630000C7370002C639004FB62000EBC15D00FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9DAA100ECDFAA00F3ECCA00E4D08300E0CB7400E1CB7500DFC9
      6F00E0C86A00DEC76600E1CA6C00F2C2630077CE5D001CEE85000CDA5E0070D9
      8E00FCF4F2002DD7690000CE460008CA4200A5B42C00E4A91900F2E9C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5D48A00F3EAC800F0E5B900E1CB7500E0CB7200E1CC7600E4D2
      8500E2CE7B00E0C96E00DFCA7000E6C96F00E1C35E0073D2630023E6780026DF
      740038DA740017DE6C0009D658007BC24500EDB94400D1AD2000DCC463000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6D69300F4ECCD00F5EFD400E4D28600DFC96E00E4D08000E1CC
      7600E2CE7900E1CB7500DFCA6F00DEC96F00E7CB7300E9C56700B3C5580073D4
      650056DB6C006AD46700B0BF4700E3B84200DABE4D00D3B33200D3B437000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EADCA000F4ECCB00F9F4E200E9DA9F00DEC76B00E1CC7500E2CF
      7F00E1CC7500E2CC7700E3D08000E1CB7500E0C96F00E1CB7200ECC97400F2C6
      6A00EAC16000F0C46400EBC86F00D5B94200D4B63900D5B63800D5B63A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE3B500F2EBC700F8F3DF00F2E9C300E6D69200E0CA7100E3D0
      7F00E4D38800E1CE7A00E2CE7D00E4D28400E1CB7400E0C96F00DEC96E00DDCB
      7000DEC86B00DBC35D00DAC25B00DBC05600D5B73B00D4B63800DEC664000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F0D900F0E5BC00FBF7EA00F4ECCE00EFE4BA00E7D59200E2CD
      7A00E3D18100E5D18400E2CE7C00E2CE7B00E1CB7500E1CC7500E2CF7F00E3CF
      8000E1CD7700E0CB7000DBC35C00D9BF5000D8BC4900D9BE5200EFE4B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFCFC00EEE2B300F8F2DE00F6EFD500F3E9C500EEE2B200E7D6
      9400E7D79400E2CD7A00E1CB7100E1CC7700E0CB7200E0CA7200E1CB7500E5D1
      8400E6D48D00E4D28A00E1CC7700DFC86B00DEC76800E4D28700FCFBF5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3ECCD00EFE3B500FBF8ED00F5EECF00F2E9C200EBDD
      A300E8D89700E8D99B00E2CD7900E0CA7000E1CB7100E1CC7500E2CC7600E0CC
      7500E1CD7600E5D18400E8D99A00E5D38C00E0C96F00F0E7BE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE2B200F4EDCD00FBF9EE00F6EED200F2E9
      C500ECDEA700E6D69200E6D59000E4D28800E2CE7C00E1CB7300E0CA7200E0CA
      7100E0CB7300E2CC7900E3CE7E00E0CC7400E4D08300FBF9EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF7EA00EDE0AC00F4EBC800FAF5E600F7F0
      D800F4ECCC00EDE2AF00E9DA9B00E7D59000E5D58C00E6D48C00E6D48900E4CF
      7E00E1CB7600E4D28600E1CC7500E5D28600F8F4E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF9F200ECDFAB00ECDEA700F8F2
      DB00FBF7EA00F7F1D900F3EAC700F1E8C100EEE3B400EADC9F00E9D99A00EBDC
      A100E7D69100E2CF7E00E9DA9B00FCF9F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5EFD500F0E7
      BE00F1E6BE00F2E9C700F3EAC800F5EDCE00F5EDD000F0E5BA00EDDFAB00ECDF
      A900EBDEA800F2E9C500FDFBF600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFC
      FB00F9F5E600F0E5BA00ECDEA700EADCA000E8D79600E8D89700EADBA000F3EC
      CE00FDFCF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFF4001FFFF0000
      00000000000000000000000000000000FFFF0000FFFF00000000000000000000
      0000000000000000FFFF0001FFFF000000000000000000000000000000000000
      FFFF9FFFFFFF000000000000000000000000000000000000FFFF1FFFFFFF0000
      00000000000000000000000000000000FFFF1FC1FFFF00000000000000000000
      0000000000000000FFFF0F80FFFF000000000000000000000000000000000000
      FFFF0C007FFF000000000000000000000000000000000000FFFF00087FFF0000
      00000000000000000000000000000000FFFF00083FFF00000000000000000000
      0000000000000000FFFE00003FFF000000000000000000000000000000000000
      FFFC00083FFF000000000000000000000000000000000000FFFC00083FFF0000
      00000000000000000000000000000000FFF800081FFF00000000000000000000
      0000000000000000FFF800001FFF000000000000000000000000000000000000
      FFF800001FFF000000000000000000000000000000000000FFF800001FFF0000
      00000000000000000000000000000000FFF800001FFF00000000000000000000
      0000000000000000FFF800001FFF000000000000000000000000000000000000
      FFF800001FFF000000000000000000000000000000000000FFF800001FFF0000
      00000000000000000000000000000000FFFC00003FFF00000000000000000000
      0000000000000000FFFE00003FFF000000000000000000000000000000000000
      FFFE00007FFF000000000000000000000000000000000000FFFF0000FFFF0000
      00000000000000000000000000000000FFFFC001FFFF00000000000000000000
      0000000000000000FFFFE007FFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object mnuChatMoreOptions: TPopupMenu
    Tag = -1
    AutoHotkeys = maManual
    Left = 1040
    Top = 304
    object mitChatURL: TMenuItem
      Caption = 'Abrir Site'
      OnClick = mitChatURLClick
    end
    object mitChatXFer: TMenuItem
      Caption = 'Transferir Chat para'
    end
    object mitChatCopy: TMenuItem
      Caption = 'Copiar Informa'#231#227'o'
    end
    object mitChatSup: TMenuItem
      Caption = 'Solicitar Supervisor'
      OnClick = mitChatSupClick
    end
    object mitChatBlob: TMenuItem
      Caption = 'Arquivos Recebidos'
      OnClick = mitChatBlobClick
    end
  end
  object mnuChatFAQ: TPopupMenu
    Tag = -1
    AutoHotkeys = maManual
    Left = 1040
    Top = 352
    object mitChatFAQ: TMenuItem
      Caption = 'Pesquisar FAQ'
      object mitChatFAQFindGroup: TMenuItem
        Caption = 'Por Grupo'
        OnClick = mitChatFAQFindGroupClick
      end
      object mitChatFAQFindAnswer: TMenuItem
        Caption = 'Por Resposta'
        OnClick = mitChatFAQFindAnswerClick
      end
    end
  end
  object AddictSpell: TAddictSpell
    ConfigStorage = csFile
    ConfigID = 'dic'
    ConfigFilename = '%AppDir%\Dic\Dic.cfg'
    ConfigRegistryKey = 'Software\Addictive Software\%AppName%'
    ConfigDictionaryDir.Strings = (
      '%AppDir%\Dic\')
    ConfigAvailableOptions = []
    ConfigUseMSWordCustom = False
    ConfigDefaultMain.Strings = (
      'American.adm')
    ConfigDefaultCustom.Strings = (
      'Autocorrect.adu')
    ConfigDefaultActiveCustomPrevent.Strings = (
      'autocorrect.adu'
      'autocorrect-british.adu')
    ConfigDefaultActiveCustom = '%ConfigID%.adu'
    ConfigDefaultOptions = [soLiveSpelling, soLiveCorrect, soInternet, soAbbreviations, soRepeated, soDUalCaps]
    ConfigDefaultUseMSWordCustom = False
    SuggestionsAutoReplace = False
    SuggestionsLearning = False
    SuggestionsLearningDict = '%AppDir%\%UserName%_sp.adl'
    QuoteChars = '>'
    DialogInitialPos = ipDesktopCenter
    DialogSelectionAvoid = saAvoid
    DialogShowImmediate = False
    DialogShowModal = False
    EndMessage = emNever
    EndCursorPosition = epOriginal
    EndMessageWordCount = False
    MaxUndo = -1
    MaxSuggestions = -1
    KeepDictionariesActive = False
    SynchronousCheck = True
    UseHourglassCursor = True
    CommandsVisible = [sdcIgnore, sdcIgnoreAll, sdcChange, sdcChangeAll, sdcUndo, sdcCancel, sdcCustomDictionary, sdcCustomDictionaries, sdcConfigOK, sdcAddedEdit, sdcAutoCorrectEdit, sdcExcludedEdit, sdcInternalEdit, sdcMainDictFolderBrowse, sdcResetDefaults, sdcConfigCancel, sdcConfigLearningLink, sdcConfigDownloadLink, sdcConfigEditDictionaryButton]
    CommandsEnabled = [sdcIgnore, sdcIgnoreAll, sdcChange, sdcChangeAll, sdcAdd, sdcAutoCorrect, sdcUndo, sdcHelp, sdcCancel, sdcOptions, sdcCustomDictionary, sdcCustomDictionaries, sdcConfigOK, sdcAddedEdit, sdcAutoCorrectEdit, sdcExcludedEdit, sdcInternalEdit, sdcMainDictFolderBrowse, sdcResetDefaults, sdcConfigCancel, sdcConfigLearningLink, sdcConfigDownloadLink, sdcConfigEditDictionaryButton]
    PhoneticSuggestions = True
    PhoneticMaxDistance = 4
    PhoneticDivisor = 2
    PhoneticDepth = 1
    MappingAutoReplace = False
    UseExcludeWords = True
    UseAutoCorrectFirst = False
    RecheckReplacedWords = True
    ResumeFromLastPosition = True
    AllowedCases = cmInitialCapsOrUpcase
    UILanguage = ltBrPort
    UIType = suiDialog
    UILanguageFontControls.Charset = DEFAULT_CHARSET
    UILanguageFontControls.Color = clWindowText
    UILanguageFontControls.Height = -11
    UILanguageFontControls.Name = 'Tahoma'
    UILanguageFontControls.Style = []
    UILanguageFontText.Charset = DEFAULT_CHARSET
    UILanguageFontText.Color = clWindowText
    UILanguageFontText.Height = -11
    UILanguageFontText.Name = 'Tahoma'
    UILanguageFontText.Style = []
    UILanguageUseFonts = False
    ParentFont = False
    DialogTypeSpelling = sdAddict
    DialogTypeConfiguration = sdAddict
    DialogMisspelledWordColor = clRed
    DialogMisspelledWordStyle = [fsBold]
    URLDownloadDictionaries = 
      'http://www.addictivesoftware.com/dl-dictionaries.htm?app=%AppNam' +
      'e%'
    URLEditDictionaries = 
      'http://www.addictivesoftware.com/ed-dictionaries.htm?app=%AppNam' +
      'e%'
    DoubleBuffered = False
    LiveMenuOptions = [spDialog, spChangeAll, spIgnoreAll, spIgnore, spReplace]
    TimingWindow = 800
    TimingBadTimeCount = 2
    TimingNoActivityRestart = 1600
    TimingCutoff = 300
    Left = 1040
    Top = 448
  end
  object icmpClientPing: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 0
    IPVersion = Id_IPv4
    PacketSize = 1024
    OnReply = icmpClientPingReply
    Left = 1040
    Top = 544
  end
  object tmrIcmpPing: TTimer
    Enabled = False
    OnTimer = tmrIcmpPingTimer
    Left = 248
    Top = 376
  end
  object tmrAudioRing: TTimer
    Enabled = False
    OnTimer = tmrAudioRingTimer
    Left = 160
    Top = 624
  end
  object mnuCopyInfoCall: TPopupMenu
    Tag = -1
    AutoHotkeys = maManual
    Left = 1040
    Top = 400
    object mitCopyInfoCall: TMenuItem
      Caption = 'Copiar Informa'#231#227'o'
    end
  end
  object tmrEnableConference: TTimer
    Enabled = False
    OnTimer = tmrEnableConferenceTimer
    Left = 248
    Top = 424
  end
  object tmrGravacaoTelaSplit: TTimer
    Enabled = False
    OnTimer = tmrGravacaoTelaSplitTimer
    Left = 248
    Top = 472
  end
  object tryPrincipal: TTrayIcon
    Icon.Data = {
      000001000500404000000100200028420000560000003030000001002000A825
      00007E4200002020000001002000A81000002668000018180000010020008809
      0000CE7800001010000001002000680400005682000028000000400000008000
      0000010020000000000000420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000045575750B696969156772721D677070246B6B6B286970702A6B6B
      6B28677070246772721D696969155575750B0000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000036969690E606B6B216B72
      7235666F6F496970705B696F6F686B7070726A7070796970707D6B70707F6970
      707D6A7070796B707072696F6F686970705B666F6F496B727235606B6B216969
      690E000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000015555550B636F6F1F6A6F6F3D6970705A6A6F6F746970
      708A737A7AA18A8E8EBB9CA3A2CEA8ADADDBB1B6B6E3B7BCBBE8B8BDBCEAB7BC
      BBE8B1B6B6E3A8ADADDB9CA3A2CE8A8E8EBB737A7AA16970708A6A6F6F746970
      705A6A6F6F3D636F6F1F5555550B000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00016969690E636D6D27696E6E4C696E6E70696F6F928B9090BAACB3B2DEC5CA
      CAF3D4DAD9FCDDE3E2FFE2E7E6FFE5EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE5EB
      EAFFE5EBEAFFE5EAE9FFE2E7E6FFDDE3E2FFD4DAD9FCC5CACAF3ACB2B2DE8B90
      90BA696F6F92696E6E70696E6E4C636D6D276969690E00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D5D5D096972
      72236A6E6E4B697070777A8080A6AAAFADDACACFCFF7DDE3E2FEE5EAE9FFE5EA
      E9FFE3E9E8FFE2E8E7FFE2E7E6FFE2E7E6FFE2E8E7FFE2E8E7FFE2E8E7FFE2E8
      E7FFE2E8E7FFE2E7E6FFE2E7E6FFE2E8E7FFE3E9E8FFE5EAE9FFE5EAE9FFDDE3
      E2FECACFCFF7AAAFADDA7A8080A6697070776A6E6E4B697272235D5D5D090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003666666166B70703C6A6F
      6F6E7C8080A6B2B6B6E2D6DBDAFCE4E9E8FFE4EAE9FFE2E8E7FFE1E7E6FFE2E8
      E7FFE4E9E8FFE4EAE9FFE3E8E7FFE1E6E5FFDDE2E2FFDAE0DFFFD9DFDDFFDAE0
      DFFFDDE2E2FFE1E6E5FFE3E8E7FFE4EAE9FFE4E9E8FFE2E8E7FFE2E7E6FFE2E8
      E7FFE4EAE9FFE4E9E8FFD6DBDAFCB2B6B6E27C807FA66A6F6F6E6B70703C6666
      6616000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006262620867707024697070546A72728EA8AE
      ADD7D5DADAFBE5EAE9FFE3E9E8FFE1E7E6FFE2E8E7FFE4EAE9FFE3E8E7FFD8DE
      DDFFC6CBCBFFB1B6B6FF9CA2A1FF8D9292FF828787FF7D8382FF7B8080FF7D83
      82FF828787FF8D9292FF9CA2A1FFB1B6B6FFC6CBCBFFD8DEDDFFE2E8E7FFE4EA
      E9FFE2E8E7FFE1E7E6FFE3E9E8FFE5EAE9FFD5DBDAFBA8AEADD76A72728E6970
      7054677070246262620800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005270700C6A707030696F6F68898F8DB3C8CECDF2E3E9
      E8FFE4E9E8FFE1E7E6FFE3E8E7FFE4EAE9FFDBE1E0FFBFC5C3FF999E9EFF787E
      7EFF666D6DFF636A6AFF656A6BFF666D6DFF676E6EFF696F6FFF696F6FFF696F
      6FFF676E6EFF666D6DFF656A6BFF636A6AFF666D6DFF787E7EFF999E9EFFBFC5
      C3FFDBE1E0FFE4EAE9FFE3E8E7FFE1E7E6FFE4E9E8FFE3E9E8FFC8CECDF2898F
      8DB3696F6F686A7070305270700C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006969690E6A6F6F3769707077A2A8A7CFD9DFDEFCE5EBEAFFE1E7
      E6FFE2E7E6FFE4EAE9FFD8DDDDFFAFB5B4FF7E8484FF656B6BFF656B6BFF696F
      6FFF6B7272FF6B7272FF6A7070FF676E6EFF666D6DFF656B6BFF656B6BFF656B
      6BFF666D6DFF676E6EFF6A7070FF6B7272FF6B7272FF696F6FFF656B6BFF656B
      6BFF7E8484FFAFB5B4FFD8DEDDFFE4EAE9FFE2E7E6FFE1E7E6FFE5EBEAFFD9DF
      DEFCA2A8A7CF697070776A6F6F376969690E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006969690E676E6E396970707EB2B7B6DDE1E6E5FFE3E9E8FFE1E7E6FFE3E9
      E8FFDFE5E4FFB8BDBCFF7B8181FF626969FF676E6EFF6B7272FF6B7272FF676E
      6EFF626969FF636A6AFF6F7676FF7F8585FF8D9191FF969A9AFF9A9E9EFF969A
      9AFF8D9191FF7F8585FF6F7676FF636A6AFF626969FF676E6EFF6B7272FF6B72
      72FF676E6EFF626969FF7B8181FFB8BEBCFFDFE5E4FFE3E9E8FFE1E7E6FFE4E9
      E8FFE1E6E5FFB2B6B6DD6970707E676E6E396969690E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005270
      700C6A6F6F376970707EBAC1C0E4E4E9E8FFE2E8E7FFE1E7E6FFE4EAE9FFD0D6
      D5FF909695FF636A6AFF696E6FFF6B7272FF6A7070FF636A6AFF666D6DFF858A
      8AFFADB1B0FFCBCECEFFDEE1E1FFE8ECEBFFEDF0F0FFEFF2F1FFEFF2F2FFEFF2
      F1FFEDF0F0FFE8ECEBFFDEE1E1FFCBCECEFFADB1B0FF858A8AFF666D6DFF636A
      6AFF6A7070FF6B7272FF696E6EFF636A6AFF909695FFD0D6D5FFE4EAE9FFE1E7
      E6FFE2E8E7FFE4E9E8FFBAC0C0E46970707E6A6F6F375270700C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000626262086A72
      722F69707077BBC1C0E2E4EAE9FFE2E7E6FFE2E7E6FFE4E9E8FFBEC4C3FF747A
      7AFF656B6BFF6B7272FF6B7272FF636A6AFF6D7373FFA0A4A4FFD1D4D4FFEAED
      EDFFF2F5F5FFF3F6F5FFF1F4F4FFF0F3F3FFF0F3F2FFF0F3F2FFF0F3F2FFF0F3
      F2FFF0F3F2FFF0F3F3FFF1F4F4FFF3F6F5FFF2F5F5FFEAEDEDFFD1D4D4FFA0A4
      A4FF6D7373FF636A6AFF6B7272FF6B7272FF656B6BFF747A7AFFBFC4C3FFE4E9
      E8FFE2E7E6FFE2E7E6FFE4EAE9FFBBC1C0E2697070776A72722F626262080000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000367707024696F
      6F68B2B8B7D7E4E9E8FFE2E7E6FFE2E8E7FFE2E7E6FFAFB6B5FF696F6FFF676E
      6EFF6B7272FF676E6EFF656B6BFF9CA0A0FFD9DCDBFFF1F4F3FFF3F6F5FFF0F3
      F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFF3F6F5FFF1F4
      F3FFD9DBDBFF9CA0A0FF656B6BFF676E6EFF6B7272FF676E6EFF696F6FFFB0B6
      B5FFE2E7E6FFE2E8E7FFE2E7E6FFE4E9E8FFB2B8B7D7696F6F68677070240000
      0003000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666661669707054A4AA
      AAC1E1E6E5FEE2E8E7FFE2E7E6FFE2E7E6FFAAAFAFFF636A6AFF6A7070FF6B72
      72FF636A6AFF787E7EFFC7CACAFFEFF2F2FFF2F5F5FFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFF2F5F5FFEFF2F2FFC7CACAFF787E7EFF636A6AFF6B7272FF6A7070FF636A
      6AFFAAAFAFFFE2E8E7FFE2E7E6FFE2E8E7FFE1E6E5FEA4AAAAC1697070546666
      6616000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D5D5D096B70703C8C92929CD9DF
      DDFBE4E9E8FFE1E7E6FFE4E9E8FFB0B6B5FF636A6AFF6A7070FF6B7272FF6269
      69FF909595FFDFE2E2FFF3F6F6FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F2FFF3F6F6FFDFE2E2FF909595FF626969FF6B7272FF6A70
      70FF636A6AFFB0B6B5FFE4E9E8FFE1E7E6FFE4E9E8FFD9DFDDFB8B92929C6B70
      703C5D5D5D090000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001696969236B727270C9CFCEEBE5EB
      EAFFE1E7E6FFE4EAE9FFBEC4C3FF696F6FFF6A7070FF6B7272FF626969FF9CA0
      A0FFE8EBEBFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFE8EBEBFF9CA0A0FF626969FF6B72
      72FF6A7070FF696F6FFFBEC4C3FFE4EAE9FFE1E7E6FFE5EBEAFFC9CFCEEB6B72
      7270696969230000000100000000000000000000000000000000000000000000
      00000000000000000000000000006D6D6D0D6A6E6E4BADB2B2C1E3E9E8FFE1E7
      E6FFE3E9E8FFD0D6D5FF747A7AFF696F6FFF6B7272FF626969FF9CA0A0FFEBEE
      EEFFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFEBEEEEFF9CA0A0FF6269
      69FF6B7272FF696F6FFF747A7AFFD1D6D5FFE3E9E8FFE1E7E6FFE3E9E8FFADB2
      B2C16A6E6E4B6D6D6D0D00000000000000000000000000000000000000000000
      0000000000000000000000000001636D6D277E86867FD6DBDBF7E4E9E8FFE2E7
      E6FFDFE5E4FF909695FF656B6BFF6B7272FF656B6BFF909595FFE8EBEBFFF2F5
      F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFE8EBEBFF9095
      95FF656B6BFF6B7272FF656B6BFF909695FFDFE5E4FFE2E7E6FFE4E9E8FFD6DB
      DBF77E86847F636D6D2700000001000000000000000000000000000000000000
      000000000000000000005555550B696E6E4CB6BCBCCAE5EBE9FFE1E7E6FFE4EA
      E9FFB8BDBCFF636A6AFF6B7272FF676E6EFF787E7EFFDFE2E2FFF2F5F5FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFF0F3F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F3FFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFDFE2
      E2FF787E7EFF676E6EFF6B7272FF636A6AFFB8BEBCFFE4EAE9FFE1E7E6FFE5EB
      E9FFB6BCBACA696E6E4C5555550B000000000000000000000000000000000000
      00000000000000000000636F6F1F7D848677D7DCDBF7E3E9E8FFE3E8E7FFD8DD
      DDFF7B8181FF696F6FFF6A7070FF656B6BFFC7CACAFFF3F6F6FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F3FFE8EBEBFFEBEEEDFFF1F4F3FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F3FFE8EB
      EAFFEBEFEEFFF1F4F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F6FFC7CACAFF656B6BFF6A7070FF696F6FFF7B8181FFD8DDDDFFE3E8E7FFE3E9
      E8FFD7DCDBF77D848477636F6F1F000000000000000000000000000000000000
      000000000000000000046A6F6F3DB0B6B5B8E4EAE9FFE1E7E6FFE4EAE9FFAFB5
      B4FF636969FF6B7272FF636A6AFF9CA0A0FFEFF2F2FFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF2F5F4FFD1D4D4FF848989FF929797FFE0E3E2FFF1F4
      F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFCDCFCFFF8187
      87FF969B9AFFE3E6E5FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFEFF2F2FF9CA0A0FF636A6AFF6B7272FF636969FFAFB6B5FFE4EAE9FFE1E7
      E6FFE4EAE9FFB0B6B5B86A6F6F3D000000040000000000000000000000000000
      0000000000006666660F6D73735BCED4D3E8E4EAE9FFE2E8E7FFDBE0E0FF7E84
      84FF676E6EFF6A7070FF6D7373FFD9DCDBFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF1F4F3FFE6E9E9FF808686FF626969FF5F6666FF9CA0A1FFEEF1
      F1FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFE3E6E6FF7B8080FF636A
      6AFF5D6565FFA4A8A7FFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F5FFD9DCDBFF6D7373FF6A7070FF676E6EFF7E8484FFDBE1E0FFE2E8
      E7FFE4EAE9FFCED4D3E86D73735B6666660F0000000000000000000000000000
      0000000000006B6B6B2193989888DDE4E3FDE2E8E7FFE4EAE9FFBFC4C3FF656B
      6BFF6B7272FF636A6AFFA0A4A4FFF1F4F3FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF3F6F5FFC4C8C7FF626969FF6B7272FF6A7070FF6D7373FFDADD
      DDFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFBEC2C2FF606767FF6B72
      72FF696F6FFF727777FFDFE2E1FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFF1F4F3FFA0A4A4FF636A6AFF6B7272FF656B6BFFBFC5C3FFE4EA
      E9FFE2E8E7FFDDE4E3FD939898886B6B6B210000000000000000000000000000
      0000000000006A707036B6BCBCB8E5EAE9FFE1E7E6FFE2E8E7FF999E9EFF656B
      6BFF6B7272FF666D6DFFD1D4D4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF2F5F4FFA5A9A9FF636A6AFF6B7272FF6B7272FF626969FFC2C6
      C6FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FF9EA2A2FF636A6AFF6B72
      72FF6B7272FF636A6AFFC8CCCBFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF2F5F5FFD1D4D4FF666D6DFF6B7272FF656B6BFF999E9EFFE2E8
      E7FFE1E7E6FFE5EAE9FFB6BCBCB86A7070360000000000000000000000000000
      0000000000046B6F6F49CBD0CFDDE5EAE9FFE2E8E7FFD8DDDDFF777E7EFF696F
      6FFF676E6EFF858B8AFFEBEDEDFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFEEF1F1FF919796FF656B6BFF6B7272FF6B7272FF626969FFB0B4
      B4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFECEFEFFF8B9090FF666D6DFF6B72
      72FF6B7272FF626969FFB7BBBBFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F3FFEBEDEDFF858A8AFF676E6EFF696F6FFF777E7EFFD8DD
      DDFFE2E8E7FFE5EAE9FFCAD0CFDD6B6F6F490000000400000000000000000000
      00005575750B7A827F60D6DDDCF2E3E9E8FFE4E9E8FFC6CBCBFF666D6DFF6B72
      72FF626969FFADB1B1FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFECEFEEFF8C9090FF666D6DFF6B7272FF6B7272FF626969FFA9AD
      ADFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFE9ECECFF858A8AFF676E6EFF6B72
      72FF6B7272FF626969FFB1B4B4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF3F6F5FFADB1B0FF626969FF6B7272FF666D6DFFC6CB
      CBFFE4E9E8FFE3E9E8FFD6DCDCF27A7F7F605575750B00000000000000000000
      000069696915979C9C7CDFE4E3FCE2E8E7FFE4EAE9FFB0B6B5FF636A6AFF6B72
      72FF636A6AFFCBCECEFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFEDF0F0FF8F9393FF666D6DFF6B7272FF6B7272FF626969FFADB0
      B0FFF1F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFEAEDEDFF878D8DFF676E6EFF6B72
      72FF6B7272FF626969FFA7AAAAFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF3F6F5FFCBCECEFF636A6AFF6B7272FF636A6AFFB0B6
      B6FFE4EAE9FFE2E8E7FFDFE4E3FC979C9C7C6969691500000000000000000000
      00006772721DAAAFAF96E2E7E6FFE2E7E6FFE3E8E7FF9CA2A1FF656B6BFF6A70
      70FF707676FFDEE1E1FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF1F4F3FFE5E8E7FF7B8080FF696F6FFF6B7272FF6B7272FF606767FFBBBF
      BFFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FF969B9BFF656B6BFF6B72
      72FF6B7272FF696F6FFF808685FFE5E8E7FFF1F4F3FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF1F4F4FFDEE1E1FF6F7575FF6A7070FF656A6BFF9CA2
      A1FFE3E8E7FFE2E7E6FFE2E7E6FFAAAFAF966772721D00000000000000000000
      000067707024B6BBBBA9E4EAE9FFE2E7E6FFE1E6E5FF8D9291FF666D6DFF676E
      6EFF7F8484FFE8EBEBFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF3F6F5FFC7CACAFF747A7AFF6A7070FF6B7272FF6B7272FF666D6DFFD2D5
      D5FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFB2B5B5FF626969FF6B72
      72FF6A7070FF737878FF979C9CFFC6C9C9FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F3FFE8EBEBFF7F8484FF676E6EFF666D6DFF8D92
      91FFE1E6E5FFE2E7E6FFE4EAE9FFB6BBBBA96770702400000000000000000000
      00006B6B6B28BEC3C3B6E5EBEAFFE2E8E7FFDDE2E1FF828787FF676E6EFF666D
      6DFF8D9191FFEDF0F0FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF1F4F4FFA3A7A7FFA7ACACFF767D7DFF696E6EFF656B6BFF878C8CFFE9EC
      ECFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFD7DADAFF6A7272FF696F
      6FFF636A6AFF949898FFBEC2C2FFA1A5A5FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFEDF0F0FF8D9191FF666D6DFF676E6EFF8287
      87FFDDE2E2FFE2E8E7FFE5EBEAFFBEC3C3B66B6B6B2800000000000000000000
      00006970702AC3C8C7BEE5EBEAFFE2E8E7FFDAE0DFFF7D8282FF696F6FFF656B
      6BFF969A9AFFEFF2F1FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFEDF0EFFF848989FFC3C7C7FFBABEBEFF656B6BFF6E7474FFCCCFCFFFF2F5
      F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFAFB3B3FF636A
      6AFF727777FFD5D7D7FFC5C9C9FF848989FFEDF0EFFFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFEFF2F1FF969A9AFF656B6BFF696F6FFF7D83
      82FFDAE0DFFFE2E8E7FFE5EBEAFFC3C8C7BE6970702A00000000000000000000
      00006B6B6B28C5CACABFE5EBEAFFE2E8E7FFD9DFDDFF7B8080FF696F6FFF656B
      6BFF9A9E9EFFF0F3F2FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE7EAE9FF757B7BFFB8BBBBFFF1F4F4FFD0D4D4FFD7DBDBFFF0F3F3FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFECEFEFFFCFD2
      D2FFD9DCDCFFF4F7F7FFB7BABAFF757B7BFFE7EAE9FFF1F4F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFF0F3F2FF9A9E9EFF656B6BFF696F6FFF7B81
      80FFD9DFDDFFE2E8E7FFE5EBEAFFC5CACABF6B6B6B2800000000000000000000
      000067707024C4C9C8BBE5EBEAFFE2E8E7FFDAE0DFFF7D8282FF696F6FFF656B
      6BFF969A9AFFEFF2F1FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE4E7E6FF727777FF9FA3A3FFF1F4F4FFF2F5F5FFF1F4F4FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5
      F5FFF1F4F4FFF1F4F4FF9FA3A3FF737878FFE4E7E7FFF1F4F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFEFF2F1FF969A9AFF656B6BFF696F6FFF7D83
      82FFDAE0DFFFE2E8E7FFE5EBEAFFC4C9C8BB6770702400000000000000000000
      00006772721DC0C6C5B0E5EBEAFFE2E8E7FFDDE2E2FF828787FF676E6EFF666D
      6DFF8D9191FFEDF0F0FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE5E8E8FF787E7EFF7D8282FFE7EAEAFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F3FFE7EAEAFF7D8282FF787E7EFFE5E8E8FFF1F4F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFEDF0F0FF8D9191FF666D6DFF676E6EFF8287
      87FFDDE2E2FFE2E8E7FFE5EBEAFFC0C6C5B06772721D00000000000000000000
      000069696915BABFBF9EE4EBE9FFE2E7E6FFE1E6E5FF8D9291FF666D6DFF676E
      6EFF7F8484FFE8EBEBFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F3FFEBEEEDFF848989FF5F6666FFC9CDCDFFF3F6F6FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF3F6F6FFC9CDCDFF5F6666FF848989FFEBEEEDFFF0F3F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F3FFE8EBEBFF7F8484FF676E6EFF666D6DFF8D92
      91FFE1E6E5FFE2E7E6FFE4EBE9FFBABFBF9E6969691500000000000000000000
      00005575750BB0B5B585E2E7E6FFE2E7E6FFE3E8E7FF9CA2A1FF656B6BFF6A70
      70FF707676FFDEE1E1FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFF0F3F2FF9B9F9FFF5D6565FF909595FFECF0F0FFF0F3F3FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F3FFECF0F0FF909595FF5D6565FF9B9F9FFFF0F3F2FFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF1F4F4FFDEE1E1FF6F7575FF6A7070FF656A6BFF9CA2
      A1FFE3E8E7FFE2E7E6FFE2E7E6FFB0B6B6845575750B00000000000000000000
      000000000004A2A4A461DFE4E3FBE2E8E7FFE4EAE9FFB0B6B5FF636A6AFF6B72
      72FF636A6AFFCBCECEFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF3F6F5FFBABEBEFF606767FF636A6AFFC0C3C3FFF3F6F6FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F6FFC0C3C3FF636A6AFF606767FFBBBEBEFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF3F6F5FFCBCECEFF636A6AFF6B7272FF636A6AFFB0B6
      B6FFE4EAE9FFE2E8E7FFDFE4E3FBA2A4A4610000000400000000000000000000
      000000000000838C873CD9DFDEECE3E9E8FFE4E9E8FFC6CBCBFF666D6DFF6B72
      72FF626969FFADB1B1FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F4FFDCE0DFFF6E7474FF676E6EFF727777FFD6D9D9FFF3F6F6FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFD6D9
      D9FF727777FF676E6EFF6E7474FFDCE0DFFFF2F5F4FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF3F6F5FFADB1B1FF626969FF6B7272FF666D6DFFC6CB
      CBFFE4E9E8FFE3E9E8FFD9DFDEEC8387873C0000000000000000000000000000
      0000000000006B6B6B21D0D6D5CEE5EAE9FFE3E8E7FFD8DDDDFF777E7EFF696F
      6FFF676E6EFF858B8AFFEBEDEDFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFF0F3F3FF9EA2A2FF636A6AFF666D6DFF7E8383FFD9DCDCFFF3F6
      F6FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFD9DCDCFF7E83
      83FF666D6DFF636A6AFF9EA3A2FFF0F3F3FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F3FFEBEDEDFF858A8AFF676E6EFF696F6FFF777E7EFFD8DD
      DDFFE3E8E7FFE5EAE9FFD0D6D4CE6B6B6B210000000000000000000000000000
      0000000000006666660FC1C7C69BE5EAE9FFE1E7E6FFE2E8E7FF999E9EFF656B
      6BFF6B7272FF666D6DFFD1D4D4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF2F5F5FFD9DBDBFF6D7373FF6A7070FF666D6DFF767C7CFFC7CB
      CBFFF0F3F3FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFF0F3F3FFC7CBCBFF767C7CFF666D
      6DFF6A7070FF6D7373FFD9DBDBFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF2F5F5FFD1D4D4FF666D6DFF6B7272FF656B6BFF999E9EFFE2E8
      E7FFE1E7E6FFE5EAE9FFC1C7C69B6666660F0000000000000000000000000000
      00000000000000000004A5ACAC58DFE4E3FAE2E8E7FFE4EAE9FFBFC4C3FF656B
      6BFF6B7272FF636A6AFFA0A4A4FFF1F4F3FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF2F5F4FFB5B8B8FF606767FF6B7272FF676E6EFF666D
      6DFF9EA3A3FFD6DADAFFEEF1F1FFF2F6F6FFF2F5F5FFF1F4F4FFF1F4F4FFF1F4
      F4FFF2F5F5FFF2F6F6FFEEF1F1FFD6DADAFF9EA2A2FF666D6DFF676E6EFF6B72
      72FF606767FFB5B8B8FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFF1F4F3FFA0A4A4FF636A6AFF6B7272FF656B6BFFBFC5C3FFE4EA
      E9FFE2E8E7FFDFE4E3FAA5ACAC58000000040000000000000000000000000000
      000000000000000000006D767620D4D9D8D7E4EAE9FFE2E8E7FFDBE0E0FF7E84
      84FF676E6EFF6A7070FF6D7373FFD9DCDBFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F3FFEDF0EFFF9B9F9FFF606767FF6B7272FF6B72
      72FF636A6AFF6A7272FF929797FFB8BCBCFFCFD3D3FFDBDDDDFFDDE0E0FFDBDD
      DDFFCFD3D3FFB8BCBCFF929797FF6A7070FF636A6AFF6B7272FF6B7272FF6067
      67FF9BA09FFFEDF0EFFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F5FFD9DCDBFF6D7373FF6A7070FF676E6EFF7E8484FFDBE1E0FFE2E8
      E7FFE4EAE9FFD4D9D9D66D767620000000000000000000000000000000000000
      000000000000000000005555550BC0C6C58BE4EAE9FFE1E7E6FFE4EAE9FFAFB5
      B4FF636969FF6B7272FF636A6AFF9CA0A0FFEFF2F2FFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFE8EBEBFF999D9DFF606767FF6A70
      70FF6B7272FF6A7070FF656B6BFF626969FF656B6BFF6D7373FF707676FF6D73
      73FF656B6BFF626969FF656B6BFF6A7070FF6B7272FF6A7070FF606767FF999D
      9DFFE8EBEBFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFEFF2F2FF9CA0A0FF636A6AFF6B7272FF636969FFAFB5B5FFE4EAE9FFE1E7
      E6FFE4EAE9FFC0C6C58B5555550B000000000000000000000000000000000000
      0000000000000000000000000001939C9C32DBE1DFEBE3E9E8FFE3E8E7FFD8DD
      DDFF7B8181FF696F6FFF6A7070FF656B6BFFC7CBCAFFF3F6F6FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFEBEEEEFFAFB4B3FF676E
      6EFF656B6BFF6A7070FF6B7272FF6B7272FF6B7272FF6A7070FF6A7070FF6A70
      70FF6B7272FF6B7272FF6B7272FF6A7070FF656A6BFF676E6EFFAFB4B3FFEBEE
      EEFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F6FFC7CBCAFF656B6BFF6A7070FF696F6FFF7B8181FFD8DDDDFFE3E8E7FFE3E9
      E8FFDBE1DFEB939C973200000001000000000000000000000000000000000000
      00000000000000000000000000006D6D6D0DC8CECD99E5EBE9FFE1E7E6FFE4EA
      E9FFB8BDBCFF636A6AFF6B7272FF676E6EFF787E7EFFDFE2E2FFF2F5F5FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFF1F4F4FFD2D6
      D5FF949898FF676E6EFF626969FF666D6DFF696F6FFF6A7070FF6A7070FF6A70
      70FF696F6FFF666D6DFF626969FF676E6EFF949898FFD2D6D5FFF1F4F4FFF0F3
      F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFDFE2
      E2FF787E7EFF676E6EFF6B7272FF636A6AFFB8BDBCFFE4EAE9FFE1E7E6FFE5EB
      E9FFC8CECD996D6D6D0D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000019CA0A02FDAE0E0E9E4E9E8FFE2E7
      E6FFDFE5E4FF909695FF656B6BFF6B7272FF656B6BFF909595FFE8EBEBFFF2F5
      F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5
      F5FFEEF1F0FFD4D7D6FFADB0B0FF8A8F8FFF757B7BFF6D7373FF6B7272FF6D73
      73FF757B7BFF8A8F8FFFADB0B0FFD4D7D6FFEEF1F0FFF2F5F5FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFE8EBEBFF9095
      95FF656B6BFF6B7272FF656B6BFF909595FFDFE5E4FFE2E7E6FFE4E9E8FFDBE1
      E0E89CA09C2F0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D5D5D09C6CCCB7FE3E9E8FFE1E7
      E6FFE3E9E8FFD0D6D5FF747A7AFF696F6FFF6B7272FF626969FF9CA0A0FFEBEE
      EEFFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF0F3F2FFF2F5F5FFF2F5F5FFECEFEEFFE3E6E6FFDBDEDDFFD8DBDBFFDBDE
      DDFFE3E6E6FFECEFEEFFF2F5F5FFF2F5F5FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFEBEEEEFF9CA0A0FF6269
      69FF6B7272FF696F6FFF747A7AFFD0D6D5FFE3E9E8FFE1E7E6FFE3E9E8FFC6CC
      CB7F5D5D5D090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737317D5DBDAC8E5EB
      EAFFE1E7E6FFE4EAE9FFBEC4C3FF696F6FFF6A7070FF6B7272FF626969FF9CA0
      A0FFE9ECEBFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF1F4F3FFF2F5F4FFF2F5F4FFF2F5
      F4FFF1F4F3FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFE9ECEBFF9CA0A0FF626969FF6B72
      72FF6A7070FF696F6FFFBEC4C3FFE4EAE9FFE1E7E6FFE5EBEAFFD5DCDAC77373
      7317000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003B0B6B63FDDE3
      E2EEE4E9E8FFE1E7E6FFE4E9E8FFB0B6B4FF636A6AFF6A7070FF6B7272FF6269
      69FF909595FFDFE2E2FFF3F6F6FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F2FFF3F6F6FFDFE2E2FF909595FF626969FF6B7272FF6A70
      70FF636A6AFFB0B6B5FFE4E9E8FFE1E7E6FFE4E9E8FFDDE3E2EEB0B6B63F0000
      0003000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062626208C5CD
      CB6BE2E8E7FBE2E8E7FFE2E7E6FFE2E7E6FFAAAFAFFF636A6AFF6A7070FF6B72
      72FF636A6AFF787E7EFFC7CBCAFFEFF2F2FFF2F5F5FFF0F3F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F2FFF2F5F5FFEFF2F2FFC7CBCAFF787E7EFF636A6AFF6B7272FF6A7070FF636A
      6AFFAAAFAFFFE2E8E7FFE2E7E6FFE2E8E7FFE2E8E7FBC5CDCB6B626262080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005270
      700CCDD2D18CE4E9E8FFE2E7E6FFE2E8E7FFE2E7E6FFAFB6B5FF696F6FFF676E
      6EFF6B7272FF676E6EFF656B6BFF9CA0A0FFD9DCDBFFF1F4F3FFF3F6F5FFF0F3
      F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFF3F6F5FFF1F4
      F3FFD9DBDBFF9CA0A0FF656B6BFF676E6EFF6B7272FF676E6EFF696F6FFFB0B6
      B5FFE2E7E6FFE2E8E7FFE2E7E6FFE4E9E8FFCDD2D18C5270700C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666660FD1D7D6A2E4EAE9FFE2E7E6FFE2E7E6FFE4E9E8FFBEC4C3FF747A
      7AFF656B6BFF6B7272FF6B7272FF636A6AFF6D7373FFA0A4A4FFD1D4D4FFEAED
      EDFFF2F5F5FFF3F6F5FFF1F4F4FFF0F3F3FFF0F3F2FFF0F3F2FFF0F3F2FFF0F3
      F2FFF0F3F2FFF0F3F3FFF1F4F4FFF3F6F5FFF2F5F5FFEAEDEDFFD1D4D4FFA0A4
      A4FF6D7373FF636A6AFF6B7272FF6B7272FF656B6BFF747A7AFFBFC4C3FFE4E9
      E8FFE2E7E6FFE2E7E6FFE4EAE9FFD2D7D7A06969690E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006666660FD4D9D79FE4E9E8FFE2E8E7FFE1E7E6FFE4EAE9FFD0D6
      D5FF909695FF636A6AFF696E6FFF6B7272FF6A7070FF636A6AFF666D6DFF858A
      8AFFADB1B0FFCBCECEFFDEE1E1FFE8ECEBFFEDF0F0FFEFF2F1FFEFF2F2FFEFF2
      F1FFEDF0F0FFE8ECEBFFDEE1E1FFCBCECEFFADB1B0FF858A8AFF666D6DFF636A
      6AFF6A7070FF6B7272FF696E6EFF636A6AFF909695FFD0D6D5FFE4EAE9FFE1E7
      E6FFE2E8E7FFE4E9E8FFD3D9D79F6969690E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005270700CD0D6D588E2E7E6FBE3E9E8FFE1E7E6FFE3E9
      E8FFDFE5E4FFB8BDBCFF7B8181FF626969FF676E6EFF6B7272FF6B7272FF676E
      6EFF626969FF636A6AFF707676FF808585FF8D9191FF969B9AFF9A9E9EFF969B
      9AFF8D9191FF808585FF707676FF636A6AFF626969FF676E6EFF6B7272FF6B72
      72FF676E6EFF626969FF7B8181FFB8BDBCFFDFE5E4FFE3E9E8FFE1E7E6FFE4E9
      E8FFE2E7E6FBD0D5D5885270700C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000062626208CACFCF66DFE4E4EAE5EBEAFFE1E7
      E6FFE2E7E6FFE4EAE9FFD8DDDCFFAFB5B4FF7E8484FF656B6BFF656B6BFF696F
      6FFF6B7272FF6B7272FF6A7070FF676E6EFF666D6DFF656B6BFF656B6BFF656B
      6BFF666D6DFF676E6EFF6A7070FF6B7272FF6B7272FF696F6FFF656B6BFF656B
      6BFF7E8484FFAFB5B4FFD8DDDDFFE4EAE9FFE2E7E6FFE1E7E6FFE5EBEAFFDFE4
      E4EACCD1D1656262620800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003BFC5C533D9DFDDBFE3E9
      E8FFE4E9E8FFE1E7E6FFE3E8E7FFE4EAE9FFDBE1E0FFBFC4C3FF999E9EFF777E
      7EFF666D6DFF636A6AFF656A6BFF666D6DFF676E6EFF696F6FFF696F6FFF696F
      6FFF676E6EFF666D6DFF656A6BFF636A6AFF666D6DFF777E7EFF999E9EFFBFC4
      C3FFDBE1E0FFE4EAE9FFE3E8E7FFE1E7E6FFE4E9E8FFE3E9E8FFD9DFDDBFBFC5
      C233000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005959590ACED5
      D471DDE3E2E2E5EAE9FFE3E9E8FFE1E7E6FFE2E8E7FFE4EAE9FFE3E8E7FFD8DE
      DDFFC6CBCBFFB0B6B5FF9CA2A1FF8D9291FF828787FF7D8282FF7B8080FF7D82
      82FF828787FF8D9291FF9CA2A1FFB0B6B5FFC6CBCBFFD8DEDDFFE2E8E7FFE4EA
      E9FFE2E8E7FFE1E7E6FFE3E9E8FFE5EAE9FFDEE3E3E1CFD6D4705D5D5D090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001B4BABA1CD3D9D785DDE3E2E4E4E9E8FFE4EAE9FFE2E8E7FFE1E7E6FFE2E8
      E7FFE4E9E8FFE4EAE9FFE3E8E7FFE1E6E5FFDDE2E1FFDAE0DFFFD9DFDDFFDAE0
      DFFFDDE2E1FFE1E6E5FFE3E8E7FFE4EAE9FFE4E9E8FFE2E8E7FFE1E7E6FFE2E8
      E7FFE4EAE9FFE4E9E8FFDDE3E2E4D3D9D785B4BABA1C00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001B2BABA18D2D7D66FDADFDFC7E0E6E5F7E5EAE9FFE5EA
      E9FFE3E9E8FFE2E8E7FFE2E7E6FFE2E7E6FFE2E8E7FFE2E8E7FFE2E8E7FFE2E8
      E7FFE2E8E7FFE2E7E6FFE2E7E6FFE2E8E7FFE3E9E8FFE5EAE9FFE5EAE9FFE0E6
      E5F7DADFDFC7D2D7D66FB2BABA18000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003CDD3CF2FD2DAD877D9DF
      DEB7DDE3E1E1E0E5E4F8E2E7E6FFE5EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE5EB
      EAFFE5EBEAFFE5EAE9FFE2E7E6FFE0E5E4F8DDE3E1E1D9DFDEB7D2D8D877CDD3
      CF2F000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BAC7C70CCCD3D32CD0D6D451D2D7D66ED4D9D884D5DAD993D5DBDA97D5DA
      D993D4D9D884D2D7D66ED0D6D451CCD3D32CBAC7C70C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFFFFFFFFF800003FFFFFFFFF
      C0000007FFFFFFFF00000001FFFFFFFE00000000FFFFFFF8000000003FFFFFF0
      000000001FFFFFE0000000000FFFFFC00000000007FFFF800000000003FFFF00
      0000000001FFFE000000000000FFFC0000000000007FFC0000000000007FF800
      00000000003FF00000000000001FF00000000000001FE00000000000000FE000
      00000000000FE00000000000000FC000000000000007C000000000000007C000
      000000000007C000000000000007800000000000000380000000000000038000
      0000000000038000000000000003800000000000000380000000000000038000
      0000000000038000000000000003800000000000000380000000000000038000
      00000000000380000000000000038000000000000003C000000000000007C000
      000000000007C000000000000007C000000000000007E00000000000000FE000
      00000000000FE00000000000000FF00000000000001FF00000000000001FF800
      00000000003FFC0000000000007FFC0000000000007FFE000000000000FFFF00
      0000000001FFFF800000000003FFFFC00000000007FFFFE0000000000FFFFFF0
      000000001FFFFFF8000000003FFFFFFE00000000FFFFFFFF00000001FFFFFFFF
      C0000007FFFFFFFFF800003FFFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFFFF2800
      0000300000006000000001002000000000008025000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001707070066666660F606E6E196A6A6A22636D
      6D276A727229636D6D276A6A6A22606E6E196666660F70707006000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00026D6D6D0D636F6F1F6A6F6F376972724D6A70705F6A6F6F6E697070776A72
      727C6970707E6A72727C697070776A6F6F6E6A70705F6972724D6A6F6F37636F
      6F1F6D6D6D0D0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000046B6B6B14696F
      6F31697272536B707072696F6F8C7A7E7EA7909797C1A4A8A8D6AFB4B3E1B6BB
      BAE7B8BDBCE9B6BBBAE7AFB4B3E1A4A8A8D6909797C17A7E7EA7696F6F8C6B70
      707269727253696F6F316B6B6B14000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000025D707012696F6F316970705B6970
      7084838787B0AAAFAFDCC7CBCBF4D7DCDBFDE0E5E5FFE4E9E8FFE5EBEAFFE6EB
      EAFFE6EBEAFFE6EBEAFFE5EBEAFFE4E9E8FFE0E5E5FFD7DCDBFDC7CBCBF4AAAF
      AFDB838787B0697070846970705B696F6F315D70701200000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000626262086A6A6A226770704E6A727282909393BDC0C4
      C3EEDAE0DFFEE4EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE4EAE9FFE3E8E7FFE1E6
      E5FFE0E5E4FFE1E6E5FFE3E8E7FFE4EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE4EA
      E9FFDAE0DFFEC0C5C4ED909393BD6A7272826770704E6A6A6A22626262080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D0D696F6F31696F6F68808686ABBEC3C2EBDEE3E3FEE5EB
      EAFFE4EAE9FFE4EAE9FFDEE4E3FFCED4D3FFB9BEBEFFA5AAAAFF969C9BFF8D93
      92FF8A9090FF8D9392FF969C9BFFA5AAAAFFB9BEBEFFCED4D3FFDEE4E3FFE4EA
      E9FFE4EAE9FFE5EBEAFFDEE3E3FEBDC3C2EB808686AB696F6F68696F6F316D6D
      6D0D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000606060116672723B6A6F6F7BA0A6A6CFD7DDDCFBE5EBEAFFE4E9E8FFE3E9
      E8FFD3D9D7FFADB3B2FF858B8AFF6B7272FF636A6AFF636A6AFF636A6AFF636A
      6AFF636A6AFF636A6AFF636A6AFF636A6AFF636A6AFF6B7272FF858B8AFFADB3
      B2FFD3D9D7FFE3E9E8FFE4E9E8FFE5EBEAFFD7DDDCFBA0A6A6CF6A6F6F7B6672
      723B606060110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006060
      60116A6F6F3E69707084B6BBBAE2E2E7E6FFE4EAE9FFE4EAE9FFD6DBDAFFA4A9
      A9FF707676FF626969FF666B6DFF636A6AFF606767FF666D6DFF6F7575FF777D
      7DFF7C8181FF777D7DFF6F7575FF666D6DFF606767FF636A6AFF666B6DFF6269
      69FF707676FFA4A9A9FFD6DBDAFFE4EAE9FFE4EAE9FFE2E7E6FFB6BBBAE26970
      70846A6F6F3E6060601100000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D6D6D0D6672
      723B6F767886C1C7C6EAE4EAE9FFE3E9E8FFE2E7E6FFBAC0BFFF777D7DFF6369
      6AFF676E6EFF626969FF6F7575FF979B9BFFBABEBDFFD2D5D5FFDFE2E2FFE4E7
      E7FFE6E9E9FFE4E7E7FFDFE2E2FFD2D5D5FFBABDBDFF979B9BFF6F7575FF6269
      69FF676E6EFF63696AFF777D7DFFBAC0BFFFE2E7E6FFE3E9E8FFE4EAE9FFC0C7
      C6EA6F7678866672723B6D6D6D0D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626208696F6F316D72
      727CC2C7C6E8E5EBEAFFE3E9E8FFDDE3E2FFA0A6A6FF636A6AFF676E6EFF6269
      69FF767C7CFFB2B6B6FFDEE1E1FFF0F3F2FFF3F6F6FFF2F5F5FFF1F4F4FFF1F4
      F3FFF1F4F3FFF1F4F3FFF1F4F4FFF2F5F5FFF3F6F6FFF0F2F2FFDEE1E1FFB2B6
      B5FF767C7CFF626969FF676E6EFF656A6BFFA0A6A6FFDDE3E2FFE3E9E8FFE5EB
      EAFFC1C7C7E86D72727B696F6F31626262080000000000000000000000000000
      000000000000000000000000000000000000000000026A6A6A22696F6F68B6BD
      BCDCE4EAE9FFE4E9E8FFDAE0DFFF919797FF626969FF676E6EFF656B6BFFA4A8
      A8FFE1E4E4FFF3F6F5FFF2F5F4FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF2F5F4FFF3F6
      F5FFE1E4E4FFA4A8A8FF656B6BFF696E6EFF626969FF919797FFDAE0DFFFE4E9
      E8FFE4EAE9FFB6BCBCDC696F6F686A6A6A220000000200000000000000000000
      0000000000000000000000000000000000005D707012676F6F4FA4A9A9BDE2E7
      E6FFE4E9E8FFDDE3E2FF919797FF63696AFF676E6EFF707676FFC5C9C8FFF1F4
      F3FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F4FFF1F4F3FFC5C9C8FF707676FF676E6EFF63696AFF919797FFDDE3
      E2FFE4E9E8FFE2E7E6FFA4A9A9BD6770704E6074741100000000000000000000
      000000000000000000000000000000000004696F6F318589898CD7DDDCF9E4EA
      E9FFE2E7E6FFA0A6A5FF626969FF676E6EFF767C7CFFD4D6D6FFF3F6F6FFF0F3
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F2FFF3F6F6FFD3D6D6FF767C7CFF676E6EFF626969FFA0A6
      A6FFE2E7E6FFE4EAE9FFD7DDDCF98589898C696F6F3100000004000000000000
      00000000000000000000000000006B6B6B146970705BC0C7C6DCE5EBEAFFE4EA
      E9FFBAC0BFFF656A6AFF676E6EFF707676FFD4D6D6FFF3F6F6FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFD4D6D6FF707676FF676E6EFF656A
      6BFFBAC0BFFFE4EAE9FFE5EBEAFFC0C6C5DC6970705B6B6B6B14000000000000
      0000000000000000000000000002696F6F31949C9A97DFE4E3FDE4EAE8FFD6DB
      DAFF777D7DFF676E6EFF656B6BFFC5C9C9FFF3F6F6FFEFF2F2FFEFF2F2FFEFF2
      F2FFF1F4F3FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF2F5
      F4FFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFC5C9C8FF656B6BFF676E
      6EFF777D7DFFD6DBDAFFE4EAE8FFDFE4E3FD949A9A97696F6F31000000020000
      000000000000000000005270700C69727253C4CAC8DAE5EBEAFFE3E9E8FFA4A9
      A8FF636969FF626969FFA4A8A8FFF1F4F3FFF0F3F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE6E9E8FFDCE0DFFFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFEDF0F0FFDADD
      DCFFEBEEEDFFF0F3F3FFEFF2F2FFEFF2F2FFF0F3F2FFF1F4F3FFA4A8A8FF6269
      69FF636969FFA4A9A8FFE3E9E8FFE5EBEAFFC4CAC8DA697272535270700C0000
      00000000000000000000636F6F1F8A8E8E7EDBE1E0FAE4EAE9FFD3D9D7FF7076
      76FF676E6EFF767C7CFFE1E4E4FFF2F5F4FFEFF2F2FFEFF2F2FFF1F4F3FFE7EA
      E9FF8C9090FF6A7070FFCACECEFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFB4B8B8FF6269
      69FFA4A8A8FFEFF2F1FFF0F3F2FFEFF2F2FFEFF2F2FFF2F5F4FFE1E4E4FF767C
      7CFF676E6EFF707676FFD3D9D7FFE4EAE9FFDBE1E0FA8A8E8E7E636F6F1F0000
      000000000000000000016A6F6F37B3BAB9B6E4EAE9FFE4EAE9FFADB3B2FF6269
      69FF626969FFB2B6B6FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFBEC2
      C2FF5F6666FF636A6AFF8B9090FFEBEEEEFFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFE0E3E3FF727777FF666D
      6DFF666D6DFFD5D8D7FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFB2B6
      B6FF626969FF626969FFADB3B2FFE4EAE9FFE4EAE9FFB3B9B9B66A6F6F370000
      000100000000707070066972724DCDD2D1E0E5EBEAFFDEE4E3FF858B8AFF666D
      6DFF6F7575FFDEE1E1FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFF0F4F3FF9CA0
      A0FF636A6AFF6A7070FF6E7474FFDDE0E0FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFC9CDCDFF626969FF6B72
      72FF606767FFB8BCBBFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFDEE1
      E1FF6F7575FF666D6DFF858B8BFFDEE4E3FFE5EBEAFFCDD2D1E06972724D7070
      7006000000006666660F7E858567D9DFDDF6E5EBEAFFCED4D3FF6B7272FF636A
      6AFF979B9BFFF0F3F2FFF0F3F2FFEFF2F2FFEFF2F2FFF0F3F2FFEDF0EFFF8C90
      90FF666D6DFF6B7272FF666D6DFFD2D5D5FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFBABEBEFF626969FF6B72
      72FF626969FFA9ADADFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF0F3
      F2FF969B9AFF636A6AFF6B7272FFCED4D3FFE5EBEAFFD9DFDDF67E8583676666
      660F00000000606E6E199DA3A388E0E5E4FEE5EBEAFFB9BEBEFF636A6AFF6267
      67FFBABEBDFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFEDF0EFFF8C90
      90FF666D6DFF6B7272FF666D6DFFD1D4D4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFB9BCBCFF626969FF6B72
      72FF636A6AFFA1A5A5FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F5FFBABDBDFF626769FF636A6AFFB9BEBEFFE5EBEAFFE0E5E4FE9DA3A388606E
      6E19000000006A6A6A22B0B6B6A2E4E9E8FFE4EAE9FFA5AAAAFF636A6AFF666D
      6DFFD2D5D5FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F3FFE5E8E8FF7B80
      80FF696F6FFF6A7070FF6B7272FFDBDEDEFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFC6CACAFF626969FF6B72
      72FF676E6EFF838888FFE6E9E8FFF1F4F3FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5
      F5FFD2D5D5FF666D6DFF636A6AFFA5AAAAFFE4EAE9FFE4E9E8FFB1B7B6A16A6A
      6A2200000000626B6B28BCC2C1B3E5EBEAFFE2E8E7FF969C9BFF636A6AFF6F75
      75FFDFE2E2FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFCBCECEFF8085
      85FF676E6EFF666D6DFF838989FFE9ECECFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFDCE0E0FF6D7373FF696F
      6FFF6B7272FF9FA3A3FFCACECDFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F4FFDFE2E2FF6F7575FF636A6AFF979C9BFFE2E8E7FFE5EBEAFFBCC1C1B2636D
      6D27000000006970702AC1C7C7BDE5EBEAFFE0E6E5FF8D9292FF636A6AFF777D
      7DFFE5E8E7FFF1F4F3FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFADB0B0FFB9BD
      BDFF838888FF5F6666FFC0C3C3FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFA7ABABFF5960
      60FF9B9F9FFFC6CACAFFABAFAFFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE4E7E7FF777D7DFF636A6AFF8D9392FFE0E6E5FFE6EBEAFFC2C8C7BC6A72
      722900000000626B6B28C5CAC8BFE6EBEAFFE0E5E4FF8A9090FF636A6AFF7C81
      81FFE6E9E9FFF1F4F3FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F3FF979B9BFFC4C7
      C7FFE0E3E3FFCED2D2FFEDF0F0FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFE9ECECFFCACE
      CEFFE8EBEBFFC3C7C7FF979B9CFFF1F4F3FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE6E9E9FF7C8181FF636A6AFF8A9090FFE0E5E4FFE6EBEAFFC5CAC9BE636D
      6D27000000006A6A6A22C3C8C7B9E5EBEAFFE0E6E5FF8D9292FF636A6AFF777D
      7DFFE5E8E7FFF1F4F3FFEFF2F2FFEFF2F2FFF0F3F2FFF0F3F2FF929797FFA9AD
      ADFFF4F7F7FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFF2F5
      F5FFF3F6F6FFA8ADADFF929797FFF0F3F2FFF0F3F2FFEFF2F2FFEFF2F2FFF1F4
      F3FFE4E7E7FF777D7DFF636A6AFF8D9392FFE0E6E5FFE6EBEAFFC3C8C7B96A6A
      6A2200000000606E6E19BFC5C5AAE5EBEAFFE2E8E7FF969C9BFF636A6AFF6F75
      75FFDFE2E2FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FF9CA1A0FF7E83
      83FFEAEDEDFFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3
      F3FFEAEDEDFF7E8383FF9CA1A0FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F4FFDFE2E2FF6F7575FF636A6AFF979C9BFFE2E8E7FFE5EBEAFFBFC5C5AA606E
      6E19000000006666660FB8BCBB92E4E9E8FFE4EAE9FFA5AAAAFF636A6AFF666D
      6DFFD2D5D5FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFB3B7B6FF575F
      5FFFC5C9C9FFF3F6F6FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F6FFC5C9C9FF575F5FFFB4B7B7FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5
      F5FFD2D5D5FF666D6DFF636A6AFFA5AAAAFFE4EAE9FFE4E9E8FFB6BCBB926666
      660F0000000070707006A7AEAE6CE0E6E5FDE5EBEAFFB9BEBEFF636A6AFF6267
      67FFBABEBDFFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFD1D4D4FF6067
      67FF7E8383FFE3E6E6FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFE3E6
      E6FF7E8383FF606767FFD1D4D4FFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6
      F5FFBABEBDFF626769FF636A6AFFB9BEBEFFE5EBEAFFE0E6E5FDA7AEAE6C7070
      700600000000000000018B929240DBE0DFF1E5EBEAFFCED4D3FF6B7272FF636A
      6AFF979B9BFFF0F3F2FFF0F3F2FFEFF2F2FFEFF2F2FFF0F3F3FFEAEDEDFF878C
      8CFF5D6565FF979B9BFFE9ECECFFF2F5F5FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFE9ECECFF969B
      9BFF5D6565FF878C8CFFEAEDEDFFF0F3F3FFEFF2F2FFEFF2F2FFF0F3F2FFF0F3
      F2FF979B9AFF636A6AFF6B7272FFCED4D3FFE5EBEAFFDBE0DFF18B928F400000
      00010000000000000000636F6F1FD1D6D6D1E5EBEAFFDEE4E3FF858B8AFF666D
      6DFF707575FFDEE1E1FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFC5C8
      C8FF626969FF636A6AFF919696FFDDE0E0FFF3F6F6FFF1F4F4FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFF3F6F6FFDDE0E0FF919696FF636A
      6AFF626969FFC5C8C8FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFDEE1
      E1FF6F7575FF666D6DFF858B8BFFDEE4E3FFE5EBEAFFD1D6D6D1636F6F1F0000
      000000000000000000005270700CC0C7C692E5EAE9FFE4EAE9FFADB3B2FF6269
      69FF626969FFB2B6B6FFF3F6F5FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFEEF1
      F1FF9DA2A1FF606767FF656B6BFF747A7AFFB3B7B7FFDDE1E1FFEDF0F0FFF1F4
      F4FFF2F5F5FFF1F4F4FFEDF0F0FFDDE1E1FFB3B6B6FF747A7AFF656B6BFF6067
      67FF9DA2A1FFEEF1F1FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F5FFB2B6
      B6FF626969FF626969FFADB3B2FFE4EAE9FFE4EAE9FFC0C6C6925270700C0000
      00000000000000000000000000029CA3A343DEE3E2F4E4EAE9FFD3D9D7FF7076
      76FF676E6EFF767C7CFFE2E4E4FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4
      F4FFE6E9E9FF8E9393FF606767FF696F6FFF626969FF6F7575FF8D9191FFA3A7
      A7FFA9ADADFFA3A7A7FF8D9191FF6F7575FF626969FF696F6FFF606767FF8E93
      93FFE6E9E9FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F4FFE1E4E4FF767C
      7CFF676E6EFF707676FFD3D9D7FFE4EAE9FFDDE3E2F49CA3A343000000020000
      00000000000000000000000000006B6B6B14CFD4D3BAE5EBEAFFE3E9E8FFA4A9
      A8FF636969FF626969FFA4A8A8FFF1F4F3FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F4FFE7EAE9FFA0A5A4FF636A6AFF656B6BFF696F6FFF666D6DFF636A
      6AFF626969FF636A6AFF666D6DFF696F6FFF656B6BFF636A6AFFA0A5A4FFE7EA
      E9FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF1F4F3FFA4A8A8FF6269
      69FF636969FFA4A9A8FFE3E9E8FFE5EBEAFFCFD4D3BA6B6B6B14000000000000
      000000000000000000000000000000000004B0B6B451E0E5E4F9E4EAE8FFD6DB
      DAFF777D7DFF676E6EFF656B6BFFC5C9C9FFF3F6F6FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF1F4F4FFEFF2F2FFCACDCDFF8F9393FF696F6FFF606767FF6269
      69FF63696AFF626969FF606767FF696F6FFF8F9393FFCACDCDFFEFF2F2FFF1F4
      F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFC5C9C8FF656B6BFF676E
      6EFF777D7DFFD6DBDAFFE4EAE8FFE0E5E4F9B0B6B45100000004000000000000
      0000000000000000000000000000000000005D707012CFD5D5B1E5EBEAFFE4EA
      E9FFBAC0BFFF656A6AFF676E6EFF707676FFD4D6D6FFF3F6F6FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFF0F3F2FFF3F6F5FFEDF0F0FFD8DBDBFFBEC2C2FFADB1
      B0FFA7ABAAFFADB1B0FFBEC2C2FFD8DBDBFFEDF0F0FFF3F6F5FFF0F3F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFD4D6D6FF707676FF676E6EFF656A
      6AFFBAC0BFFFE4EAE9FFE5EBEAFFCFD5D5B06074741100000000000000000000
      00000000000000000000000000000000000000000002AAAAAA33DCE2E1EBE4EA
      E9FFE2E7E6FFA0A6A5FF626969FF676E6EFF767C7CFFD4D6D6FFF3F6F6FFF0F3
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF2F5F4FFF3F6F5FFF2F5
      F5FFF2F5F4FFF2F5F5FFF3F6F5FFF2F5F4FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFF0F3F2FFF3F6F6FFD3D6D6FF767C7CFF676E6EFF626969FFA0A6
      A6FFE2E7E6FFE4EAE9FFDCE2E1EAAAAAAA330000000200000000000000000000
      0000000000000000000000000000000000000000000062626208C3C9C96CE2E8
      E7FCE4E9E8FFDDE3E2FF919797FF63696AFF676E6EFF707676FFC5C9C8FFF1F4
      F3FFF2F5F4FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFF2F5F4FFF1F4F3FFC5C9C8FF707676FF676E6EFF63696AFF919797FFDDE3
      E2FFE3E9E8FFE2E8E7FCC3CACA6B626262080000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D6D6D0DCFD5
      D499E4EAE9FFE4E9E8FFDAE0DFFF919797FF626969FF676E6EFF656B6BFFA4A8
      A8FFE1E4E4FFF3F6F5FFF2F5F4FFF0F3F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF2F5F4FFF3F6
      F5FFE1E4E4FFA4A8A8FF656B6BFF696E6EFF626969FF919797FFDAE0DFFFE4E9
      E8FFE4EAE9FFCED5D4996D6D6D0D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7012D5DAD9B0E5EBEAFFE3E9E8FFDDE3E2FFA0A6A5FF636A6AFF676E6EFF6269
      69FF767C7CFFB2B6B6FFDEE1E1FFF0F3F2FFF3F6F6FFF2F5F5FFF1F4F4FFF1F4
      F3FFF1F4F3FFF1F4F3FFF1F4F4FFF2F5F5FFF3F6F6FFF0F2F2FFDEE1E1FFB2B6
      B6FF767C7CFF626969FF676E6EFF656A6BFFA0A6A5FFDDE3E2FFE3E9E8FFE5EB
      EAFFD5DAD9B07070701200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084909015D5DCDAAEE4EAE9FFE3E9E8FFE2E7E6FFBAC0BFFF777D7DFF6369
      6AFF676E6EFF626969FF6F7675FF979B9BFFBABEBDFFD2D5D5FFDFE2E2FFE5E7
      E7FFE6E9E9FFE5E7E7FFDFE2E2FFD2D5D5FFBABEBDFF979B9BFF6F7675FF6269
      69FF676E6EFF63696AFF777D7DFFBAC0BFFFE2E7E6FFE3E9E8FFE4EAE9FFD5DB
      DAAE849090150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006969690ED2D7D694E2E8E7FCE4EAE9FFE4EAE9FFD6DBDAFFA4A9
      A8FF707676FF626969FF666B6DFF636A6AFF606767FF666D6DFF6F7575FF787E
      7EFF7C8181FF787E7EFF6F7575FF666D6DFF606767FF636A6AFF666B6DFF6269
      69FF707676FFA4A9A8FFD6DBDAFFE4EAE9FFE4EAE9FFE2E8E7FCD2D7D6946969
      690E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000062626208CDD2D062DFE4E3E5E5EBEAFFE4E9E8FFE3E9
      E8FFD3D9D7FFADB3B2FF858A8AFF6B7272FF636A6AFF636A6AFF636A6AFF636A
      6AFF636A6AFF636A6AFF636A6AFF636A6AFF636A6AFF6B7272FF858B8AFFADB3
      B2FFD3D9D7FFE3E9E8FFE4E9E8FFE5EBEAFFDFE4E3E5CCD2D062626262080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000002B5BEBE26D6DCDAA4E1E7E6F6E5EB
      EAFFE4EAE9FFE4EAE9FFDEE4E3FFCED4D2FFB9BEBEFFA5AAAAFF969C9BFF8D92
      92FF8A9090FF8D9292FF969C9BFFA5AAAAFFB9BEBEFFCED4D2FFDEE4E3FFE4EA
      E9FFE4EAE9FFE5EBEAFFE1E7E6F6D7DDDBA3B5BEBE2600000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004C7CACA3CD7DC
      DBA8DFE5E4EFE4EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE4EAE9FFE3E8E7FFE0E6
      E5FFE0E5E4FFE0E6E5FFE3E8E7FFE4EAE9FFE5EBEAFFE5EBEAFFE5EBEAFFE4EA
      E9FFDFE5E4EFD8DDDCA7C9CBCB3B000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002C3CBC724D2D7D672DAE0DEBCDEE4E3E7E1E6E5FCE4E9E8FFE5EBEAFFE6EB
      EAFFE6EBEAFFE6EBEAFFE5EBEAFFE4E9E8FFE1E6E5FCDEE4E3E7DAE0DEBCD2D7
      D672C3CBC7240000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001C7C7C713CFD4D439D2DAD860D4DAD97ED4DA
      D991D5DAD997D4DAD991D4D9D97ED2DAD860CFD4D439C7C7C713000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFF0000FFFF8003FFFF0000FFFC00007FFF0000FFF0
      00001FFF0000FFC0000007FF0000FF80000003FF0000FF00000001FF0000FE00
      000000FF0000FC000000007F0000F8000000003F0000F0000000001F0000E000
      0000000F0000E0000000000F0000C000000000070000C0000000000700008000
      0000000300008000000000030000800000000003000000000000000100000000
      0000000100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000100008000
      00000003000080000000000300008000000000030000C000000000070000C000
      000000070000E0000000000F0000E0000000000F0000F0000000001F0000F800
      0000003F0000FC000000007F0000FE00000000FF0000FF00000001FF0000FF80
      000003FF0000FFC0000007FF0000FFF000001FFF0000FFFC00007FFF0000FFFF
      8003FFFF00002800000020000000400000000100200000000000801000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001696969076074
      74116772721D666F6F256B6B6B28666F6F256772721D60747411696969070000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000005696969156A72722F6A6E6E4B696F
      6F626B7070726A6F6F7A6970707D6A6F6F7A6B707072696F6F626A6E6E4B6A72
      722F696969150000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000036B6B6B14657272356A72725E69707083787F7FA4959C
      9CC6A9AFAEDBB5BABAE5B8BDBCE9B5BABAE5A9AFAEDB959C9CC6787F7FA46970
      70836A72725E657272356B6B6B14000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000069696907697272236A6E6E516B6F6F86949A9AC2C0C5C3EED9DFDDFDE4EA
      E9FFE7EDECFFE6ECEBFFE5EBEAFFE6ECEBFFE7EDECFFE4EAE9FFD9DFDDFDC0C5
      C3EE949A9AC26B6F6F866A6E6E51697272236969690700000000000000000000
      0000000000000000000000000000000000000000000000000000000000005D5D
      5D09666E6E2C6A707065858C8BAFC3C9C8EFE3E8E7FFE6ECEBFFD4DAD9FFB8BE
      BEFFA0A6A6FF919797FF8C9191FF919797FFA0A6A6FFB8BEBEFFD4DAD9FFE6EC
      EBFFE3E8E7FFC2C9C8EF858C8BAF6A707065666E6E2C5D5D5D09000000000000
      000000000000000000000000000000000000000000000000000069696907666E
      6E2C6A70706CA0A5A4CADAE0DFFCE8EDECFFCAD0CFFF959B9AFF676E6EFF575F
      5FFF626969FF727676FF777D7DFF727676FF626969FF575F5FFF676E6EFF959B
      9AFFCAD0CFFFE8EDECFFDAE0DFFCA0A5A4CA6A70706C666E6E2C696969070000
      0000000000000000000000000000000000000000000000000003697272236A70
      7065AAAFAECFE2E8E7FEE0E5E4FFA5AAAAFF636A6AFF606767FF949898FFC2C5
      C5FFDADDDCFFE4E7E7FFE7EAE9FFE4E7E7FFDADDDCFFC1C5C4FF949898FF6067
      67FF636A6AFFA5AAAAFFE0E5E4FFE2E8E7FEAAAFAECF6A707065697272230000
      000300000000000000000000000000000000000000006B6B6B146A6E6E51A2A7
      A6BDE2E7E6FEDBE0E0FF8F9494FF575D5FFF8B9090FFD2D5D5FFEFF2F2FFF3F6
      F6FFF2F5F4FFF1F4F3FFF1F4F3FFF1F4F3FFF2F5F4FFF3F6F6FFEFF2F2FFD2D5
      D5FF8B9090FF575D5FFF8F9494FFDBE0E0FFE2E7E6FEA2A7A6BD6A6E6E516B6B
      6B1400000000000000000000000000000000000000056B72723589908E94DBE0
      DFFAE0E5E4FF8F9494FF575F5FFFA5AAA9FFEAEDEDFFF3F6F5FFF0F3F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF3F6
      F5FFEAEDEDFFA5AAA9FF575F5FFF8F9494FFE0E5E4FFDBE0DFFA89908E946572
      723500000005000000000000000000000000696969156A70705FC6CBCBE2E7ED
      ECFFA5AAAAFF575D5FFFA6AAAAFFEFF2F1FFF1F4F4FFF0F3F3FFF0F3F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F2FFF0F3
      F2FFF1F4F4FFEFF2F1FFA5AAA9FF575D5FFFA5AAAAFFE7EDECFFC6CCCBE26A72
      725E696969150000000000000000000000016A72722F9AA0A09AE3E8E7FECACF
      CFFF636A6AFF8B9090FFEAEDEDFFF1F4F3FFF0F3F3FFEAEDEDFFEDF0F0FFF0F3
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFECEFEEFFEBEF
      EEFFF0F3F3FFF1F4F3FFEAEDEDFF8B9090FF636A6AFFCAD0CFFFE3E8E7FE9AA0
      A09A6A72722F000000010000000069696907696E6E4CC5CBCAD7E6ECEBFF959B
      9AFF606767FFD2D6D5FFF3F6F5FFF0F3F3FFE9ECEBFF8D9191FFADB1B1FFF0F3
      F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEDF0F0FF9DA1A1FF9CA0
      A0FFEEF1F0FFF0F3F2FFF3F6F5FFD2D5D5FF606767FF969B9AFFE6ECEBFFC5CB
      C9D7696E6E4C6969690700000000607474117D828269DAE0DFF6D4D9D9FF676E
      6EFF949898FFEFF2F2FFF0F3F2FFF3F6F5FFCDD0D0FF5C6363FF747A7AFFE4E7
      E7FFF0F3F3FFEFF2F2FFEFF2F2FFEFF2F2FFF1F4F4FFDADDDDFF666D6DFF666D
      6DFFDADDDDFFF2F5F4FFF0F3F2FFEFF2F2FF949898FF676E6EFFD4DAD9FFDAE0
      DFF67D82826960747411000000006772721DA4A7A68FE4EAE9FFB8BEBEFF575F
      5FFFC2C5C5FFF3F6F6FFEFF2F2FFF3F6F5FFC0C3C3FF606767FF6B7070FFDBDE
      DEFFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFCED1D1FF636A6AFF636A
      6AFFCFD2D2FFF3F6F5FFEFF2F2FFF3F6F6FFC2C5C4FF575F5FFFB8BEBEFFE4EA
      E9FFA4A6A68F6772721D00000000656E6E26B6BCBBABE7EDECFFA0A6A6FF6369
      6AFFDADDDDFFF2F5F4FFEFF2F2FFF3F6F5FFB5B8B8FF5F6566FF6F7575FFDFE2
      E2FFF1F4F4FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFD4D7D7FF656B6BFF6067
      67FFBCBFBFFFF3F6F5FFEFF2F2FFF2F5F4FFDADDDCFF636969FFA0A7A6FFE7ED
      ECFFB6BCBBAB666F6F25000000006A6A6A29C0C7C5BBE6ECEBFF919797FF7276
      76FFE4E7E7FFF1F4F3FFF0F3F2FFECEFEFFFA8ACACFF6B7272FF909494FFEDF0
      F0FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFE7EAEAFF7C8181FF7D82
      82FFB3B6B6FFECEFEEFFF0F3F2FFF1F4F3FFE4E7E7FF727676FF919797FFE6EC
      EBFFC1C7C5BA6B6B6B2800000000656E6E26C5CAC9BEE5EBEAFF8C9191FF777C
      7CFFE7EAEAFFF1F4F3FFF1F4F3FFE4E7E6FFAAAFAFFFD4D7D7FFDEE1E1FFF0F3
      F3FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF0F3F3FFD8DBDBFFD9DC
      DCFFACAFAFFFE4E7E6FFF1F4F3FFF1F4F3FFE7EAEAFF767C7CFF8C9191FFE5EB
      EAFFC5CACABD666F6F25000000006772721DC4C9C8B4E6ECEBFF919797FF7276
      76FFE4E7E7FFF1F4F3FFF1F4F3FFE5E8E7FF8E9292FFEBEEEEFFF2F5F5FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFEBEE
      EEFF8D9292FFE5E8E7FFF1F4F3FFF1F4F3FFE4E7E7FF727676FF919797FFE6EC
      EBFFC3C9C7B46772721D0000000060747411BCC2C19BE7EDECFFA0A6A6FF6369
      6AFFDADDDDFFF2F5F4FFF0F3F2FFEDF0EFFF858A8AFFC3C7C7FFF3F6F6FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFC3C7
      C7FF858A8AFFEDF0EFFFF0F3F2FFF2F5F4FFDADDDCFF636969FFA0A7A6FFE7ED
      ECFFBCC2C19B607474110000000069696907AEB3B271E4EAE9FEB8BEBEFF575F
      5FFFC2C5C5FFF3F6F6FFEFF2F2FFF3F6F5FFB2B5B5FF6F7676FFDCE0E0FFF3F6
      F6FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFEFF2F2FFF3F6F6FFDCDFDFFF6F75
      75FFB2B5B5FFF3F6F5FFEFF2F2FFF3F6F6FFC2C5C5FF575F5FFFB8BEBEFFE4EA
      E9FEAEB2B27169696907000000000000000190949438DCE3E2EFD4D9D9FF676E
      6EFF949898FFEFF2F2FFF0F3F2FFF1F4F3FFE3E6E5FF747A7AFF787E7EFFCCCF
      CFFFEDF0F0FFF2F5F5FFF3F6F6FFF2F5F5FFEDF0F0FFCCCFCFFF787E7EFF747B
      7AFFE3E6E5FFF1F4F3FFF0F3F2FFEFF2F2FF949898FF676E6EFFD4DAD9FFDCE3
      E2EF9094943800000001000000000000000069696915CFD5D4BBE6ECEBFF959B
      9AFF606767FFD2D6D5FFF3F6F5FFEFF2F2FFF2F6F5FFCED2D1FF696F6FFF5F66
      66FF8E9292FFB0B4B4FFBBBFBFFFB0B4B4FF8E9292FF5F6666FF696F6FFFCED2
      D1FFF2F6F5FFEFF2F2FFF3F6F5FFD2D5D5FF606767FF959B9AFFE6ECEBFFCED5
      D4BB6969691500000000000000000000000000000005B3B9B95BE4E9E8FCCACF
      CFFF636A6AFF8B9090FFEAEDEDFFF1F4F4FFEFF2F2FFF2F5F5FFD5D9D8FF8D91
      91FF5F6666FF555D5DFF555D5DFF555D5DFF5F6666FF8D9191FFD6D9D9FFF2F5
      F5FFEFF2F2FFF1F4F4FFEAEDEDFF8B9090FF636A6AFFCAD0CFFFE4E9E8FCB6BA
      BA5A00000005000000000000000000000000000000006B6B6B14D3D9D7BDE7ED
      ECFFA5AAAAFF575D5FFFA6AAAAFFEFF2F1FFF1F4F4FFEFF2F2FFF2F5F5FFECEF
      EFFFD2D5D5FFB8BCBBFFAEB2B2FFB8BCBBFFD2D5D5FFECEFEFFFF2F5F5FFEFF2
      F2FFF1F4F4FFEFF2F1FFA5AAA9FF575D5FFFA5AAAAFFE7EDECFFD3D9D7BD6B6B
      6B14000000000000000000000000000000000000000000000003AAB4B13ADFE5
      E4EDE0E5E4FF8F9494FF575F5FFFA6AAAAFFEAEDEDFFF3F6F5FFF0F3F2FFF0F3
      F2FFF2F5F5FFF3F6F6FFF3F6F5FFF3F6F6FFF2F5F5FFF0F3F2FFF0F3F2FFF3F6
      F5FFEAEDEDFFA6AAAAFF575F5FFF8F9494FFE0E5E4FFDFE5E4EDAAB4B13A0000
      000300000000000000000000000000000000000000000000000069696907C3C9
      C765E4E9E8FADBE0DFFF8F9494FF575D5FFF8B9090FFD2D6D5FFEFF2F2FFF3F6
      F6FFF2F5F4FFF1F4F3FFF1F4F3FFF1F4F3FFF2F5F4FFF3F6F6FFEFF2F2FFD2D5
      D5FF8B9090FF575D5FFF8F9494FFDBE0E0FFE4E9E8FAC3C9C765696969070000
      0000000000000000000000000000000000000000000000000000000000005D5D
      5D09CBD1D176E4E9E8F9E0E5E4FFA5AAAAFF636A6AFF606767FF949898FFC2C5
      C5FFDADDDDFFE4E7E7FFE7EAE9FFE4E7E7FFDADDDDFFC2C5C5FF949898FF6067
      67FF636A6AFFA5AAAAFFE0E5E4FFE4E9E8F9CAD1CF765D5D5D09000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000069696907C9CECE60E1E6E5E9E8EDECFFCACFCFFF959B9AFF676E6EFF575F
      5FFF626969FF727777FF777D7DFF727777FF626969FF575F5FFF676E6EFF959B
      9AFFCACFCFFFE8EDECFFE1E6E5E9CACFCF5F6969690700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003BEC5C12ED9DEDDB1E4EAE9FAE6ECEBFFD4DAD9FFB8BE
      BDFFA0A6A6FF919797FF8C9191FF919797FFA0A6A6FFB8BEBDFFD4DAD9FFE6EC
      EBFFE4EAE9FAD9DEDCB1BEC5C12E000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000005CACECE43D9DEDDA6E1E6E5E6E4EA
      E9FEE7EDECFFE6ECEBFFE5EBEAFFE6ECEBFFE7EDECFFE4EAE9FEE1E6E5E6D9DE
      DDA6CACECE430000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001BEC7C713CFD4
      D442D4D9D96FD5DBDA8BD6DBDA95D5DBDA8BD4D9D76FCFD4D442BEC7C7130000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFC007FFFF0001FFFC00007FF800
      003FF000001FE000000FC0000007C00000078000000380000003000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000018000000380000003C0000007C0000007E000000FF000001FF800
      003FFC00007FFF0001FFFFC007FF280000001800000030000000010020000000
      0000600900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000035575750B627070186969
      6923636D6D2769696923627070185575750B0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B05627070186B727235697070546770706B6970
      70786A6F6F7C697070786770706B697070546B72723562707018007B7B050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006969690E6A72722F6A6E6E5E6A707089878C8CB2A7ABAAD3B6BC
      BCE3BCC2C1E8B6BCBCE3A6ABAAD3878C8CB26A7070896A6E6E5E6A72722F6969
      690E000000000000000000000000000000000000000000000000000000000000
      00005D7070126B70703C6A707079979C9CC3CACFCFF2DDE3E2FEDAE0DFFFCFD5
      D4FFCACFCFFFCFD5D4FFDAE0DFFFDDE3E2FECACFCFF2979C9CC36A7070796670
      703C607474110000000000000000000000000000000000000000000000006969
      690E6B70703C6E757584BAC0BFE3E0E6E5FEC7CDCCFF909695FF6F7676FF7277
      77FF777D7DFF727777FF6F7676FF909695FFC7CDCCFFE0E6E5FEBAC0BFE36E75
      75836670703C6969690E00000000000000000000000000000000000000056A72
      722F7276767BC6CBCAEADFE4E3FF989E9DFF6A706FFFA7AAAAFFD2D5D5FFE3E6
      E6FFE7EAEAFFE3E6E6FFD2D5D5FFA7AAAAFF6A6F6FFF989E9DFFDFE4E3FFC5CB
      CBE97276747B6A72722F00000005000000000000000000000000627070186A6E
      6E5EBCC2C1D9DFE4E3FF858B8AFF848989FFDBDEDDFFF3F6F5FFF2F5F5FFF1F4
      F3FFF1F4F3FFF1F4F3FFF2F5F5FFF3F6F5FFDBDEDDFF848989FF858B8AFFDFE4
      E3FFBCC2C2D86B6F6F5D627070180000000000000000000000036B7272359CA1
      A1A1E1E6E5FE989E9DFF848989FFE6E9E9FFF4F7F7FFF2F5F5FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF2F5F5FFF4F7F6FFE6E9E9FF848989FF989E
      9DFFE1E6E5FE9CA2A2A06B72723500000003000000005575750B69707055CED4
      D3E2C7CDCCFF6A6F6FFFDBDEDDFFF4F7F7FFE1E4E4FFD2D6D5FFF0F3F3FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFCFD2D2FFE5E8E8FFF4F7F6FFDBDDDDFF6A6F
      6FFFC7CDCCFFCED4D3E2697070555575750B00000000627070189095957BDEE4
      E3FB909695FFA7AAAAFFF3F6F5FFF2F5F5FFAAAEADFF747A7AFFE7EAEAFFF0F3
      F3FFEFF2F2FFF1F4F4FFE2E5E5FF666D6DFFB8BBBBFFF3F6F6FFF3F6F5FFA7AA
      AAFF909695FFDEE4E3FB9095957B627070180000000069727223B3B9B8A1DAE0
      DFFF6F7675FFD2D5D5FFF3F6F5FFF1F4F3FF979C9CFF666D6DFFDFE2E2FFF1F4
      F4FFEFF2F2FFF1F4F4FFD7DADAFF5D6565FFA2A6A6FFF2F5F5FFF3F6F5FFD2D5
      D5FF6F7676FFDAE0DFFFB3B9B8A16972722300000000626B6B28C3C9C8B8CFD5
      D4FF727777FFE3E6E6FFF2F5F4FFEAEDEDFF8D9191FF787E7EFFE8EBEBFFF0F3
      F3FFEFF2F2FFF1F4F4FFE2E5E5FF6D7373FF989D9DFFEAEDEDFFF2F5F4FFE3E6
      E6FF727777FFCFD5D4FFC4CAC9B7636D6D270000000069727223C9CFCEBCCACF
      CFFF777D7DFFE7EAEAFFF3F6F5FFDCDFDFFFBABEBEFFD7DBDBFFF0F3F3FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFD5D7D7FFBFC2C2FFDBDFDEFFF3F6F5FFE7EA
      EAFF777D7DFFCACFCFFFC9CFCEBC697272230000000062707018C8CDCCAECFD5
      D4FF727777FFE3E6E6FFF3F6F5FFDCDFDFFFACAFAFFFF5F8F8FFEFF2F2FFEFF2
      F2FFEFF2F2FFEFF2F2FFEFF2F2FFF5F8F8FFABAFAFFFDCDFDFFFF3F6F5FFE3E6
      E6FF727777FFCFD5D4FFC8CDCCAE62707018000000005575750BBCC3C289DAE0
      DFFF6F7675FFD2D5D5FFF3F6F6FFECEFEEFF8C9090FFCFD2D2FFF4F7F7FFF0F3
      F3FFF0F3F3FFF0F3F3FFF4F7F7FFCFD2D2FF8C9090FFECEFEEFFF3F6F6FFD2D5
      D5FF6F7676FFDAE0DFFFBCC3C2895575750B0000000000000003A3A8A84BDFE4
      E4F8909695FFA7AAAAFFF3F6F5FFF3F6F5FFC8CBCBFF6B7272FFBEC2C2FFE5E8
      E8FFEBEEEEFFE5E8E8FFBEC2C2FF6B7272FFC8CBCBFFF3F6F5FFF3F6F5FFA7AA
      AAFF909695FFDFE4E4F8A4A9A94A00000003000000000000000062707018D7DD
      DBC8C7CDCCFF6A706FFFDBDEDDFFF3F6F6FFF1F4F3FFBEC2C2FF696F6FFF6D73
      73FF7D8282FF6D7373FF696F6FFFBEC2C2FFF1F4F3FFF3F6F6FFDBDEDDFF6A6F
      70FFC7CDCCFFD7DCDBC862707018000000000000000000000000007B7B05BABE
      BE59E2E8E7FB989E9DFF848989FFE6E9E9FFF3F6F6FFF2F5F5FFE0E3E3FFBEC2
      C2FFB0B4B4FFBEC2C2FFE0E3E3FFF2F5F5FFF3F6F6FFE6E9E9FF848989FF989E
      9DFFE2E7E6FBBCC0C05800000005000000000000000000000000000000006969
      690ED4D9D79CDFE4E3FF848B8AFF848989FFDBDEDDFFF3F6F5FFF4F7F7FFF5F8
      F7FFF4F7F7FFF5F8F7FFF4F7F7FFF3F6F5FFDBDEDDFF848989FF858B8AFFDFE4
      E3FFD3D9D79C6969690E00000000000000000000000000000000000000000000
      0000818D8D16D9DFDEB3DFE4E3FF989E9DFF6A706FFFA7AAAAFFD2D5D5FFE3E6
      E6FFE7EAEAFFE3E6E6FFD2D5D5FFA7AAAAFF6A706FFF989E9DFFDFE4E3FFD9DF
      DEB3879393140000000000000000000000000000000000000000000000000000
      00000000000084848411D7DCDB96E2E8E7F9C7CDCCFF909695FF6F7676FF7277
      77FF777D7DFF727777FF6F7676FF909695FFC7CDCCFFE2E8E7F9D7DCDB968484
      8411000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B05CACFCF48DFE4E3B8E1E6E5F4DAE0DFFFCFD5
      D4FFCACFCEFFCFD5D4FFDAE0DFFFE1E6E5F4DFE4E3B8CACFCF48007B7B050000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003CBD6D226D6DCDB5FDCE1
      E085DBE1E093DCE1E085D6DCDB5FCBD2D2260000000300000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FE00FF00F800
      3F00F0001F00E0000F00C0000700800003008000030000000100000001000000
      0100000001000000010000000100000001000000010000000100800003008000
      0300C0000700E0000F00F0001F00F8003F00FE00FF0028000000100000002000
      0000010020000000000040040000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF04EEF5F23AEAEFEE6CE7EDEC7EE9EF
      EE6CEEF5F23AFFFFFF0400000000000000000000000000000000000000000000
      00000000000000000000EAEFED46DFE4E3C7C2C7C6FEABB1B0FFA4AAA9FFABB1
      B0FFC2C7C6FEDEE4E3C7EAEFED46000000000000000000000000000000000000
      000000000000E7EDEC69CDD3D2FA919797FFA4A8A8FFC8CBCBFFD2D6D5FFC8CB
      CBFFA4A8A7FF929797FFCDD3D2FAE7EDEC690000000000000000000000000000
      0000EBEFEF44CDD3D2FA888D8DFFD5D8D7FFF4F7F7FFF3F6F5FFF2F5F5FFF3F6
      F5FFF4F7F7FFD5D7D7FF888D8DFFCED3D2FAE9EFEF440000000000000000FFFF
      FF06DCE2E1CA919797FFD5D7D7FFEEF1F1FFE3E6E6FFF0F3F3FFEFF2F2FFF0F3
      F3FFE2E5E4FFF0F3F2FFD4D7D7FF929797FFDCE2E1CAFFFFFF0600000000ECF2
      F03AC1C7C6FEA4A8A8FFF6F9F9FFC4C8C7FF959999FFF0F3F3FFEFF2F2FFEEF1
      F1FF8D9191FFCDD0CFFFF6F9F8FFA4A8A8FFC1C7C6FEEEF4F23900000000E8EE
      ED6EABB1B0FFC8CBCBFFF7F9F9FFB3B7B6FF8B9090FFEFF2F2FFF0F3F3FFEDF0
      F0FF828787FFBABDBDFFF6F9F9FFC8CBCBFFABB1B0FFE8EEED6D00000000E7EC
      EB80A4AAA9FFD3D6D6FFF1F4F4FFBEC1C1FFD9DCDCFFF0F3F3FFEFF2F2FFF0F3
      F3FFD6DADAFFC0C4C4FFF1F4F4FFD3D6D5FFA4AAA9FFE6ECEB8000000000E8EE
      ED6EABB1B0FFC8CBCBFFF4F7F6FFB4B8B8FFE6E9E9FFF2F5F5FFF0F3F3FFF3F6
      F6FFE6E9E9FFB4B8B8FFF4F7F6FFC8CBCBFFABB1B0FFE8EEED6D00000000ECF2
      F03AC1C7C6FEA4A8A8FFF6F9F8FFD1D4D4FF969A9AFFD8DBDBFFE7EAEAFFD8DB
      DBFF969A9AFFD1D5D4FFF6F9F8FFA4A8A8FFC1C7C6FEEEF4F23900000000FFFF
      FF06DCE2E1CA919797FFD4D7D7FFF6F9F9FFC9CCCCFF8A8F8FFF848989FF8A90
      8FFFC9CDCCFFF6F9F9FFD4D7D7FF929797FFDCE2E1CAFFFFFF06000000000000
      0000EBF1EF44CDD3D2FA888D8DFFD4D7D7FFF6F9F8FFF0F3F2FFE7EAEAFFF0F3
      F2FFF6F9F8FFD4D7D7FF888E8DFFCED3D2FAE9F1EF4400000000000000000000
      000000000000E7EDEC69CDD3D2FA919797FFA4A8A8FFC9CCCCFFD4D7D7FFC9CC
      CCFFA4A8A8FF919797FFCDD3D2FAE7EDEC690000000000000000000000000000
      00000000000000000000EAEFEF46DFE4E3C7C1C7C6FEABB1B0FFA4AAA9FFABB1
      B0FFC1C7C6FEDFE4E3C7EAEFED46000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF04EEF5F23AEAF0EF6CE7EDEC7EEAF0
      EF6CEEF5F23AFFFFFF040000000000000000000000000000000000000000FFFF
      0000F01F0000E00F0000C0070000800300000001000000010000000100000001
      000000010000000100000001000080030000C0070000E00F0000F01F0000}
    Left = 1040
    Top = 592
  end
  object tmrTryPrincipal: TTimer
    Enabled = False
    OnTimer = tmrTryPrincipalTimer
    Left = 248
    Top = 520
  end
  object imlCallQuality: TImageList
    Left = 1040
    Top = 648
    Bitmap = {
      494C010102000C003C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000003B
      58000072BE00001F3B000000000000000000000000000000000000060B000037
      7400004296000000000000000000000000000000000000000000000000003636
      3600757575002424240000000000000000000000000000000000060606003F3F
      3F00515151000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000042F
      410033B7EA001E99E20000427E00000509000000000000213A000067B5003BA8
      DE00005194000000000000000000000000000000000000000000000000002929
      2900A9A9A900A5A5A5004E4E4E0005050500000000002020200062626200A9A9
      A9004E4E4E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000006
      080012A5E000ABE6F70038AFE8000064B70000498400229DE00062C6ED0041B1
      E40000375F000000000000000000000000000000000000000000000000000505
      05008F8F8F00EEEEEE00B8B8B800707070004E4E4E009A9A9A00CACACA00ABAB
      AB00323232000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D7AA50081D6F4008BDDF50070D2F20053C1ED0073D6F3007DD8F4001698
      DD00001624000000000000000000000000000000000000000000000000000000
      00006C6C6C00D2D2D200D7D7D700D1D1D100BDBDBD00D5D5D500DBDBDB008B8B
      8B00131313000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000447610051C4EF0087DCF40074D6F3006DD4F30061D1F2006ED2F2000073
      BD00000000000000000000000000000000000000000000000000000000000000
      000042424200BDBDBD00CFCFCF00C6C6C600C6C6C600C3C3C300D0D0D0006C6C
      6C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000007
      0B000070A00075D4F40087DBF50076D7F3006CD4F20064D2F20070D4F3000076
      C700001E38000000000000000000000000000000000000000000000000000808
      080072727200D1D1D100CCCCCC00C3C3C300C2C2C200C2C2C200D1D1D1007878
      7800212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001621000085
      C8004FC6F3009FE2F60088DCF5007DD8F40073D6F3006AD3F2006DD4F20053C1
      EE000077D30000336400000000000000000000000000000000001A1A1A009797
      9700CECECE00D6D6D600C9C9C900C6C6C600C4C4C400C3C3C300CCCCCC00CACA
      CA007F7F7F003C3C3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000344A00009EE60068D1
      F500C1ECF900A9E6F80098E0F60086DBF4007CD8F40078D7F4007CD8F40089DC
      F50084D8F3002AA3E400004D910000050900000000003B3B3B00B5B5B500DADA
      DA00EAEAEA00DBDBDB00D1D1D100C9C9C900C8C8C800CBCBCB00D3D3D300DFDF
      DF00E6E6E600AFAFAF0057575700050505000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014AADD003FC9F7003FC8
      F6003EC7F5003DC4F4007BD6F6009AE0F60089DBF5007AD6F4004CC2EF0036B8
      EC0037B8EB0032B3E90012A6E3000036500000000000B3B3B300CDCDCD00CACA
      CA00C6C6C600C1C1C100D3D3D300D5D5D500CECECE00D2D2D200BBBBBB00A7A7
      A700A2A2A2009E9E9E00909090002E2E2E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000106080006242E000626
      310006263100223F920024A9F20099E0F7009FE2F70047C3F100124FA4000523
      2F0006232E0005222E0002131A00000000000000000007070700252525002727
      270026262600403F8700A6A5BF00DCDCDC00DCDCDC00C3C3C3004C4A87001E1E
      1E001D1D1D001C1C1C0010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027267B005F5DF3004998F2006AD3F600A8E4F8000C9EEC004F4DEF001814
      7800000000000000000000000000000000000000000000000000000000000000
      000027267B005F5DF3009999D700D4D4D400E9E9E900A6A6B300514DEE001814
      7800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C2B
      7C006665F5007D7DF3005265EF0013B7F4006ED4F600257FED007575F000514D
      EF00181478000000000000000000000000000000000000000000000000002C2B
      7C006665F5007D7DF3006666E900BABABD00D9D9D9008888CC007575F000514D
      EF00181478000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      F8008080F4005D5DF0003333EC001E9AF3002CC1F4002444EB005656EC007676
      F100342EEF000000000000000000000000000000000000000000000000005C5C
      F8008080F4005D5DF0003333EC009D9DCC00C8C8C8004747E1005656EC007676
      F100342EEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006162
      F9008686F5003838EE003636ED002D5FEF001B8AF2003131EB002F2FEA007E7E
      F1003A34F0000000000000000000000000000000000000000000000000006162
      F9008686F5003838EE003636ED006161E1008F8FD1003131EB002F2FEA007E7E
      F1003A34F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006567
      FA008888F5003B3BEF003939EE003838ED003636ED003434EC003232EB008080
      F2003F3AF1000000000000000000000000000000000000000000000000006567
      FA008888F5003B3BEF003939EE003838ED003636ED003434EC003232EB008080
      F2003F3AF1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000696B
      FB008989F6003D3DF0003C3CEF003A3AEF003838EE003737ED003535EC008181
      F3004440F300000000000000000000000000000000000000000000000000696B
      FB008989F6003D3DF0003C3CEF003A3AEF003838EE003737ED003535EC008181
      F3004440F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E3C7E3C700000000E087E08700000000
      E007E00700000000F007F00700000000F00FF00F00000000E007E00700000000
      C003C00300000000800080000000000080008000000000008001800100000000
      F00FF00F00000000E007E00700000000E007E00700000000E007E00700000000
      E007E00700000000E007E0070000000000000000000000000000000000000000
      000000000000}
  end
  object sctRecClientOld: TWSocket
    LineMode = False
    LineLimit = 65536
    LineEnd = #13#10
    LineEcho = False
    LineEdit = False
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalPort = '0'
    MultiThreaded = False
    MultiCast = False
    MultiCastIpTTL = 1
    FlushTimeout = 60
    SendFlags = wsSendNormal
    LingerOnOff = wsLingerOn
    LingerTimeout = 0
    KeepAliveOnOff = wsKeepAliveOff
    KeepAliveTime = 0
    KeepAliveInterval = 0
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    LastError = 0
    ReuseAddr = False
    ComponentOptions = []
    ListenBacklog = 5
    ReqVerLow = 1
    ReqVerHigh = 1
    OnDataAvailable = sctRecClientOldDataAvailable
    OnSessionConnected = sctRecClientOldSessionConnected
    Left = 960
    Top = 648
  end
  object tmrSendAGE0X: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = tmrSendAGE0XTimer
    Left = 248
    Top = 568
  end
  object TMmRegProxy: TTimer
    Enabled = False
    Interval = 7000
    OnTimer = TMmRegProxyTimer
    Left = 624
    Top = 208
  end
  object TmReconect: TTimer
    Enabled = False
    OnTimer = TmReconectTimer
    Left = 720
    Top = 209
  end
  object TmpEquipeHrTrab: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = TmpEquipeHrTrabTimer
    Left = 248
    Top = 624
  end
  object TmrMsg: TTimer
    Enabled = False
    OnTimer = TmrMsgTimer
    Left = 360
    Top = 440
  end
end
