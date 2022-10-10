object cadastroClientes: TcadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 380
  ClientWidth = 668
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 668
    Height = 380
    ActivePage = pgCadastroCliente
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 681
    object pgConsultaCliente: TTabSheet
      Caption = 'Consulta Cliente'
      ExplicitWidth = 673
      object TLabel
        Left = 3
        Top = 24
        Width = 61
        Height = 16
        Caption = 'Consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 56
        Width = 582
        Height = 293
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btnConsulta: TDBNavigator
        Left = 591
        Top = 56
        Width = 65
        Height = 291
        DataSource = dtmCRM.dtsCorretor
        VisibleButtons = [nbInsert, nbDelete, nbEdit]
        Kind = dbnVertical
        ConfirmDelete = False
        TabOrder = 1
        OnClick = btnConsultaClick
      end
    end
    object pgCadastroCliente: TTabSheet
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 46
        Top = 24
        Width = 48
        Height = 16
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 54
        Top = 63
        Width = 40
        Height = 16
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 67
        Top = 106
        Width = 27
        Height = 16
        Caption = 'CPF:'
      end
      object Label4: TLabel
        Left = 45
        Top = 149
        Width = 49
        Height = 16
        Caption = 'Celular:'
      end
      object Label5: TLabel
        Left = -4
        Top = 192
        Width = 98
        Height = 16
        Caption = 'Renda Familiar:'
      end
      object Label6: TLabel
        Left = 57
        Top = 237
        Width = 37
        Height = 16
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 21
        Width = 121
        Height = 24
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 60
        Width = 121
        Height = 22
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 103
        Width = 121
        Height = 24
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 146
        Width = 121
        Height = 24
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 189
        Width = 121
        Height = 24
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 234
        Width = 121
        Height = 24
        TabOrder = 5
      end
    end
  end
end
