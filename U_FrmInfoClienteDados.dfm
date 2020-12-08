object FrmInfoClienteDados: TFrmInfoClienteDados
  Left = 195
  Top = 103
  Width = 504
  Height = 343
  Caption = 'Informações de clientes - dados'
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
  object LabAtualizaDados: TLabel
    Left = 176
    Top = 248
    Width = 137
    Height = 13
    Caption = 'Atualiza dados pessoais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabAtualizaDadosClick
  end
  object EdtNome: TEdit
    Left = 64
    Top = 4
    Width = 225
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 0
  end
  object EdtTelefone: TEdit
    Left = 64
    Top = 68
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 2
  end
  object EdtRG: TEdit
    Left = 64
    Top = 100
    Width = 97
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 3
  end
  object EdtEndereco: TEdit
    Left = 64
    Top = 36
    Width = 345
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 1
  end
  object BtnOk: TBitBtn
    Left = 208
    Top = 280
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 5
    Kind = bkOK
  end
  object GrbReservas: TGroupBox
    Left = 8
    Top = 128
    Width = 481
    Height = 105
    Caption = 'Reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object StgReservas: TStringGrid
      Left = 8
      Top = 16
      Width = 465
      Height = 81
      Color = clSilver
      DefaultColWidth = 80
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        94
        43
        96
        115
        94)
    end
  end
end
