unit emailComposer;

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
  Vcl.Dialogs;

type
  TFRMEmailComposer = class(TFrame)
    private
      { GETTERS }
      { SETTERS }
      { METHODS }
      { HANDLERS }
    public
      { INTERFACE }
      { PROPERTIES }
  end;

implementation
{$R *.dfm}
// ------------------------------- { INTERFACE } ---------------------------- //
// ------------------------------- { HANDLERS } ----------------------------- //
// ------------------------------- { METHODS } ------------------------------ //
// ------------------------------- { SETTERS } ------------------------------ //
// ------------------------------- { GETTERS } ------------------------------ //
end.
