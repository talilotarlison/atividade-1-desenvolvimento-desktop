unit Eq2Form;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type
  TFrmEq2 = class(TForm)
    BtnCalc: TButton;
    EdA: TEdit;
    EdB: TEdit;
    EdC: TEdit;
    LabelA: TLabel;
    LabelB: TLabel;
    LabelC: TLabel;
    MemoRes: TMemo;
    procedure BtnCalcClick(Sender: TObject);
  end;

var
  FrmEq2: TFrmEq2;

implementation

{$R *.lfm}

procedure TFrmEq2.BtnCalcClick(Sender: TObject);
var a,b,c,delta,x1,x2: Double;
begin
  a:=StrToFloat(EdA.Text);
  b:=StrToFloat(EdB.Text);
  c:=StrToFloat(EdC.Text);
  delta := b*b - 4*a*c;
  MemoRes.Clear;
  MemoRes.Lines.Add('Delta = ' + FloatToStr(delta));
  if delta < 0 then
    MemoRes.Lines.Add('Não há raízes reais.')
  else
  begin
    x1 := (-b + Sqrt(delta))/(2*a);
    x2 := (-b - Sqrt(delta))/(2*a);
    MemoRes.Lines.Add('x1 = ' + FloatToStr(x1));
    MemoRes.Lines.Add('x2 = ' + FloatToStr(x2));
  end;
end;

end.
