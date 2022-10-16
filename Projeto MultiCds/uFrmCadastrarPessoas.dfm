object frmManutencaoCadastrarPessoas: TfrmManutencaoCadastrarPessoas
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de Pessoas - Cadastrar'
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
    Width = 98
    Height = 16
    Caption = 'C'#243'digo Pessoa:'
    Enabled = False
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
    Width = 40
    Height = 16
    Caption = 'Nome:'
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
    Width = 27
    Height = 16
    Caption = 'CPF:'
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
    Width = 69
    Height = 16
    Caption = 'Data Nasc.'
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
    Width = 53
    Height = 16
    Caption = 'Us'#250'ario:'
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
    Width = 45
    Height = 16
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 31
    Width = 161
    Height = 21
    DataField = 'CODIGOPESSOA'
    DataSource = dtmProjetoFinal.dtsPessoa
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 71
    Width = 161
    Height = 21
    DataField = 'NOME'
    DataSource = dtmProjetoFinal.dtsPessoa
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 111
    Width = 161
    Height = 21
    DataField = 'CPF'
    DataSource = dtmProjetoFinal.dtsPessoa
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 128
    Top = 151
    Width = 159
    Height = 21
    DataField = 'DATANASC'
    DataSource = dtmProjetoFinal.dtsPessoa
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 128
    Top = 191
    Width = 161
    Height = 21
    DataField = 'USUARIO'
    DataSource = dtmProjetoFinal.dtsPessoa
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 128
    Top = 231
    Width = 161
    Height = 21
    DataField = 'SENHA'
    DataSource = dtmProjetoFinal.dtsPessoa
    PasswordChar = '*'
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 29
    Top = 280
    Width = 252
    Height = 55
    DataSource = dtmProjetoFinal.dtsPessoa
    VisibleButtons = [nbPost, nbCancel, nbRefresh]
    TabOrder = 6
    OnClick = DBNavigator1Click
  end
end
