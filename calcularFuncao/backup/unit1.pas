unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCalcular: TButton;
    EditA: TEdit;
    EditB: TEdit;
    EditC: TEdit;
    LabelC: TLabel;
    LabelB: TLabel;
    LabelA: TLabel;
    MemoOut: TMemo;
    procedure ButtonCalcularClick(Sender: TObject);
    procedure LabelAClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.ButtonCalcularClick(Sender: TObject);
var
  a, b, c: Double;
  delta, x1, x2: Double;
  sA, sB, sC: string;
begin
  MemoOut.Clear;

  // Ler os textos dos edits
  sA := Trim(EditA.Text);
  sB := Trim(EditB.Text);
  sC := Trim(EditC.Text);

  // Validar conversão para número
  if (sA = '') or (sB = '') or (sC = '') then
  begin
    MemoOut.Lines.Add('Por favor, preencha a, b e c.');
    Exit;
  end;

  if not TryStrToFloat(sA, a) then
  begin
    MemoOut.Lines.Add('Valor inválido para a.');
    Exit;
  end;

  if not TryStrToFloat(sB, b) then
  begin
    MemoOut.Lines.Add('Valor inválido para b.');
    Exit;
  end;

  if not TryStrToFloat(sC, c) then
  begin
    MemoOut.Lines.Add('Valor inválido para c.');
    Exit;
  end;

  // Caso especial: a = 0 (não é equação do 2º grau)
  if Abs(a) < 1E-12 then
  begin
    // trata como equação linear bx + c = 0
    if Abs(b) < 1E-12 then
    begin
      if Abs(c) < 1E-12 then
        MemoOut.Lines.Add('Infinitas soluções (0 = 0).')
      else
        MemoOut.Lines.Add('Sem solução (constante diferente de zero).');
    end
    else
    begin
      x1 := -c / b;
      MemoOut.Lines.Add('Equação linear. Solução:');
      MemoOut.Lines.Add('x = ' + FloatToStr(x1));
    end;
    Exit;
  end;

  // Calcular discriminante (delta)
  delta := b*b - 4*a*c;

  if delta < 0 then
  begin
    MemoOut.Lines.Add('Não existem raízes reais (delta < 0).');
  end
  else if Abs(delta) < 1E-12 then
  begin
    // uma única raiz real (raiz dupla)
    x1 := -b / (2*a);
    MemoOut.Lines.Add('Uma única raiz (delta = 0):');
    MemoOut.Lines.Add('x = ' + FloatToStr(x1));
  end
  else
  begin
    x1 := (-b + Sqrt(delta)) / (2*a);
    x2 := (-b - Sqrt(delta)) / (2*a);
    MemoOut.Lines.Add('Duas raízes reais:');
    MemoOut.Lines.Add('x1 = ' + FloatToStr(x1));
    MemoOut.Lines.Add('x2 = ' + FloatToStr(x2));
  end;
end;

procedure TForm1.LabelAClick(Sender: TObject);
begin

end;

end.

