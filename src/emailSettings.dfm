object FRMEmailSettings: TFRMEmailSettings
  Left = 0
  Top = 0
  Width = 592
  Height = 540
  TabOrder = 0
  object actions: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'actions'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 640
    object btnCommit: TButton
      Left = 0
      Top = 0
      Width = 200
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Commit'
      TabOrder = 0
      OnClick = btnCommitClick
      ExplicitLeft = 280
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnCancel: TButton
      Left = 200
      Top = 0
      Width = 200
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
      ExplicitLeft = 432
      ExplicitHeight = 41
    end
  end
  object tabControlEmailSettings: TPageControl
    Left = 0
    Top = 40
    Width = 592
    Height = 500
    ActivePage = tabGeneral
    Align = alClient
    Constraints.MaxHeight = 500
    Constraints.MinHeight = 500
    TabOrder = 1
    object tabGeneral: TTabSheet
      Caption = #915#949#957#953#954#945
      object lblCC: TLabel
        Left = 111
        Top = 36
        Width = 20
        Height = 21
        Caption = 'cc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBCC: TLabel
        Left = 101
        Top = 100
        Width = 30
        Height = 21
        Caption = 'bcc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblConfirmRetrieval: TLabel
        Left = 3
        Top = 163
        Width = 128
        Height = 21
        Caption = 'confirm retrieval'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSubject: TLabel
        Left = 76
        Top = 211
        Width = 55
        Height = 21
        Caption = 'subject'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblResources: TLabel
        Left = 59
        Top = 263
        Width = 72
        Height = 21
        Caption = 'resources'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBody: TLabel
        Left = 92
        Top = 359
        Width = 39
        Height = 21
        Caption = 'body'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtBody: TMemo
        Left = 152
        Top = 318
        Width = 257
        Height = 99
        Lines.Strings = (
          'yo thats the body')
        TabOrder = 0
      end
      object edtConfirmRetrieval: TEdit
        Left = 152
        Top = 161
        Width = 257
        Height = 23
        TabOrder = 1
      end
      object edtCC: TMemo
        Left = 152
        Top = 22
        Width = 257
        Height = 40
        Lines.Strings = (
          'yo thants the cc')
        TabOrder = 2
      end
      object edtBCC: TMemo
        Left = 152
        Top = 94
        Width = 257
        Height = 40
        Lines.Strings = (
          'yo thats thats the bcc')
        TabOrder = 3
      end
      object edtSubject: TEdit
        Left = 152
        Top = 213
        Width = 257
        Height = 23
        TabOrder = 4
        Text = 'yo thats the subject'
      end
      object edtResources: TEdit
        Left = 152
        Top = 265
        Width = 257
        Height = 23
        TabOrder = 5
      end
    end
    object tabServiceProvider: TTabSheet
      Caption = #928#945#961#959#967#959#962' Email'
      ImageIndex = 1
      object lblSmtpServer: TLabel
        Left = 40
        Top = 24
        Width = 104
        Height = 25
        Caption = 'smtp server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSmtpPort: TLabel
        Left = 53
        Top = 75
        Width = 89
        Height = 25
        Caption = 'smtp port'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSmtpPassword: TLabel
        Left = 8
        Top = 187
        Width = 134
        Height = 25
        Caption = 'smtp password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSmtpUsername: TLabel
        Left = 8
        Top = 131
        Width = 136
        Height = 25
        Caption = 'smtp username'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtSmtpServer: TEdit
        Left = 160
        Top = 24
        Width = 257
        Height = 29
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'mail.bratnet.gr'
      end
      object edtSmtpPort: TEdit
        Left = 160
        Top = 75
        Width = 257
        Height = 29
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '465'
      end
      object edtSmtpUsername: TEdit
        Left = 160
        Top = 131
        Width = 257
        Height = 29
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'pavlos@bratnet.gr'
      end
      object edtSmtpPassword: TEdit
        Left = 160
        Top = 187
        Width = 257
        Height = 29
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'brat123#$%n3t'
      end
    end
  end
end
