object FRMEmailComposer: TFRMEmailComposer
  Left = 0
  Top = 0
  Width = 668
  Height = 415
  Constraints.MaxHeight = 415
  Constraints.MinHeight = 415
  Constraints.MinWidth = 666
  TabOrder = 0
  object lblSubject: TLabel
    Left = 21
    Top = 166
    Width = 62
    Height = 21
    Caption = 'subject:'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBCC: TLabel
    Left = 21
    Top = 129
    Width = 33
    Height = 21
    Caption = 'bcc:'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRecipients: TLabel
    Left = 21
    Top = 94
    Width = 20
    Height = 21
    Caption = 'to:'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFrom: TLabel
    Left = 450
    Top = 14
    Width = 181
    Height = 23
    Caption = 'pavlos.noulis@gmail.com'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAttachments: TLabel
    Left = 528
    Top = 43
    Width = 103
    Height = 23
    Caption = 'attachments:'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Actions: TPanel
    Left = 0
    Top = 375
    Width = 668
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Actions'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 440
    ExplicitWidth = 640
    object btnSendEmail: TButton
      Left = 468
      Top = 0
      Width = 200
      Height = 40
      Cursor = crHandPoint
      Align = alRight
      Caption = 'send email'
      TabOrder = 0
      OnClick = btnSendEmailClick
      ExplicitLeft = 200
      ExplicitTop = 1
      ExplicitHeight = 38
    end
    object btnCancel: TButton
      Left = 268
      Top = 0
      Width = 200
      Height = 40
      Cursor = crHandPoint
      Align = alRight
      Caption = 'cancel'
      TabOrder = 1
      OnClick = btnCancelClick
      ExplicitLeft = 233
      ExplicitTop = 1
      ExplicitHeight = 38
    end
  end
  object edtBody: TMemo
    AlignWithMargins = True
    Left = 0
    Top = 204
    Width = 668
    Height = 168
    Margins.Left = 0
    Margins.Right = 0
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 269
    ExplicitWidth = 630
  end
  object edtSubject: TEdit
    Left = 114
    Top = 129
    Width = 533
    Height = 26
    Margins.Bottom = 0
    BorderStyle = bsNone
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 114
    Top = 166
    Width = 533
    Height = 26
    Margins.Bottom = 0
    BorderStyle = bsNone
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 114
    Top = 94
    Width = 533
    Height = 26
    Margins.Bottom = 0
    BorderStyle = bsNone
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
