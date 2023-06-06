program testeGlobalSistemas;

uses
  Vcl.Forms,
  LoginUnit in 'src/LoginUnit.pas' {LoginForm},
  PeopleUnit in 'src/PeopleUnit.pas' {PeopleForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TPeopleForm, PeopleForm);
  Application.Run;
end.
