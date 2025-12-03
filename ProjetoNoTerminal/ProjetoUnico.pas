program ProjetoUnico;

{$mode objfpc}{$H+}

uses
  SysUtils, Math;

procedure Equacao2Grau;
var
  a, b, c, delta, x1, x2: Double;
begin
  WriteLn('--- Equacao do 2o Grau ---');
  Write('Digite A: '); ReadLn(a);
  Write('Digite B: '); ReadLn(b);
  Write('Digite C: '); ReadLn(c);

  delta := b*b - 4*a*c;
  WriteLn('Delta = ', delta:0:2);

  if delta < 0 then
    WriteLn('Nao ha raizes reais')
  else
  begin
    x1 := (-b + Sqrt(delta)) / (2 * a);
    x2 := (-b - Sqrt(delta)) / (2 * a);
    WriteLn('x1 = ', x1:0:2);
    WriteLn('x2 = ', x2:0:2);
  end;
end;

procedure NumerosPares;
var
  i: Integer;
begin
  WriteLn('--- Numeros pares de 0 a 50 ---');
  for i := 0 to 50 do
    if i mod 2 = 0 then
      Write(i, ' ');
  WriteLn;
end;

procedure Soma10Numeros;
var
  i, n, soma: Integer;
begin
  soma := 0;
  WriteLn('--- Soma de 10 Numeros ---');
  for i := 1 to 10 do
  begin
    Write('Digite o ', i, 'o numero: ');
    ReadLn(n);
    soma := soma + n;
  end;
  WriteLn('Soma total = ', soma);
end;

var
  op: Integer;

begin
  repeat
    WriteLn('==============================');
    WriteLn('         MENU PRINCIPAL       ');
    WriteLn('==============================');
    WriteLn('1 - Equacao do 2o Grau');
    WriteLn('2 - Numeros pares de 0 a 50');
    WriteLn('3 - Somar 10 numeros');
    WriteLn('0 - Sair');
    WriteLn('==============================');
    Write('Escolha: ');
    ReadLn(op);

    case op of
      1: Equacao2Grau;
      2: NumerosPares;
      3: Soma10Numeros;
    end;

    WriteLn;
  until op = 0;

  WriteLn('Programa finalizado.');
end.
