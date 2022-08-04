unit emailComposer;

interface
uses
  {Own}
  EmailSettings,
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
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TOnEmailComposerAction = Reference to procedure(const Action: string);

  TFRMEmailComposer = class(TFrame)
    Actions: TPanel;
    BtnSendEmail: TButton;
    BtnCancel: TButton;
    EdtBody: TMemo;
    EdtSubject: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    LblSubject: TLabel;
    LblBCC: TLabel;
    LblRecipients: TLabel;
    LblFrom: TLabel;
    LblAttachments: TLabel;
    procedure BtnSendEmailClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    private
      { FIELDS }
      FSettings: TFRMEmailSettings;
      FOnComposerAction: TOnEmailComposerAction;
      { GETTERS }
      { SETTERS }
      { METHODS }
    public
      { INTERFACE }
      constructor Create(AOwner: TComponent; EmailSettings: TFRMEmailSettings);
          reintroduce;
      property OnComposerAction: TOnEmailComposerAction read FOnComposerAction
          write FOnComposerAction;

  end;

implementation
{$R *.dfm}
// ------------------------------- { INTERFACE } ---------------------------- //

constructor TFRMEmailComposer.Create(AOwner: TComponent;
    EmailSettings: TFRMEmailSettings);
begin
  inherited Create(AOwner);
end;
// ------------------------------- { HANDLERS } ----------------------------- //

procedure TFRMEmailComposer.BtnCancelClick(Sender: TObject);
begin
  OnComposerAction('cancel');
end;

procedure TFRMEmailComposer.BtnSendEmailClick(Sender: TObject);
begin
  OnComposerAction('sendEmail');
end;

// ------------------------------- { METHODS } ------------------------------ //
// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //
end.
