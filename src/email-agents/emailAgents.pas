unit emailAgents;

interface
uses
  {Own}
  EmailSettings,
  {Own Libs}
  {3rd Libs}
  {System}
  System.SysUtils;

type
  TEnumEmailAgents = (ICS);

  IEmailAgent = interface
    procedure Send(EmailSettings: TFRMEmailSettings);
    procedure Test(EmailSettings: TFRMEmailSettings; const Fail: Boolean);
  end;

function GetEmailAgent(const Agent: TEnumEmailAgents): IEmailAgent;

implementation
uses
  {Own}
  EmailAgentInternetCleverSuite
  {Own Libs}
  {3rd Libs}
  {System};

function GetEmailAgent(const Agent: TEnumEmailAgents): IEmailAgent;
begin
  case Agent of
  ICS:
    begin
      Result := TEmailAgentICS.Create;
    end;
else
  raise Exception.Create('Unknown Email Agent Requested');
  end;
end;

end.
