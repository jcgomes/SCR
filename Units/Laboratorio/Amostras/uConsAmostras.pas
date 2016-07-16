unit uConsAmostras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsAmostras = class(TfrmConsPai)
    procedure atualizarExecute(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtParametroChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsAmostras: TfrmConsAmostras;

implementation

uses UPrincipal, Udm, uCadAmostras;

{$R *.dfm}

{ TfrmConsAmostras }

procedure TfrmConsAmostras.Atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsAmostras02_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsEmpresas do
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

procedure TfrmConsAmostras.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsAmostras.ChamaCadastro;
begin
  frmCadAmostras := TfrmCadAmostras.Create(Application);
  if frmCadAmostras = nil then
  frmCadAmostras.Inserindo := false;
  frmCadAmostras.Show;
end;

procedure TfrmConsAmostras.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsAmostras.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsAmostras.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsAmostras_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsAmostras.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsAmostras_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsAmostras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsAmostras.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
