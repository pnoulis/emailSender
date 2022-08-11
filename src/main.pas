unit main;

interface
uses
  {Own}
  Email,
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
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFRMain = class(TForm)
    BtnSendCompose: TButton;
    BtnSendDontCompose: TButton;
    BtnDisplaySettings: TButton;
    BtnDisplayComposer: TButton;
    TestMode: TCheckBox;
    procedure BtnSendComposeClick(Sender: TObject);
    procedure BtnSendDontComposeClick(Sender: TObject);
    procedure BtnDisplaySettingsClick(Sender: TObject);
    procedure BtnDisplayComposerClick(Sender: TObject);
    private
      { GETTERS }
      { SETTERS }
      { METHODS }
      procedure HandleEmailClose(Sender: TComponent;
          const EmailDelivered: Boolean; Err: Exception);
    public
      { INTERFACE }
  end;

var
  FRMain: TFRMain;

implementation
uses
  {Own}
  {System}
  System.Generics.Collections,
  System.IOUtils;
{$R *.dfm}

// ------------------------------- { INTERFACE } ---------------------------- //
// ------------------------------- { METHODS } ------------------------------ //
procedure TFRMain.HandleEmailClose(Sender: TComponent;
    const EmailDelivered: Boolean; Err: Exception);
begin

  FreeAndNil(Sender);

  if EmailDelivered then
  begin
    ShowMessage('email send');
  end
  else if Assigned(Err) then
  begin
    ShowMessage(Err.Message);
  end
  else
  begin
    ShowMessage('email not delivered but no error');
  end;

end;

// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //
// ------------------------------- { HANDLERS } ----------------------------- //
procedure TFRMain.BtnDisplayComposerClick(Sender: TObject);
begin
  // display composer
  const
    AnEmail = TFREmail.Create(Self, HandleEmailClose, TestMode.Checked);
  AnEmail.DisplayComposer(Self);
end;

procedure TFRMain.BtnDisplaySettingsClick(Sender: TObject);
begin
  // display settings
  const AnEmail = TFREmail.Create(Self, HandleEmailClose, TestMode.Checked);
  AnEmail.DisplaySettings(Self);
end;

procedure TFRMain.BtnSendComposeClick(Sender: TObject);
begin
  // send compose
  const AnEmail = TFREmail.Create(Self, HandleEmailClose, TestMode.Checked);
  AnEmail.Send(True);
end;

procedure TFRMain.BtnSendDontComposeClick(Sender: TObject);
begin
  // send dont compose
  const AnEmail = TFREmail.Create(Self, HandleEmailClose, TestMode.Checked);
  AnEmail.Send(False);
end;

begin
end.
