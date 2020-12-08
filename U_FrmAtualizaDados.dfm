object FrmAtualizaDados: TFrmAtualizaDados
  Left = 246
  Top = 145
  Width = 424
  Height = 133
  Caption = 'Atualizar dados pessoais'
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
  object LabEndereco: TLabel
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Endereço'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabTelefone: TLabel
    Left = 8
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtTelefone: TEdit
    Left = 64
    Top = 36
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtEndereco: TEdit
    Left = 64
    Top = 4
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object BtnOk: TBitBtn
    Left = 112
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = BtnOkClick
    Kind = bkOK
  end
  object BtnCancela: TBitBtn
    Left = 216
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 3
    Kind = bkCancel
  end
end
