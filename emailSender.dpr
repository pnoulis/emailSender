program emailSender;

uses
  Vcl.Forms,
  main in 'src\main.pas' {FRMain},
  email in 'src\email.pas' {FREmail},
  emailSettings in 'src\emailSettings.pas' {FRMEmailSettings: TFrame},
  emailComposer in 'src\emailComposer.pas' {FRMEmailComposer: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
