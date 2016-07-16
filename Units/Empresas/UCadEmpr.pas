unit UCadEmpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, Buttons, DBCtrls,
  StdCtrls, Mask, Grids, DBGrids;

type
  TfrmCadEmpr = class(TfrmCadPai)
    ActionList2: TActionList;
    Label15: TLabel;
    AbreURLEmpr: TAction;
    NovaEmprAtv: TAction;
    ExcluirEmprAtv: TAction;
    NovaEmprUG: TAction;
    ExcluiEmprUG: TAction;
    NovoEmprProc: TAction;
    ExcluirEmprProc: TAction;
    PC: TPageControl;
    TS1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lblOBS: TLabel;
    Label8: TLabel;
    edtNome: TDBEdit;
    edtCNPJ: TDBEdit;
    edtFone1: TDBEdit;
    edtFone2: TDBEdit;
    edtEmail: TDBEdit;
    edtURL: TDBEdit;
    edtCEP: TDBEdit;
    edtBairro: TDBEdit;
    edtLogradouro: TDBEdit;
    edtNumeo: TDBEdit;
    edtEdificio: TDBEdit;
    edtBloco: TDBEdit;
    edtInteressado: TDBEdit;
    edtimediacoes: TDBEdit;
    mmOBS: TDBMemo;
    TS2: TTabSheet;
    Panel2: TPanel;
    dbgUG: TDBGrid;
    TS3: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TS4: TTabSheet;
    Panel4: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid3: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    edtCidade: TDBEdit;
    edtUF: TDBEdit;
    procedure cbCidadeClick(Sender: TObject);
    procedure AbreURLEmprExecute(Sender: TObject);
    procedure mmOBSKeyPress(Sender: TObject; var Key: Char);
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure edtFone2Change(Sender: TObject);
    procedure edtFone1Change(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure DownExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ExcluirEmprProcExecute(Sender: TObject);
    procedure NovoEmprProcExecute(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure ExcluirEmprAtvExecute(Sender: TObject);
    procedure NovaEmprAtvExecute(Sender: TObject);
    procedure ExcluiEmprUGExecute(Sender: TObject);
    procedure NovaEmprUGExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure dbgUGTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
   
    published
      procedure atualiza;
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);
      procedure GetUF;


  end;

var
  frmCadEmpr: TfrmCadEmpr;


implementation

uses Udm, UConsEmpr, UPrincipal, DBClient, DB, UFuncoes;

{$R *.dfm}

{ TfrmCadEmpr }




procedure TfrmCadEmpr.AbreURLEmprExecute(Sender: TObject);
begin
  inherited;
  if  edtURL.Text <> '' then
      abreURL(edtURL.Text);

end;

procedure TfrmCadEmpr.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsEmpresas do
       begin
            Close;
            Params[1].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadEmpr.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmpresas.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadEmpr.cbCidadeClick(Sender: TObject);
begin
  inherited;
  GetUF;
end;


procedure TfrmCadEmpr.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsEmprAtv.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmCadEmpr.dbgUGTitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsEmprUG.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmCadEmpr.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsEmprProc.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmCadEmpr.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmpresas.Next;

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
          end;
end;

procedure TfrmCadEmpr.edtCEPExit(Sender: TObject);
begin
  inherited;
  if edtCEP.Text <> '' then
     edtCEP.Text := ValidaCEP(edtCEP.Text)
end;

procedure TfrmCadEmpr.edtCNPJExit(Sender: TObject);
begin
  inherited;
  if edtCNPJ.Text <> '' then
    begin
         if not ValidaCnpjCpf(edtCNPJ.Text) Then
         begin
             Raise Exception.Create('CNPJ incorreto. por favor corrija');
         end;
    end;
end;

procedure TfrmCadEmpr.edtFone1Change(Sender: TObject);
begin
  inherited;
  FormataFone(edtFone1);
end;

procedure TfrmCadEmpr.edtFone2Change(Sender: TObject);
begin
  inherited;
  FormataFone(edtFone2);
end;

procedure TfrmCadEmpr.exclui(sender: TObject);
var exclui: integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin

      with DM.cdsEmpresas do
      begin
        delete;
        ApplyUpdates(0);
      end;

      frmConsEmpr.atualiza;
      close;
    end;

end;

procedure TfrmCadEmpr.ExcluiEmprUGExecute(Sender: TObject);
var exclui : integer;
begin
  inherited;
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
      DM.cdsEmprUG.Delete;
    end;   
end;

procedure TfrmCadEmpr.ExcluirEmprAtvExecute(Sender: TObject);
var
exclui : integer;
begin
  inherited;
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.cdsEmprAtv.Delete;
    end;
end;

procedure TfrmCadEmpr.ExcluirEmprProcExecute(Sender: TObject);
var
exclui : integer;
begin
  inherited; 
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
       DM.cdsEmprAtv.Delete;
    end;
end;

procedure TfrmCadEmpr.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadEmpr.FormShow(Sender: TObject);
begin
  inherited;

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
          end;
end;



procedure TfrmCadEmpr.GetUF;
begin
    DM.Conexao.Open;
    try
       with DM.cdsUF do
       begin
          Close;
          Params[0].AsInteger :=  DM.cdsCidades_ID_UF.AsInteger;
          Open;
       end;
    finally
      DM.Conexao.Close;
    end;
    edtUF.Text := DM.cdsUFUF.AsString;
end;

procedure TfrmCadEmpr.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsEmpresas do
       begin
          Close;
          Params[0].AsInteger :=  -1;
          Open;
          Insert;
       end;
    finally
      DM.Conexao.Close;
    end;
end;

procedure TfrmCadEmpr.mmOBSKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
          end;
end;

procedure TfrmCadEmpr.NovaEmprAtvExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmprAtv.Insert;
end;

procedure TfrmCadEmpr.NovaEmprUGExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmprUG.Insert;
end;

procedure TfrmCadEmpr.NovoEmprProcExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmprProc.Insert;
end;

procedure TfrmCadEmpr.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  PC.ActivePage := TS1;
  edtNome.SetFocus;

  if DM.cdsEmpresas.State in [dsInsert]  then
  begin
    TS2.Enabled := false;
    TS3.Enabled := false;
    TS4.Enabled := false;
  end;
end;

procedure TfrmCadEmpr.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtNome.Text = '' then
        begin
            Raise Exception.create('O campo "Razão social" é obrigatório.');
            edtNome.SetFocus;
        end
            else
                if edtFone1.Text = '' then
                begin
                    Raise Exception.create('O campo "Fone 1" é obrigatório.');
                    edtFone1.SetFocus;
                end
                else
                    begin
                      salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                      if salva = IDYES Then
                      begin
                        DM.cdsEmpresas.ApplyUpdates(0);

                        frmConsEmpr.atualiza;

                        Close;
                      end;


              end;
end;

procedure TfrmCadEmpr.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsEmpresas.Prior;

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmOBS.Lines.Text))
          end;
end;

end.
