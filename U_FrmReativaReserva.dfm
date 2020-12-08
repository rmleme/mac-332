object FrmReativaReserva: TFrmReativaReserva
  Left = 192
  Top = 103
  Width = 280
  Height = 125
  Caption = 'Reativação de reservas'
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
  object LabCodReservas: TLabel
    Left = 8
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Código da reserva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnOk: TBitBtn
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 0
    OnClick = BtnOkClick
    Kind = bkOK
  end
  object BtnCancela: TBitBtn
    Left = 152
    Top = 64
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 1
    Kind = bkCancel
  end
  object CmbCodReservas: TComboBox
    Left = 120
    Top = 4
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
  end
end
