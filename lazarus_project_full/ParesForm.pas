unit ParesForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TFrmPares = class(TForm)
    MemoPares: TMemo;
    procedure FormShow(Sender: TObject);
  end;

var
  FrmPares: TFrmPares;

implementation

{$R *.lfm}

procedure TFrmPares.FormShow(Sender: TObject);
var i: Integer;
begin
  MemoPares.Clear;
  for i:=0 to 50 do
    if i mod 2 = 0 then
      MemoPares.Lines.Add(IntToStr(i));
end;

end.
