program emailSender;

uses
  Vcl.Forms,
  Main in 'src\main.pas' {FRMain} ,
  Email in 'src\email.pas' {FREmail} ,
  EmailSettings in 'src\emailSettings.pas' {FRMEmailSettings: TFrame} ,
  EmailComposer in 'src\emailComposer.pas' {FRMEmailComposer: TFrame} ,
  EmailAgents in 'src\email-agents\emailAgents.pas',
  EmailAgentInternetCleverSuite
      in 'src\email-agents\emailAgentInternetCleverSuite.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
