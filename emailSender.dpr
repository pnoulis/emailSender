program emailSender;

uses
  Vcl.Forms,
  main in 'src\main.pas' {FRMain},
  email in 'src\email.pas' {FREmail},
  emailSettings in 'src\emailSettings.pas' {FRMEmailSettings: TFrame},
  emailComposer in 'src\emailComposer.pas' {FRMEmailComposer: TFrame},
  emailAgents in 'src\email-agents\emailAgents.pas',
  emailAgentInternetCleverSuite in 'src\email-agents\emailAgentInternetCleverSuite.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
