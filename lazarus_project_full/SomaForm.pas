unit SomaForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TFrmSoma = class(TForm)
    BtnAdd: TButton;
    EdNum: TEdit;
    MemoNums: TMemo;
    MemoRes: TMemo;
    procedure BtnAddClick(Sender: TObject);
  private
    soma: Integer;
    count: Integer;
  end;

var
  FrmSoma: TFrmSoma;

implementation

{$R *.lfm}

procedure TFrmSoma.BtnAddClick(Sender: TObject);
var n: Integer;
begin
  if count=0 then
  begin
    soma:=0;
    MemoNums.Clear;
    MemoRes.Clear;
  end;

  n := StrToInt(EdNum.Text);
  soma := soma + n;
  MemoNums.Lines.Add(IntToStr(n));
  count := count + 1;

  if count = 10 then
    MemoRes.Lines.Add('Soma total: ' + IntToStr(soma));
end;

end.
