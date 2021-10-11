object Form1: TForm1
  Left = 292
  Top = 112
  BiDiMode = bdRightToLeftReadingOnly
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1077#1085#1085#1080#1089
  ClientHeight = 234
  ClientWidth = 392
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 392
    Height = 219
    Align = alClient
    OnClick = Image1Click
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 120
    Top = 96
    Width = 136
    Height = 28
    Cursor = crHandPoint
    Caption = #1053#1072#1095#1072#1090#1100' '#1080#1075#1088#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
    OnClick = Label1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 219
    Width = 392
    Height = 15
    Color = clSilver
    Panels = <>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 16
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 64
    Top = 16
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 16
    object N1: TMenuItem
      Caption = '&'#1052#1077#1085#1102
      OnClick = N1Click
      object N2: TMenuItem
        Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N6: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      OnClick = N6Click
      object N7: TMenuItem
        Caption = #1054' '#1080#1075#1088#1077'...'
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1054' '#1072#1074#1090#1086#1088#1077
        OnClick = N8Click
      end
    end
  end
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 24
    Top = 56
  end
end
