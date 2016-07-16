unit UAtualizaLaudo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Buttons, StdCtrls, Mask, DBCtrls,
  WideStrings, FMTBcd, SqlExpr, DB, Provider, DBClient,dbtables;

type
  TForm1 = class(TForm)
    Label6: TLabel;
    Label5: TLabel;
    btnProcurar: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton2: TSpeedButton;
    OD: TOpenDialog;
    cdsLaudo: TClientDataSet;
    dspLaudo: TDataSetProvider;
    Conexao: TSQLConnection;
    sdsLaudo: TSQLDataSet;
    sdsLaudoID: TIntegerField;
    sdsLaudoVERSAO: TStringField;
    sdsLaudoARQUIVO: TBlobField;
    cdsLaudoID: TIntegerField;
    cdsLaudoVERSAO: TStringField;
    cdsLaudoARQUIVO: TBlobField;
    dsLaudo: TDataSource;
    edtVersao: TEdit;
    edtArquivo: TEdit;
    procedure btnProcurarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure salvaBlob;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnProcurarClick(Sender: TObject);
begin
    if od.Execute then
    begin
      edtArquivo.Text := Od.FileName;
    end;

end;

procedure TForm1.salvaBlob;
var
blob: TStream;
begin
    blob := cdsLaudo.CreateBlobStream(cdsLaudo.FieldByName('ARQUIVO'), bmWrite);
    try
      blob.Seek(0, soFromBeginning);
      with TFileStream.Create(edtArquivo.Text, fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
    finally
      blob.Free
    end;
end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var salva : Integer;
begin
  if edtArquivo.Text = '' then
  begin
    Raise Exception.create('O campo "Arquivo" é obrigatório.');
    edtArquivo.SetFocus;
  end
    else
      begin
        Conexao.Open;
        try
          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
          if salva = IDYES Then
          begin
            cdsLaudo.open;
            cdsLaudo.Edit;
            cdsLaudoID.AsInteger    := 1;
            cdsLaudoVERSAO.AsString := edtVersao.Text;
            salvaBlob;
            //cdsLaudoARQUIVO.LoadFromFile(edtArquivo.Text);
            cdsLaudo.Post;
            cdsLaudo.ApplyUpdates(0);
            ShowMessage('Arquivo Atualizado Com sucesso.');
            Close;
          end;
        finally
          Conexao.Close;
        end;
      end;

end;

end.
