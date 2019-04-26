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
    cmbHotkeyFood: TComboBox;
    lblManaTotal: TLabel;
    castSpell: TTimer;
    endereco: TTimer;
    kick: TTimer;
    food: TTimer;
    Label4: TLabel;
    procedure castSpellTimer(Sender: TObject);
    procedure enderecoTimer(Sender: TObject);
    procedure kickTimer(Sender: TObject);
    procedure foodTimer(Sender: TObject);
    procedure btnIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbHotkeyFoodChange(Sender: TObject);
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

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CheckBox2.Enabled := False;
end;

procedure TFrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  CastSpell.Enabled := not(CastSpell.Enabled);
  Food.Enabled := not(Food.Enabled);
  Kick.Enabled := not(Kick.Enabled);
  if Checkbox1.checked then
    Kick.Enabled := true
  else
    Kick.Enabled := false;
  if Checkbox2.checked then
    Food.Enabled := true
  else
    Food.Enabled := false;
  if (lbdSpell.Text <> '') and (lbdMana.Text <> '') then
    CastSpell.Enabled := true
  else
    CastSpell.Enabled := false;
  if (Kick.Enabled) or (Food.Enabled) or (CastSpell.Enabled) then
    btnIniciar.Caption := 'Stop'
  else
    btnIniciar.Caption := 'Start';
  end;

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
function LerInt(Address: Integer): Integer;
var
  value:integer;
  ler :THandle;
begin
  H := FindWindow(nil, 'Tibia');
  ThID := GetWindowThreadProcessId(H, @PID);
  PH := OpenProcess(PROCESS_ALL_ACCESS,FALSE,PID);
  ReadProcessMemory(PH, Ptr(Address), @Value, 4, Ler);
  Result:=value;
end;

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

// Se a mana do player for maior que a mana que foi digitada no component mana, entao vai falar a magia
procedure TFrmPrincipal.castSpellTimer(Sender: TObject);
begin
  if StrToInt(lblManaTotal.Caption) > (StrToInt(lbdMana.Text)) then
    say(lbdSpell.text);
end;

procedure TFrmPrincipal.cmbHotkeyFoodChange(Sender: TObject);
begin
  if cmbHotkeyFood.Text <> 'Selecione' then
    CheckBox2.Enabled := True
  else
    CheckBox2.Enabled := False;
end;

// Vai ler o endere�o da mana do personagem e transforma em numero para o label2
procedure TFrmPrincipal.enderecoTimer(Sender: TObject);
begin
  lblManaTotal.caption := IntToStr(Lerint($0081CE5C));
end;

// Pressiona oque tiver no Texto do Combobox
procedure TFrmPrincipal.foodTimer(Sender: TObject);
begin
  //hotkey(cmbHotkeyFood.Text)
  ShowMessage(cmbHotkeyFood.Text);
end;

procedure TFrmPrincipal.kickTimer(Sender: TObject);
Var
TibiaHandle : THandle;
begin
  TibiaHandle:=FindWindow(nil,'Tibia');
  SendMessage(TibiaHandle,WM_KEYDOWN,VK_CONTROL,1);
  SendMessage(TibiaHandle,WM_KEYDOWN,VK_UP,1);
  SendMessage(TibiaHandle,WM_KEYUP,VK_UP,1);
  SendMessage(TibiaHandle,WM_KEYDOWN,VK_DOWN,1);
  SendMessage(TibiaHandle,WM_KEYUP,VK_DOWN,1);
  SendMessage(TibiaHandle,WM_KEYUP,VK_CONTROL,1);
end;

end.
