object FrmInfoClienteBusca: TFrmInfoClienteBusca
  Left = 192
  Top = 103
  Width = 291
  Height = 137
  Caption = 'Informa��es de clientes - busca'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object LabNome: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabRG: TLabel
    Left = 8
    Top = 40
    Width = 19
    Height = 13
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 48
    Top = 4
    Width = 225
    Height = 21
    TabOrder = 0
    OnExit = EdtNomeExit
  end
  object EdtRG: TEdit
    Left = 48
    Top = 36
    Width = 97
    Height = 21
    TabOrder = 1
    OnExit = EdtRGExit
  end
  object BtnBusca: TBitBtn
    Left = 56
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Busca'
    Default = True
    TabOrder = 2
    OnClick = BtnBuscaClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BtnCancela: TBitBtn
    Left = 160
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 3
    Kind = bkCancel
  end
end
