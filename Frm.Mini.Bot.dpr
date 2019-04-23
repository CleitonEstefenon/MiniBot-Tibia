program Frm.Mini.Bot;

uses
  Vcl.Forms,
  FrmMiniBot in 'FrmMiniBot.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
