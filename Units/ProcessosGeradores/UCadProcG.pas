unit UCadProcG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls,
  Mask;

type
  TfrmCadProcG = class(TfrmCadPai)
    Label1: TLabel;
    edtProc: TDBEdit;
    Label2: TLabel;
    mmDesc: TDBMemo;
    lblDesc: TLabel;
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure mmDescKeyPress(Sender: TObject; var Key: Char);
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
      //procedure abre(sender: TObject);
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);
  end;

var
  frmCadProcG: TfrmCadProcG;

implementation

uses Udm, UConsProcG;

{$R *.dfm}

{ TfrmCadProcG }

{procedure TfrmCadProcG.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsProc do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsProc_ID_PROCESSO.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;    }

procedure TfrmCadProcG.atualiza;
begin
     DM.Conexao.Open;
    try
       with DM.cdsProc do
       begin
            Close;
            Params[1].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadProcG.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsProc.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadProcG.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsProc.Next;

    if inserindo then
    Insere(nil);
    //else
      //abre(nil);

    if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
          end;

end;

procedure TfrmCadProcG.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsProc do
          begin
              //Close;
              //Params[0].AsInteger :=  DM.cdsProc_ID_PROCESSO.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsProcG.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadProcG.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadProcG.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil);
    //else
      //abre(nil);

    if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
          end;

end;

procedure TfrmCadProcG.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsProc do
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

procedure TfrmCadProcG.mmDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
          end;
end;

procedure TfrmCadProcG.NovoExecute(Sender: TObject);
begin
  inherited;
  DM.cdsProc.Insert;
  edtProc.SetFocus;
end;

procedure TfrmCadProcG.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtProc.Text = '' then
        begin
            Raise Exception.create('O campo "Processo" é obrigatório.');
            edtProc.SetFocus;
        end
           else
              begin
                  try
                    salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                    if salva = IDYES Then
                    begin
                        DM.cdsProc.Post;
                        DM.cdsProc.ApplyUpdates(0);

                        frmConsProcG.atualiza;

                        Close;
                    end;

                  except On Exception do
                  Raise Exception.create('É preciso alterar algo para poder salvar');
              end;
        end;
end;

procedure TfrmCadProcG.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsProc.Prior;

    if inserindo then
    Insere(nil);
    //else
      //abre(nil);

    if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(1000 - Length(mmDesc.Lines.Text))
          end;
end;

end.
