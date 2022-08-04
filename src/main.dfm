object FRMain: TFRMain
  Left = 0
  Top = 0
  Caption = 'FRMain'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnSendCompose: TButton
    Left = 40
    Top = 0
    Width = 225
    Height = 65
    Cursor = crHandPoint
    Caption = 'send(compose)'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Microsoft JhengHei'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSendComposeClick
  end
  object btnSendDontCompose: TButton
    Left = 40
    Top = 71
    Width = 225
    Height = 65
    Cursor = crHandPoint
    Caption = 'send(dont compose)'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Microsoft JhengHei'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnSendDontComposeClick
  end
  object btnDisplaySettings: TButton
    Left = 320
    Top = 0
    Width = 225
    Height = 65
    Cursor = crHandPoint
    Caption = 'displaySettings()'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Microsoft JhengHei'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnDisplaySettingsClick
  end
  object btnDisplayComposer: TButton
    Left = 320
    Top = 71
    Width = 225
    Height = 65
    Cursor = crHandPoint
    Caption = 'displayComposer()'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Microsoft JhengHei'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnDisplayComposerClick
  end
  object testMode: TCheckBox
    Left = 416
    Top = 168
    Width = 121
    Height = 17
    Caption = 'Test mode'
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
