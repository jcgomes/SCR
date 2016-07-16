unit UConsEmpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsEmpr = class(TfrmConsPai)
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
  frmConsEmpr: TfrmConsEmpr;

implementation

uses Udm, UPrincipal, UCadEmpr;

{$R *.dfm}

{ TfrmConsEmpr }

procedure TfrmConsEmpr.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsEmpresas do
       begin
          Close;
          Params[1].AsString := '%';
          Open;
       end;
       
       with DM.cdsRAtv_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsProc do
       begin
          Close;
          Params[1].AsString := '%';
          Open;
       end;

    finally
      DM.Conexao.Close;
    end;
    edtParametro.Clear;
end;

procedure TfrmConsEmpr.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsEmpr.ChamaCadastro;
begin
    frmCadEmpr := TfrmCadEmpr.Create(Application);
    if frmCadEmpr = nil then
    frmCadEmpr.Inserindo := false;
    frmCadEmpr.Show;
end;

procedure TfrmConsEmpr.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsEmpr.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsEmpr.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsEmpresas.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsEmpr.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsEmpresas do
       begin
          Close;
          Params[1].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsEmpr.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsEmpr.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
