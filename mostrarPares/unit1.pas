unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonMostrar: TButton;
    NumerosPares: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure NumerosParesChange(Sender: TObject);
    procedure ButtonMostrarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.NumerosParesChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ButtonMostrarClick(Sender: TObject);
var
  i: Integer;
begin
  NumerosPares.Clear; // limpa o Memo antes de começar
  for i := 0 to 50 do
  begin
    if (i mod 2 = 0) then
      NumerosPares.Lines.Add(IntToStr(i));
  end;
end;

end.

