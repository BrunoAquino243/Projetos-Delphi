object frmLacosRepeticao: TfrmLacosRepeticao
  Left = 0
  Top = 0
  Caption = 'La'#231'os de Repeti'#231#227'o'
  ClientHeight = 349
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 41
    Hint = 'Esse bot'#227'o executa um while'
    Caption = 'While'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 97
    Top = 8
    Width = 75
    Height = 41
    Caption = 'Repeat'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 178
    Top = 8
    Width = 75
    Height = 41
    Caption = 'For Do'
    TabOrder = 2
    OnClick = Button3Click
  end
  object btnFibonacci: TButton
    Left = 259
    Top = 8
    Width = 75
    Height = 41
    Caption = 'Fibonacci'
    TabOrder = 3
    OnClick = btnFibonacciClick
  end
end
