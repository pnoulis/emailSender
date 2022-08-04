unit email;

interface
uses
  {Own}
  EmailSettings,
  EmailComposer,
  {Own Libs}
  {3rd Libs}
  {System}
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs;

type
  TOnEmailDone = Reference to procedure(Sender: TComponent;
      const EmailSend: Boolean; Err: Exception);

  TFREmail = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction); reintroduce;

    private
      { FIELDS }
      FOnEmailClose: TOnEmailDone;
      FTestMode: Boolean;
      FSettings: TFRMEmailSettings;
      FComposer: TFRMEmailComposer;
      FDisplayOnlySettings: Boolean;
      FDone: Boolean;
      { GETTERS }
      function GetSettings: TFRMEmailSettings;
      { SETTERS }
      { METHODS }
      function GetComposer: TFRMEmailComposer;
      procedure HandleComposerAction(const Action: string);
      procedure HandleSettingsAction(const Action: string);
      procedure SendAgent;
      procedure Done(const EmailSend: Boolean; Err: Exception = nil);
    public
      { INTERFACE }
      constructor Create(AOwner: TComponent = nil;
          const HandleEmailClose: TOnEmailDone = nil;
          const TestMode: Boolean = False); reintroduce;
      destructor Destroy; override;
      procedure Send(const AskUserToComposeEmail: Boolean = True);
      procedure DisplaySettings(AOwner: TWinControl = nil);
      procedure DisplayComposer(AOwner: TWinControl = nil);
      property Settings: TFRMEmailSettings read GetSettings;
  end;

implementation
{$R *.dfm}
uses
  {Own}
  EmailAgents
  {Own Libs}
  {3rd Libs}
  {System};

const EMAIL_AGENT = TEnumEmailAgents.ICS;

  { TFREmail }
  // ------------------------------- { INTERFACE } ---------------------------- //

constructor TFREmail.Create(AOwner: TComponent;
    const HandleEmailClose: TOnEmailDone; const TestMode: Boolean);
begin
  inherited Create(AOwner);
  FOnEmailClose := HandleEmailClose;
  FTestMode := TestMode;
  FDone := False;

  try
    GetSettings;
  except
    on E: Exception do
      Done(False, E);
  end;
end;

destructor TFREmail.Destroy;
begin
  inherited;
end;

procedure TFREmail.Send(const AskUserToComposeEmail: Boolean);
begin
  if AskUserToComposeEmail then
    DisplayComposer
  else
    SendAgent;
end;

procedure TFREmail.DisplayComposer(AOwner: TWinControl = nil);
begin
  if not Assigned(AOwner) then
  begin
    Show;
    AOwner := Self;
  end;

  Settings.Hide;
  GetComposer.OnComposerAction := HandleComposerAction;
  FComposer.Parent := AOwner;
  FComposer.Align := AlClient;
  FComposer.Show;
end;

procedure TFREmail.DisplaySettings(AOwner: TWinControl = nil);
begin
  if not Assigned(AOwner) then
  begin
    Show;
    AOwner := Self;
  end;

  // the handleSettingsAction is dependent upon the following line
  // if it is to effectively determine which of the three methods
  // has been invoked (displaySettings, displayComposer, send). In
  // particular the handleSettingsAction when invoked as part of the
  // displaySettings sequence (check flow chart) by the user checks
  // if a composer has been created to determine that indeed
  // it was the user who invoked the method and thus terminates the sequence.
  if Assigned(FComposer) then
    GetComposer.Hide;

  Settings.OnSettingsAction := HandleSettingsAction;
  Settings.Parent := AOwner;
  FSettings.Align := AlClient;
  FSettings.Show;
end;

// ------------------------------- { HANDLERS } ----------------------------- //

procedure TFREmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FDone then
    Done(False);
end;

// ------------------------------- { METHODS } ------------------------------ //
function TFREmail.GetComposer: TFRMEmailComposer;
begin
  if not Assigned(FComposer) then
    FComposer := TFRMEmailComposer.Create(Self, Settings);
  Result := FComposer;
end;

procedure TFREmail.HandleComposerAction(const Action: string);
begin
  if Action = 'cancel' then
    Done(False)
  else if Action = 'sendEmail' then
    SendAgent()
  else
    Done(False, Exception.Create('Unkown paremeter in HandleComposerAction'));
end;

procedure TFREmail.HandleSettingsAction(const Action: string);
begin

  // the Action is not being used here. It has been declared as a
  // parameter for reasons of uniformity or future developments.
  if (Settings.Parent <> Self) and not Assigned(FComposer) then
  begin
    // user has invoked displaySettings()
    Done(False);
  end
  else
  begin
    // user has invoked displayComposer() | send()
    DisplayComposer(Settings.Parent);
  end;
end;

procedure TFREmail.SendAgent;
begin
  try
    const Agent = GetEmailAgent(EMAIL_AGENT);
    Agent.Test(Settings, True);
    Done(True);
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      DisplaySettings(GetComposer.Parent);
    end;
  end;
end;

procedure TFREmail.Done(const EmailSend: Boolean; Err: Exception);
begin
  FDone := True;
  Close();
  FOnEmailClose(Self, EmailSend, Err);
end;

// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //
function TFREmail.GetSettings: TFRMEmailSettings;
begin
  if not Assigned(FSettings) then
    FSettings := TFRMEmailSettings.Create(Self);
  Result := FSettings;
end;

end.
