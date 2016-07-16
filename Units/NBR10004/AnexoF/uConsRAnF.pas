unit uConsRAnF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRAnF = class(TfrmConsPai)
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtParametroChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure atualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsRAnF: TfrmConsRAnF;

implementation

uses Udm, UPrincipal, uCadRAnF;

{$R *.dfm}

{ TfrmConsRAnF }

procedure TfrmConsRAnF.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnF_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;
    finally
      DM.Conexao.Close;
    end;
    edtParametro.Clear;
end;

procedure TfrmConsRAnF.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRAnF.ChamaCadastro;
begin
    frmCadRAnF := TfrmCadRAnF.Create(Application);
    if frmCadRAnF = nil then
    frmCadRAnF.Inserindo := false;
    frmCadRAnF.Show;
end;

procedure TfrmConsRAnF.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAnF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAnF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRAnF_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRAnF.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRAnF_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRAnF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRAnF.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
