object frmManutencaoGenero: TfrmManutencaoGenero
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de G'#234'nero - Listar'
  ClientHeight = 463
  ClientWidth = 766
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
    Left = 8
    Top = 12
    Width = 68
    Height = 16
    Caption = 'Pesquisar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SearchBox1: TSearchBox
    Left = 82
    Top = 10
    Width = 676
    Height = 21
    TabOrder = 0
    Text = 'SearchBox1'
  end
  object DBListBox1: TDBListBox
    Left = 8
    Top = 40
    Width = 750
    Height = 345
    ItemHeight = 13
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 391
    Width = 332
    Height = 64
    DataSource = dtmProjetoFinal.dtsGenero
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbRefresh]
    TabOrder = 2
    BeforeAction = DBNavigator1BeforeAction
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 35
    Width = 750
    Height = 350
    DataSource = dtmProjetoFinal.dtsGenero
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
