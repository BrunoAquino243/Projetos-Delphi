object gerador_senhas: Tgerador_senhas
  Left = 0
  Top = 0
  Caption = 'Gerador de Senhas'
  ClientHeight = 242
  ClientWidth = 360
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
  object lb_gerado: TLabel
    Left = 280
    Top = 334
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object radio_opcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 329
    Height = 105
    Caption = 'A Senha Dever'#225' Ser Composta De:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'N'#250'meros'
      'Letras Min'#250'sculas '
      'Letras Mai'#250'sculas'
      'Letras Mai'#250'sculas e N'#250'meros'
      'Letras Min'#250'sculas e N'#250'meros'
      'Letras (A),(a) e N'#250'meros')
    TabOrder = 0
  end
  object edit_caracter: TEdit
    Left = 8
    Top = 136
    Width = 62
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0'
  end
  object edit_senha: TEdit
    Left = 98
    Top = 136
    Width = 239
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object UpDown1: TUpDown
    Left = 76
    Top = 136
    Width = 16
    Height = 24
    Associate = edit_caracter
    TabOrder = 3
  end
  object btn_gerar: TButton
    Left = 136
    Top = 183
    Width = 75
    Height = 42
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn_gerarClick
  end
  object btn_limpar: TButton
    Left = 8
    Top = 184
    Width = 75
    Height = 42
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn_limparClick
  end
  object btn_sair: TButton
    Left = 262
    Top = 184
    Width = 75
    Height = 42
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn_sairClick
  end
end
