unit FrmMiniBot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    Treinar: TTabSheet;
    Ca�a: TTabSheet;
    PageControl: TPageControl;
    gpbTreinar: TGroupBox;
    btnIniciar: TButton;
    Label1: TLabel;
    lbdSpell: TLabeledEdit;
    Label2: TLabel;
    lbdMana: TLabeledEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    Combobox: TComboBox;
    lblManaTotal: TLabel;
    castSpell: TTimer;
    endereco: TTimer;
    kick: TTimer;
    food: TTimer;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
    PH : THandle;
    PID, ThID : DWORD;
    H : THandle;

implementation

{$R *.dfm}

//Fun��o para escrever na janela do tibia
function say(mensagem: string) :string;
var h: HWND; letra: Integer; B: Byte;
begin
  h := FindWindow(nil,'Tibia');
  for letra := 1 to Length(mensagem) do
  begin
    B := Byte(mensagem[letra]);
    SendMessage(h, WM_CHAR, B, 0);
  end;
  SendMessage(h, WM_CHAR, 13, 0);
end;

//Fun��o para ler endere�o de memoria do Tibia
{function LerInt(Address: Integer): Integer;
var value:integer; Ler :THandle;
begin
  H := FindWindow(nil, 'Calculadora');
  ThID := GetWindowThreadProcessId(H, @PID);
  ReadProcessMemory(PH, Ptr(Address), @Value, 4, Ler);
  Result:=value;
end; }

//Fun��o para apertar uma determinada tecla na janela do Tibia
function hotkey(x :string): string;
var h: HWND; i : integer;
begin
  if x ='F1' then
  i := 112
  else if x ='F2' then
  i := 113
  else if x ='F3' then
  i := 114
  else if x ='F4' then
  i := 115
  else if x ='F5' then
  i := 116
  else if x ='F6' then
  i := 117
  else if x ='F7' then
  i := 118
  else if x ='F8' then
  i := 119
  else if x ='F9' then
  i := 120
  else if x ='F10' then
  i := 121
  else if x ='F11' then
  i := 122
  else if x ='F12' then
  i := 123;

  h := FindWindow(nil, 'Tibia');  // acha a janela do tibia
  SendMessage(h, WM_KEYdown, i, 0);   //pressiona a tecla
  SendMessage(h, WM_KEYUP, i, 0);  //solta tecla
  end;


  procedure TFrmPrincipal.FormShow(Sender: TObject);
var Value, Address, Result :integer; Ler :THandle;

begin



  H := FindWindow(nil, 'Calculadora');
  ThID := GetWindowThreadProcessId(H, @PID);
  ReadProcessMemory(H, Ptr(ThID), @Value, 4, Ler);
  Result:=value;
  ShowMessage(IntToStr(Address));
end;

end.
