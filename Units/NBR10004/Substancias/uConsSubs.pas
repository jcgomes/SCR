unit uConsSubs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRSubs = class(TfrmConsPai)
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
  frmConsRSubs: TfrmConsRSubs;

implementation

uses UPrincipal, Udm, uCadRSubs;

{$R *.dfm}

{ TfrmConsRSubs }

procedure TfrmConsRSubs.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRSubs_ do
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
       
    finally
    DM.Conexao.Close;
    end;
    edtParametro.Clear;
end;

procedure TfrmConsRSubs.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRSubs.ChamaCadastro;
begin
    frmCadRSubs := TfrmCadRSubs.Create(Application);
    if frmCadRSubs = nil then
    frmCadRSubs.Inserindo := false;
    frmCadRSubs.Show;  
end;

procedure TfrmConsRSubs.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRSubs.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRSubs.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRSubs_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRSubs.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRSubs_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
  end;

procedure TfrmConsRSubs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRSubs.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
