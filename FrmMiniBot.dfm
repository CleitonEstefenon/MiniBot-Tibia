﻿object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Mini Bot Tibia'
  ClientHeight = 148
  ClientWidth = 412
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 412
    Height = 148
    ActivePage = Treinar
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Treinar: TTabSheet
      Caption = 'Treinar'
      object gpbTreinar: TGroupBox
        Left = 0
        Top = 0
        Width = 404
        Height = 118
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 19
          Top = 8
          Width = 37
          Height = 15
          Caption = 'Magia:'
        end
        object Label2: TLabel
          Left = 221
          Top = 8
          Width = 34
          Height = 15
          Caption = 'Mana:'
        end
        object Label3: TLabel
          Left = 261
          Top = 92
          Width = 34
          Height = 15
          Caption = 'Mana:'
        end
        object lblManaTotal: TLabel
          Left = 301
          Top = 92
          Width = 81
          Height = 15
          Caption = '1'
        end
        object btnIniciar: TButton
          Left = 4
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Iniciar'
          TabOrder = 0
        end
        object lbdMana: TLabeledEdit
          Left = 261
          Top = 5
          Width = 121
          Height = 23
          EditLabel.Width = 48
          EditLabel.Height = 15
          EditLabel.Caption = 'lbdMana'
          TabOrder = 1
        end
        object lbdSpell: TLabeledEdit
          Left = 62
          Top = 5
          Width = 121
          Height = 23
          EditLabel.Width = 43
          EditLabel.Height = 15
          EditLabel.Caption = 'lbdSpell'
          TabOrder = 2
        end
        object CheckBox1: TCheckBox
          Left = 19
          Top = 48
          Width = 121
          Height = 17
          Caption = 'Manter-se Ativo'
          TabOrder = 3
        end
        object CheckBox2: TCheckBox
          Left = 261
          Top = 48
          Width = 52
          Height = 17
          Caption = 'Comer'
          TabOrder = 4
        end
        object Combobox: TComboBox
          Left = 315
          Top = 45
          Width = 67
          Height = 23
          Style = csDropDownList
          TabOrder = 5
        end
      end
    end
    object Caça: TTabSheet
      Caption = 'Ca'#231'a'
      ImageIndex = 1
    end
  end
  object castSpell: TTimer
    Enabled = False
    Interval = 700
    Left = 88
    Top = 88
  end
  object endereco: TTimer
    Left = 232
    Top = 88
  end
  object kick: TTimer
    Enabled = False
    Interval = 60000
    Left = 136
    Top = 88
  end
  object food: TTimer
    Enabled = False
    Interval = 30000
    Left = 184
    Top = 88
  end
end
