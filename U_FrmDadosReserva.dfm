object FrmDadosReserva: TFrmDadosReserva
  Left = 192
  Top = 103
  Width = 279
  Height = 270
  Caption = 'Dados da reserva'
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
  object LabHotel: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 13
    Caption = 'Nome do hotel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabQuarto: TLabel
    Left = 8
    Top = 40
    Width = 84
    Height = 13
    Caption = 'Tipo de quarto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabPeriodo: TLabel
    Left = 8
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Período'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabA: TLabel
    Left = 184
    Top = 72
    Width = 8
    Height = 13
    Caption = 'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabCodigo: TLabel
    Left = 8
    Top = 104
    Width = 40
    Height = 13
    Caption = 'Código'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabTaxa: TLabel
    Left = 8
    Top = 136
    Width = 136
    Height = 13
    Caption = 'Valor da taxa           R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabPrazo: TLabel
    Left = 8
    Top = 168
    Width = 128
    Height = 13
    Caption = 'Prazo para pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabDias: TLabel
    Left = 180
    Top = 168
    Width = 24
    Height = 13
    Caption = 'dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnOk: TBitBtn
    Left = 104
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 7
    OnClick = BtnOkClick
    Kind = bkOK
  end
  object EdtHotel: TEdit
    Left = 144
    Top = 4
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 15
    TabOrder = 0
  end
  object EdtQuarto: TEdit
    Left = 144
    Top = 36
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 15
    TabOrder = 1
  end
  object MskDtInicio: TMaskEdit
    Left = 112
    Top = 68
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object MskDtTermino: TMaskEdit
    Left = 200
    Top = 68
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object EdtCodigo: TEdit
    Left = 144
    Top = 100
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 4
  end
  object EdtTaxa: TEdit
    Left = 144
    Top = 132
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 5
  end
  object EdtPrazo: TEdit
    Left = 144
    Top = 164
    Width = 33
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 3
    TabOrder = 6
  end
end
