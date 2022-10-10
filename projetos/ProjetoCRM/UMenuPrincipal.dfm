object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de CRM para Corretores de Im'#243'veis - Menu Principal'
  ClientHeight = 364
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 456
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Corretores1: TMenuItem
        Caption = 'Corretores'
        OnClick = Corretores1Click
      end
      object Imveis1: TMenuItem
        Caption = 'Im'#243'veis'
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
