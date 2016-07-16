unit UConsRAtv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRAtv = class(TfrmConsPai)
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
  frmConsRAtv: TfrmConsRAtv;

implementation

uses Udm, UCadRAtv;

{$R *.dfm}

{ TfrmConsRAtv }

procedure TfrmConsRAtv.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAtv_ do
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

procedure TfrmConsRAtv.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRAtv.ChamaCadastro;
begin
    frmCadRAtv := TfrmCadRAtv.Create(Application);
    if frmCadRAtv = nil then
    frmCadRAtv.Inserindo := false;
    frmCadRAtv.Show;
end;

procedure TfrmConsRAtv.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAtv.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAtv.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRAtv_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRAtv.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRAtv_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRAtv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRAtv.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
