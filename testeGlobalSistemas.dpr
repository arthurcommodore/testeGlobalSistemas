program testeGlobalSistemas;

uses
  Vcl.Forms,
  Login in 'src\Login.pas' {form_login},
  PeopleUnit in 'src/PeopleUnit.pas' {PeopleForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_login, form_login);
  Application.CreateForm(TPeopleForm, PeopleForm);
  Application.Run;
end.
