unit UConsRFG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRFG = class(TfrmConsPai)
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
  frmConsRFG: TfrmConsRFG;

implementation

uses Udm, UPrincipal, UCadRFG;

{$R *.dfm}

{ TfrmConsFG }

procedure TfrmConsRFG.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRFG_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsRDesc_ do
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

procedure TfrmConsRFG.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRFG.ChamaCadastro;
begin
    frmCadRFG := TfrmCadRFG.Create(Application);
    if frmCadRFG = nil then
    frmCadRFG.Inserindo := false;
    frmCadRFG.Show;
end;

procedure TfrmConsRFG.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRFG.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRFG.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRFG_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRFG.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRFG_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRFG.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRFG.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
