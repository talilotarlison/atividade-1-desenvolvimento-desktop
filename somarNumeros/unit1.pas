unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCalcular: TButton;
    EditNum1: TEdit;
    EditNum10: TEdit;
    EditNum2: TEdit;
    EditNum3: TEdit;
    EditNum4: TEdit;
    EditNum5: TEdit;
    EditNum6: TEdit;
    EditNum7: TEdit;
    EditNum8: TEdit;
    EditNum9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    LabelResultado: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure ButtonCalcularClick(Sender: TObject);
    procedure EditNum8Change(Sender: TObject);
    procedure EditNum5Change(Sender: TObject);
    procedure EditNum4Change(Sender: TObject);
    procedure EditNum3Change(Sender: TObject);
    procedure EditNum2Change(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure LabelResultadoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonCalcularClick(Sender: TObject);
var
  i: Integer;
  s: string;
  val, soma: Double;
  edits: array[1..10] of TEdit;
begin
  // inicializa soma
  soma := 0.0;

  // monta array com referências aos edits (ordem)
  edits[1] := EditNum1;
  edits[2] := EditNum2;
  edits[3] := EditNum3;
  edits[4] := EditNum4;
  edits[5] := EditNum5;
  edits[6] := EditNum6;
  edits[7] := EditNum7;
  edits[8] := EditNum8;
  edits[9] := EditNum9;
  edits[10] := EditNum10;

  // percorre os 10 edits
  for i := 1 to 10 do
  begin
    s := Trim(edits[i].Text);
    if s = '' then
    begin
      // se estiver vazio, considera 0 (ou você pode pedir para o usuário preencher)
      val := 0.0;
    end
    else
    begin
      // substitui vírgula por ponto para evitar erro em sistemas que usam ponto
      s := StringReplace(s, ',', '.', [rfReplaceAll]);
      if not TryStrToFloat(s, val) then
      begin
        // se conversão falhar, mostra mensagem e foca no edit com problema
        ShowMessage('Valor inválido em N' + IntToStr(i) + '. Por favor digite um número válido.');
        edits[i].SetFocus;
        Exit;
      end;
    end;
    soma := soma + val;
  end;

  // mostra o resultado no Label (com duas casas decimais)
  LabelResultado.Caption := 'Resultado: ' + FloatToStrF(soma, ffFixed, 15, 2);
end;

procedure TForm1.EditNum8Change(Sender: TObject);
begin

end;

procedure TForm1.EditNum5Change(Sender: TObject);
begin

end;

procedure TForm1.EditNum4Change(Sender: TObject);
begin

end;

procedure TForm1.EditNum3Change(Sender: TObject);
begin

end;

procedure TForm1.EditNum2Change(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.LabelResultadoClick(Sender: TObject);
begin

end;

end.

