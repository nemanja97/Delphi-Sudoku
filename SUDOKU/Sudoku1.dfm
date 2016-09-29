object Form1: TForm1
  Left = 264
  Top = 87
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Sudoku'
  ClientHeight = 725
  ClientWidth = 1142
  Color = clInactiveCaptionText
  Constraints.MaxHeight = 765
  Constraints.MaxWidth = 1160
  Constraints.MinHeight = 765
  Constraints.MinWidth = 1160
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 752
    Top = 80
    Width = 48
    Height = 96
    Caption = 'S'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGradientInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 752
    Top = 168
    Width = 52
    Height = 96
    Caption = 'U'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 752
    Top = 248
    Width = 52
    Height = 96
    Caption = 'D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 748
    Top = 336
    Width = 60
    Height = 96
    Caption = 'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 752
    Top = 424
    Width = 48
    Height = 96
    Caption = 'K'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 752
    Top = 512
    Width = 52
    Height = 96
    Caption = 'U'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -72
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 713
    Height = 713
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 8
      Top = 8
      Width = 700
      Height = 700
      ColCount = 9
      Constraints.MaxHeight = 700
      Constraints.MaxWidth = 700
      Constraints.MinHeight = 700
      Constraints.MinWidth = 700
      DefaultColWidth = 76
      DefaultRowHeight = 76
      FixedCols = 0
      RowCount = 9
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentFont = False
      TabOrder = 0
      OnDrawCell = StringGrid1DrawCell
      OnSelectCell = StringGrid1SelectCell
    end
  end
  object Panel2: TPanel
    Left = 840
    Top = 8
    Width = 297
    Height = 713
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 281
      Height = 41
      Caption = 'NOVA TABLICA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 64
      Width = 281
      Height = 41
      Caption = 'SNIMI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 112
      Width = 281
      Height = 41
      Caption = 'UCITAJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 160
      Width = 281
      Height = 41
      Caption = 'IGRAJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Panel3: TPanel
      Left = 24
      Top = 616
      Width = 249
      Height = 73
      TabOrder = 4
      object Label7: TLabel
        Left = 96
        Top = 8
        Width = 49
        Height = 20
        Caption = 'Vreme'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 120
        Top = 40
        Width = 5
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Button6: TButton
      Left = 8
      Top = 208
      Width = 281
      Height = 41
      Caption = 'PREKINI IGRU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button6Click
    end
    object Panel8: TPanel
      Left = 8
      Top = 272
      Width = 281
      Height = 321
      TabOrder = 6
      object Button7: TButton
        Left = 8
        Top = 8
        Width = 89
        Height = 65
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 96
        Top = 8
        Width = 89
        Height = 65
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 184
        Top = 8
        Width = 89
        Height = 65
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button9Click
      end
      object Button15: TButton
        Left = 184
        Top = 192
        Width = 89
        Height = 65
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button15Click
      end
      object Button14: TButton
        Left = 96
        Top = 192
        Width = 89
        Height = 65
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button14Click
      end
      object Button12: TButton
        Left = 184
        Top = 96
        Width = 89
        Height = 65
        Caption = '6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Button12Click
      end
      object Button11: TButton
        Left = 96
        Top = 96
        Width = 89
        Height = 65
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = Button11Click
      end
      object Button10: TButton
        Left = 8
        Top = 96
        Width = 89
        Height = 65
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Button10Click
      end
      object Button13: TButton
        Left = 8
        Top = 192
        Width = 89
        Height = 65
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button13Click
      end
      object Button5: TButton
        Left = 8
        Top = 272
        Width = 265
        Height = 41
        Caption = 'BRISI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = Button5Click
      end
    end
  end
  object Panel4: TPanel
    Left = 8
    Top = 479
    Width = 710
    Height = 5
    BevelOuter = bvNone
    Constraints.MaxHeight = 5
    Constraints.MaxWidth = 710
    Constraints.MinHeight = 5
    Constraints.MinWidth = 710
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 8
    Top = 247
    Width = 710
    Height = 5
    BevelOuter = bvNone
    Constraints.MaxHeight = 5
    Constraints.MaxWidth = 710
    Constraints.MinHeight = 5
    Constraints.MinWidth = 710
    TabOrder = 3
  end
  object Panel6: TPanel
    Left = 248
    Top = 16
    Width = 5
    Height = 704
    AutoSize = True
    BevelOuter = bvNone
    Constraints.MaxHeight = 704
    Constraints.MaxWidth = 5
    Constraints.MinHeight = 704
    Constraints.MinWidth = 5
    TabOrder = 4
  end
  object Panel7: TPanel
    Left = 475
    Top = 16
    Width = 5
    Height = 704
    BevelOuter = bvNone
    Constraints.MaxHeight = 704
    Constraints.MaxWidth = 5
    Constraints.MinHeight = 704
    Constraints.MinWidth = 5
    TabOrder = 5
  end
  object Memo1: TMemo
    Left = 736
    Top = 648
    Width = 89
    Height = 65
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
    Visible = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 736
    Top = 608
  end
  object OpenDialog1: TOpenDialog
    Left = 800
    Top = 608
  end
  object SaveDialog1: TSaveDialog
    Left = 768
    Top = 608
  end
end
