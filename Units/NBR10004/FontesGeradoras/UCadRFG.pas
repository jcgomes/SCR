unit UCadRFG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRFG = class(TfrmCadPai)
    Label1: TLabel;
    edtFG: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure DownExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    published
      procedure atualiza;
      procedure abre(sender: TObject);
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);
  end;

var
  frmCadRFG: TfrmCadRFG;

implementation

uses Udm, UConsRFG;

{$R *.dfm}

{ TfrmCadFG }

procedure TfrmCadRFG.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRFG do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRFG_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRFG.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRFG_ do
       begin
            Close;
            Params[0].AsString :=  '%';
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
end;

procedure TfrmCadRFG.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRFG.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRFG.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRFG_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRFG.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRFG do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRFG_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRFG.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRFG.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRFG.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRFG.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRFG do
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

procedure TfrmCadRFG.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtFG.SetFocus;
end;

procedure TfrmCadRFG.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtFG.Text = '' then
        begin
            Raise Exception.create('O campo "Fonte" é obrigatório.');
            edtFG.SetFocus;
        end
              else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRFG.Post;
                              DM.cdsRFG.ApplyUpdates(0);

                              frmConsRFG.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRFG.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRFG_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
