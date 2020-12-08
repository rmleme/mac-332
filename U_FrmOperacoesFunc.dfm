object FrmOperacoesFunc: TFrmOperacoesFunc
  Left = 260
  Top = 74
  Width = 175
  Height = 177
  Caption = 'Operações'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabCadCliente: TLabel
    Left = 8
    Top = 8
    Width = 151
    Height = 13
    Caption = 'Cadastramento de clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabCadClienteClick
  end
  object LabFazReserva: TLabel
    Left = 8
    Top = 56
    Width = 84
    Height = 13
    Caption = 'Fazer reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabFazReservaClick
  end
  object LabCancelaReserva: TLabel
    Left = 8
    Top = 80
    Width = 87
    Height = 13
    Caption = 'Cancelamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabCancelaReservaClick
  end
  object LabPagaReserva: TLabel
    Left = 8
    Top = 104
    Width = 70
    Height = 13
    Caption = 'Pagamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabPagaReservaClick
  end
  object LabInfoCliente: TLabel
    Left = 8
    Top = 32
    Width = 136
    Height = 13
    Caption = 'Informações de clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabInfoClienteClick
  end
  object LabReativaReserva: TLabel
    Left = 8
    Top = 128
    Width = 136
    Height = 13
    Caption = 'Reativação de reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabReativaReservaClick
  end
end
