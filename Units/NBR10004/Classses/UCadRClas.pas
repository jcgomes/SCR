unit UCadRClas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRClas = class(TfrmCadPai)
    Label1: TLabel;
    edtClasse: TDBEdit;
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
  frmCadRClas: TfrmCadRClas;

implementation

uses Udm, UConsRClas;

{$R *.dfm}

{ TfrmCadRClas }

procedure TfrmCadRClas.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRClas do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRClas_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRClas.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRClas_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRClas.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRClas.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRClas.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRClas_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRClas.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRClas do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRClas_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRClas.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRClas.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRClas.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRClas.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRClas do
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

procedure TfrmCadRClas.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtClasse.SetFocus;
end;

procedure TfrmCadRClas.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtClasse.Text = '' then
        begin
            Raise Exception.create('O campo "Classe" é obrigatório.');
            edtClasse.SetFocus;
        end
              else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRClas.Post;
                              DM.cdsRClas.ApplyUpdates(0);

                              frmConsRClas.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRClas.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRClas_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
