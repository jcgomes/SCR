unit uConsRRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRRes = class(TfrmConsPai)
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
  frmConsRRes: TfrmConsRRes;

implementation

uses Udm, UPrincipal, uCadRRes;

{$R *.dfm}

{ TfrmConsRRes }

procedure TfrmConsRRes.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRRes_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsRDesc_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsRCP_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsRFG_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
    edtParametro.Clear;
end;

procedure TfrmConsRRes.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRRes.ChamaCadastro;
begin
    frmCadRRes := TfrmCadRRes.Create(Application);
    if frmCadRRes = nil then
    frmCadRRes.Inserindo := false;
    frmCadRRes.Show;
end;

procedure TfrmConsRRes.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRRes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRRes.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRRes_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRRes.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRRes_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRRes.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
