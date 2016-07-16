unit uCadRAnF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls,
  Mask;

type
  TfrmCadRAnF = class(TfrmCadPai)
    Label2: TLabel;
    Label3: TLabel;
    edtTipo: TDBEdit;
    edtParametro: TDBEdit;
    Label1: TLabel;
    edtCodID: TDBEdit;
    edtLimite: TDBEdit;
    Label4: TLabel;
    edtCAS: TDBEdit;
    Label5: TLabel;
    mmOBS: TDBMemo;
    Label6: TLabel;
    lblOBS: TLabel;
    procedure mmOBSKeyPress(Sender: TObject; var Key: Char);
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
  frmCadRAnF: TfrmCadRAnF;

implementation

uses Udm, uConsRAnF;

{$R *.dfm}

{ TfrmCadRAnF }

procedure TfrmCadRAnF.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnF do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRAnF_ID_ANF.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAnF.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnF_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAnF.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnF.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRAnF.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnF_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

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

procedure TfrmCadRAnF.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRAnF do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRAnF_ID_ANF.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRAnF.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRAnF.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRAnF.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);


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

procedure TfrmCadRAnF.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnF do
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

procedure TfrmCadRAnF.mmOBSKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadRAnF.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtTipo.SetFocus;
end;

procedure TfrmCadRAnF.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtTipo.Text = '' then
        begin
            Raise Exception.create('O campo "Tipo" é obrigatório.');
            edtTipo.SetFocus;
        end
          else
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
                              DM.cdsRAnF.Post;
                              DM.cdsRAnF.ApplyUpdates(0);

                              frmConsRAnF.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRAnF.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAnF_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

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
