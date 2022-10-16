object frmCadastrarCds: TfrmCadastrarCds
  Left = 0
  Top = 0
  Caption = 'frmCadastrarCds'
  ClientHeight = 351
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
    Top = 32
    Width = 68
    Height = 16
    Caption = 'C'#243'digo Cd:'
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
    Top = 72
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
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 115
    Height = 16
    Caption = 'C'#243'digo de Barras:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 152
    Width = 39
    Height = 16
    Caption = 'Valor:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 192
    Width = 82
    Height = 16
    Caption = 'Observa'#231#227'o:'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 232
    Width = 51
    Height = 16
    Caption = 'G'#234'nero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 143
    Top = 31
    Width = 199
    Height = 21
    DataField = 'CODIGOCD'
    DataSource = dtmProjetoFinal.dtsCds
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 143
    Top = 71
    Width = 199
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dtmProjetoFinal.dtsCds
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 143
    Top = 111
    Width = 199
    Height = 21
    DataField = 'CODIGOBARRA'
    DataSource = dtmProjetoFinal.dtsCds
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 143
    Top = 151
    Width = 134
    Height = 21
    DataField = 'VALOR'
    DataSource = dtmProjetoFinal.dtsCds
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 143
    Top = 191
    Width = 336
    Height = 21
    DataField = 'OBSERVACAO'
    DataSource = dtmProjetoFinal.dtsCds
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 165
    Top = 280
    Width = 252
    Height = 55
    DataSource = dtmProjetoFinal.dtsCds
    VisibleButtons = [nbPost, nbCancel, nbRefresh]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 143
    Top = 230
    Width = 199
    Height = 21
    DataField = 'CODIGOGENERO'
    DataSource = dtmProjetoFinal.dtsCds
    KeyField = 'CODIGOGENERO'
    ListField = 'DESCRICAO'
    ListSource = dtmProjetoFinal.dtsGenero
    TabOrder = 6
  end
end
