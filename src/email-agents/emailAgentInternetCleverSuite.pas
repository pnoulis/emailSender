unit emailAgentInternetCleverSuite;

interface
uses
  {Own}
  EmailAgents,
  EmailSettings,
  {Own Libs}
  {3rd Libs}
  {System}
  System.SysUtils;

type
  TEmailAgentICS = class(TInterfacedObject, IEmailAgent)
    private
      { GETTERS }
      { SETTERS }
      { METHODS }
    public
      { INTERFACE }
      procedure Send(EmailSettings: TFRMEmailSettings);
      procedure Test(EmailSettings: TFRMEmailSettings; const Fail: Boolean);
  end;

implementation
uses
  {Own}
  {Own Libs}
  {3rd Libs}
  ClMailMessage,
  ClTcpClient,
  ClTcpClientTls,
  ClTcpCommandClient,
  ClMC,
  ClSmtp,
  {System}
  Vcl.Dialogs;

{ TEmailAgentICS }
// ------------------------------- { INTERFACE } ---------------------------- //
procedure TEmailAgentICS.Send(EmailSettings: TFRMEmailSettings);
begin

end;

procedure TEmailAgentICS.Test(EmailSettings: TFRMEmailSettings;
    const Fail: Boolean);
begin

  if Fail then
    raise Exception.Create('Email agent failed to deliver the email!!!');

end;
// ------------------------------- { HANDLERS } ----------------------------- //
// ------------------------------- { METHODS } ------------------------------ //
// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //

end.
