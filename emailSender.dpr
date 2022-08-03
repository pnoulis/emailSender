program emailSender;

uses
  Vcl.Forms,
  main in 'src\main.pas' {FRMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
