program emailSender;

uses
  Vcl.Forms,
  main in 'src\main.pas' {FRMain},
  email in 'src\email.pas' {FREmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
