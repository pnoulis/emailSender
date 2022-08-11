program emailSender;

uses
  Vcl.Forms,
  Main in 'src\main.pas' {FRMain} ,
  Email in 'src\email.pas' {FREmail} ,
  EmailSettings in 'src\emailSettings.pas' {FRMEmailSettings: TFrame} ,
  EmailComposer in 'src\emailComposer.pas' {FRMEmailComposer: TFrame} ,
  EmailAgents in 'src\email-agents\emailAgents.pas',
  EmailAgentInternetCleverSuite
      in 'src\email-agents\emailAgentInternetCleverSuite.pas',
  UConfig in 'lib\delphi-utils-v1.0.0\src\uConfig.pas',
  UFilesystem in 'lib\delphi-utils-v1.0.0\src\uFilesystem.pas';

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMain, FRMain);
  Application.Run;
end.
