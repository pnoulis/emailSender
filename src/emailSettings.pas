unit emailSettings;

interface
uses
  {Own}
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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TOnSettingsAction = Reference to procedure(const action: string);

  TFRMEmailSettings = class(TFrame)
    Actions: TPanel;
    BtnCommit: TButton;
    BtnCancel: TButton;
    TabControlEmailSettings: TPageControl;
    TabGeneral: TTabSheet;
    LblCC: TLabel;
    LblBCC: TLabel;
    LblConfirmRetrieval: TLabel;
    LblSubject: TLabel;
    LblResources: TLabel;
    LblBody: TLabel;
    EdtBody: TMemo;
    EdtConfirmRetrieval: TEdit;
    EdtCC: TMemo;
    EdtBCC: TMemo;
    EdtSubject: TEdit;
    EdtResources: TEdit;
    TabServiceProvider: TTabSheet;
    LblSmtpServer: TLabel;
    LblSmtpPort: TLabel;
    LblSmtpPassword: TLabel;
    LblSmtpUsername: TLabel;
    EdtSmtpServer: TEdit;
    EdtSmtpPort: TEdit;
    EdtSmtpUsername: TEdit;
    EdtSmtpPassword: TEdit;
    procedure BtnCommitClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    private
      { FIELDS }
      FOnSettingsAction: TOnSettingsAction;
      { GETTERS }
      { SETTERS }
      { METHODS }
    public
      { INTERFACE }
      constructor Create(AOwner: TComponent); reintroduce;
      destructor Destroy; override;
      property OnSettingsAction: TOnSettingsAction
          read FOnSettingsAction write FOnSettingsAction;
  end;

implementation
{$R *.dfm}
// ------------------------------- { INTERFACE } ---------------------------- //

constructor TFRMEmailSettings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFRMEmailSettings.Destroy;
begin
  inherited;
end;

// ------------------------------- { HANDLERS } ----------------------------- //
procedure TFRMEmailSettings.BtnCancelClick(Sender: TObject);
begin
  OnSettingsAction('cancel');
end;

procedure TFRMEmailSettings.BtnCommitClick(Sender: TObject);
begin
  OnSettingsAction('commit');
end;
// ------------------------------- { METHODS } ------------------------------ //
// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //
end.
