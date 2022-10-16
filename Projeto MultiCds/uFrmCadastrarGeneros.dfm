object frmManutencaoCadastrarGenero: TfrmManutencaoCadastrarGenero
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de G'#234'nero - Cadastrar'
  ClientHeight = 273
  ClientWidth = 629
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
  object Label1: TLabel
    Left = 24
    Top = 29
    Width = 98
    Height = 16
    Caption = 'C'#243'digo G'#234'nero:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 69
    Width = 68
    Height = 16
    Caption = 'Descri'#231#227'o:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 26
    Width = 199
    Height = 21
    DataField = 'CODIGOGENERO'
    DataSource = dtmProjetoFinal.dtsGenero
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 66
    Width = 199
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dtmProjetoFinal.dtsGenero
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 37
    Top = 144
    Width = 252
    Height = 55
    DataSource = dtmProjetoFinal.dtsGenero
    VisibleButtons = [nbPost, nbCancel, nbRefresh]
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
end
