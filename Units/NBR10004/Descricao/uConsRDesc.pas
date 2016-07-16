unit uConsRDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRDesc = class(TfrmConsPai)
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
  frmConsRDesc: TfrmConsRDesc;

implementation

uses Udm, UPrincipal, uCadRDesc;

{$R *.dfm}

{ TfrmConsRDesc }

procedure TfrmConsRDesc.Atualiza;
begin
    DM.Conexao.Open;
    try
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

procedure TfrmConsRDesc.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRDesc.ChamaCadastro;
begin
    frmCadRDesc := TfrmCadRDesc.Create(Application);
    if frmCadRDesc = nil then
    frmCadRDesc.Inserindo := false;
    frmCadRDesc.Show; 
end;

procedure TfrmConsRDesc.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRDesc.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRDesc.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRDesc_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRDesc.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRDesc_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRDesc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRDesc.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
