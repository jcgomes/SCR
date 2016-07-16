unit UConsRClas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRClas = class(TfrmConsPai)
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
  frmConsRClas: TfrmConsRClas;

implementation

uses Udm, UPrincipal, UCadRClas;

{$R *.dfm}

{ TfrmConsRClass }

procedure TfrmConsRClas.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRClas_ do
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

procedure TfrmConsRClas.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRClas.ChamaCadastro;
begin
    frmCadRClas := TfrmCadRClas.Create(Application);
    if frmCadRClas = nil then
    frmCadRClas.Inserindo := false;
    frmCadRClas.Show;
end;

procedure TfrmConsRClas.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRClas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRClas.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRClas_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRClas.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRClas_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRClas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRClas.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
