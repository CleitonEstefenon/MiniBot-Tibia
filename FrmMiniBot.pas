unit FrmMiniBot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    lbdMana: TLabeledEdit;
    ComboBox1: TComboBox;
    lblSpell: TLabel;
    lblMana: TLabel;
    castSpell: TTimer;
    endereco: TTimer;
    kick: TTimer;
    food: TTimer;
    StartButton: TButton;
    lblManaTotal: TLabel;
    lblManaMana: TLabel;
    lbdSpell: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

end.
