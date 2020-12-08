object FrmCadastraUsuarioFunc: TFrmCadastraUsuarioFunc
  Left = 242
  Top = 183
  Width = 425
  Height = 199
  Caption = 'Cadastro de informações do usuário'
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
  object LabEndereco: TLabel
    Left = 8
    Top = 40
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
    Top = 72
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
  object LabRG: TLabel
    Left = 8
    Top = 104
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
    Left = 64
    Top = 4
    Width = 225
    Height = 21
    TabOrder = 0
    OnExit = EdtNomeExit
  end
  object EdtTelefone: TEdit
    Left = 64
    Top = 68
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdtRG: TEdit
    Left = 64
    Top = 100
    Width = 97
    Height = 21
    TabOrder = 3
    OnExit = EdtRGExit
  end
  object EdtEndereco: TEdit
    Left = 64
    Top = 36
    Width = 345
    Height = 21
    TabOrder = 1
  end
  object BtnOk: TBitBtn
    Left = 112
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 4
    OnClick = BtnOkClick
    Kind = bkOK
  end
  object BtnCancela: TBitBtn
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 5
    Kind = bkCancel
  end
end
