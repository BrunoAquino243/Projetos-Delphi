object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Curso de Delphi'
  ClientHeight = 393
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Forte'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 22
  object Button1: TButton
    Left = 328
    Top = 152
    Width = 75
    Height = 25
    Caption = 'ok'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EdtMensagem: TEdit
    Left = 296
    Top = 94
    Width = 150
    Height = 20
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Forte'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'teste 2'
  end
end
