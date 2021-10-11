program TennisProject;

uses
  Forms,
  tennis in 'версия 2.0\tennis.pas' {Form1},
  InfoUnit in 'InfoUnit.pas' {Form2},
  AvtorUnit in 'AvtorUnit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
