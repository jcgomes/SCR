unit uCadRAnG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRAnG = class(TfrmCadPai)
    Label1: TLabel;
    edtParametro: TDBEdit;
    Label2: TLabel;
    edtLimite: TDBEdit;
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
  frmCadRAnG: TfrmCadRAnG;

implementation

uses Udm, uConsRAnG;

{$R *.dfm}

{ TfrmCadRAnG }

procedure TfrmCadRAnG.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnG do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRAnG_ID_ANG.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAnG.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnG_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAnG.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnG.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRAnG.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnG_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRAnG.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRAnG do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRAnG_ID_ANG.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRAnG.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRAnG.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRAnG.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRAnG.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnG do
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

procedure TfrmCadRAnG.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtParametro.SetFocus;
end;

procedure TfrmCadRAnG.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtParametro.Text = '' then
        begin
            Raise Exception.create('O campo "Parâmetro" é obrigatório.');
            edtParametro.SetFocus;
        end
           else
              if edtLimite.Text = '' then
              begin
                  Raise Exception.create('O campo "Limite máximo" é obrigatório.');
                  edtLimite.SetFocus;
              end
                 else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRAnG.Post;
                              DM.cdsRAnG.ApplyUpdates(0);

                              frmConsRAnG.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;


procedure TfrmCadRAnG.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnG_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
