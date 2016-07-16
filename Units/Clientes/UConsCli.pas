unit UConsCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsCli = class(TfrmConsPai)
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
  frmConsCli: TfrmConsCli;

implementation

uses UPrincipal, Udm, UCadCli;

{$R *.dfm}

{ TfrmConsCli }

procedure TfrmConsCli.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsClientes_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsCidades_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsUF_ do
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

procedure TfrmConsCli.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsCli.ChamaCadastro;
begin
    frmCadCli := TfrmCadCli.Create(Application);
    if frmCadCli = nil then
    frmCadCli.Inserindo := false;
    frmCadCli.Show;  
end;

procedure TfrmConsCli.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsCli.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsCli.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsClientes_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsCli.edtParametroChange(Sender: TObject);
begin
  inherited;
  DM.Conexao.Open;
    try
       with DM.cdsClientes_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
    finally
      DM.Conexao.Close;
    end;
end;

procedure TfrmConsCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsCli.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
