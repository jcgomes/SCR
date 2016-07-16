unit UConsRCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRCP = class(TfrmConsPai)
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
  frmConsRCP: TfrmConsRCP;

implementation

uses Udm, UPrincipal, UCadRCP;

{$R *.dfm}

{ TfrmConsCP }

procedure TfrmConsRCP.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRCP_ do
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

procedure TfrmConsRCP.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRCP.ChamaCadastro;
begin
    frmCadRCP := TfrmCadRCP.Create(Application);
    if frmCadRCP = nil then
    frmCadRCP.Inserindo := false;
    frmCadRCP.Show;
end;

procedure TfrmConsRCP.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRCP.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRCP.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRCP_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRCP.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRCP_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRCP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRCP.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
