object frmCalculadoraBasicaFuncao: TfrmCalculadoraBasicaFuncao
  Left = 0
  Top = 0
  Caption = 'Calculadora B'#225'sica Fun'#231#227'o'
  ClientHeight = 117
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 19
    Width = 51
    Height = 16
    Caption = 'Valor 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 51
    Width = 51
    Height = 16
    Caption = 'Valor 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 83
    Width = 70
    Height = 16
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 97
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = prcKeyPress
  end
  object edtValor2: TEdit
    Left = 97
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = prcKeyPress
  end
  object edtResultado: TEdit
    Left = 97
    Top = 80
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object btnSomar: TButton
    Left = 240
    Top = 19
    Width = 40
    Height = 42
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = prcBtnCalcular
  end
  object btnSubtrair: TButton
    Left = 240
    Top = 62
    Width = 40
    Height = 42
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = prcBtnCalcular
  end
  object btnMultiplicar: TButton
    Left = 286
    Top = 19
    Width = 40
    Height = 42
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = prcBtnCalcular
  end
  object btnDividir: TButton
    Left = 286
    Top = 62
    Width = 40
    Height = 42
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = prcBtnCalcular
  end
  object btnPercentual: TButton
    Left = 332
    Top = 18
    Width = 40
    Height = 85
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = prcBtnCalcular
  end
end