object numeros_aleatorios: Tnumeros_aleatorios
  Left = 0
  Top = 0
  Caption = 'N'#250'meros Aleat'#243'rios'
  ClientHeight = 464
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lb_faixa: TLabel
    Left = 8
    Top = 16
    Width = 156
    Height = 16
    Caption = 'Faixa...............................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_gerar: TLabel
    Left = 8
    Top = 63
    Width = 156
    Height = 16
    Caption = 'Gerar At'#233'.......................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_gerados: TLabel
    Left = 8
    Top = 112
    Width = 161
    Height = 16
    Caption = 'N'#250'meros Gerados............'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_repeticoes: TLabel
    Left = 8
    Top = 153
    Width = 161
    Height = 16
    Caption = 'N'#250'mero de Repeti'#231#245'es....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edit_faixa: TEdit
    Left = 166
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edit_gerar: TEdit
    Left = 166
    Top = 55
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edit_repeticoes: TEdit
    Left = 166
    Top = 145
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edit_gerados: TEdit
    Left = 166
    Top = 103
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object barra: TProgressBar
    Left = 8
    Top = 184
    Width = 279
    Height = 25
    TabOrder = 4
  end
  object btn_gerar: TButton
    Left = 192
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Gerar Dados'
    TabOrder = 5
    OnClick = btn_gerarClick
  end
  object btn_manual: TButton
    Left = 192
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Manualmente'
    TabOrder = 6
    OnClick = btn_manualClick
  end
  object btn_of: TButton
    Left = 192
    Top = 431
    Width = 75
    Height = 26
    Caption = 'IndexOF'
    TabOrder = 7
    OnClick = btn_ofClick
  end
  object memo1: TMemo
    Left = 8
    Top = 215
    Width = 152
    Height = 242
    Lines.Strings = (
      '')
    TabOrder = 8
  end
  object edit_of: TEdit
    Left = 166
    Top = 404
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object btn_limpar: TButton
    Left = 192
    Top = 313
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 10
    OnClick = btn_limparClick
  end
  object btn_sair: TButton
    Left = 192
    Top = 357
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 11
    OnClick = btn_sairClick
  end
end
