object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 366
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnManutencaoPessoa: TButton
    Left = 200
    Top = 80
    Width = 225
    Height = 49
    Caption = 'Manuten'#231#227'o de Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnManutencaoPessoaClick
  end
  object btnManutencaoGenero: TButton
    Left = 200
    Top = 160
    Width = 225
    Height = 49
    Caption = 'Manuten'#231#227'o de G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnManutencaoGeneroClick
  end
  object btnManutencaoCd: TButton
    Left = 200
    Top = 240
    Width = 225
    Height = 49
    Caption = 'Manuten'#231#227'o de Cds'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnManutencaoCdClick
  end
end
