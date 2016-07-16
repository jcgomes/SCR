unit UCadRCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRCP = class(TfrmCadPai)
    Label1: TLabel;
    edtCP: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
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
  frmCadRCP: TfrmCadRCP;

implementation

uses Udm, UConsRCP;

{$R *.dfm}

{ TfrmCadCP }

procedure TfrmCadRCP.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRCP do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRCP_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRCP.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRCP_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRCP.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRCP.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRCP.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRCP_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRCP.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRCP do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRCP_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRCP.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRCP.ExcluirExecute(Sender: TObject);
begin
    inherited;
    exclui(nil);
end;

procedure TfrmCadRCP.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRCP.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRCP do
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

procedure TfrmCadRCP.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtCP.SetFocus;
end;

procedure TfrmCadRCP.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtCP.Text = '' then
        begin
            Raise Exception.create('O campo "Característica" é obrigatório.');
            edtCP.SetFocus;
        end
              else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRCP.Post;
                              DM.cdsRCP.ApplyUpdates(0);

                              frmConsRCP.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;


procedure TfrmCadRCP.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRCP_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
