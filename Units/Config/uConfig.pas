unit uConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls,Registry, ActnList, ComCtrls, ToolWin,
  DBCtrls, Mask, ExtDlgs,dbClient,db, JPEG, ImgList;

type
  TfrmConfig = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    Salvar: TAction;
    Cancelar: TAction;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    Btn_Salvar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Cancelar: TToolButton;
    ToolButton12: TToolButton;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    edtSerial: TDBEdit;
    mmEndereco: TDBMemo;
    mmRS: TDBMemo;
    lblLicenca: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    img: TImage;
    opd: TOpenPictureDialog;
    ImgBotoes: TImageList;
    Label2: TLabel;
    mmRT: TDBMemo;
    Label4: TLabel;
    mmEE: TDBMemo;
    Label5: TLabel;
    edtCidade: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SaveBlob(cds : TClientDataSet; Campo : TBlobField; Path: string);  // salva qualquer tipo de arquivo em campos blob
    procedure ShowJPG;
    Procedure abre;
    Procedure GetDataE;
    procedure Salva;
  end;

var
  frmConfig: TfrmConfig;
  DataL, DataE : String;

implementation

uses UFuncoes, Udm;

{$R *.dfm}

{ TfrmLicenca }



procedure TfrmConfig.abre;
begin
  DM.Conexao.Open;
  try
    with DM.cdsConfig do
    begin
      Close;
      Params[1].AsString := '%';
      Open;
      First;
    end;
  finally
    DM.Conexao.Close;
  end;

  if DM.cdsConfig.RecordCount > 0 then
  begin
    GetDataE;
    lblLicenca.Caption := DifDias(StrToDate(DataE),Date);
  end
    else
      begin
        lblLicenca.Caption := 'licença expirada';
      end;

  // caso exista uma foto na tabela, entao exibe no dbiFoto --------------------------
  if not DM.cdsConfigLOGO.IsNull then
  begin
    ShowJpg;
  end;
  //----------------------------------------------------------------------------------
end;

procedure TfrmConfig.CancelarExecute(Sender: TObject);
begin
  ShowMessage('Será necessário reiniciar o sistema.');
  Application.Terminate;
end;

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmConfig := nil;
  Action     := caFree;
end;



procedure TfrmConfig.FormShow(Sender: TObject);
begin
  abre;
end;

procedure TfrmConfig.GetDataE;
var
serial,rDL,rDE : string;
begin
  Serial := Criptografa(edtSerial.Text,'xst');
  Delete(Serial,1,1); // deleta o primeiro caractere do serial, por se tratar do código do cliente
  Serial := Serial;

    // data de liberaçao (nao está sendo usado)
    DataL := Copy(Serial,1,2)+'/';
    rDL := DataL;

    DataL := Copy(Serial,3,2);
    rDL := rDL + DataL+'/';

    DataL := Copy(Serial,5,4);
    rDL := rDL + DataL;

    DataL := rDL;


    // data de expiraçao (verifica a data de expiraçao)
    DataE := Copy(Serial,9,2);
    rDE := DataE+'/';

    DataE := Copy(Serial,11,2);
    rDE := rDE + DataE+'/';

    DataE := Copy(Serial,13,4);
    rDE := rDE + DataE;

    DataE := rDE;
end;

procedure TfrmConfig.Salva;
var
salva : integer;
extensao : string;
begin
  GetDataE;

    // validaçao dos dados
    try
      salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
      if salva = IDYES Then
      begin
        StrToDate(DataE);

        // salva a imagem na tabela -----------------------------------------------------------------
        extensao := UpperCase(ExtractFileExt(opd.FileName));
        if (opd.FileName <> '') and (extensao = '.JPG') then //se uma foto do tipo JPG foi selecionada
        begin
          SaveBlob(DM.cdsConfig,DM.cdsConfigLOGO,opd.FileName);
        end;
        // ------------------------------------------------------------------------------------------

        DM.cdsConfig.Post;
        DM.cdsConfig.ApplyUpdates(0);

        ShowMessage('Será necessário reiniciar o sistema.');
        Application.Terminate;

      end;
    except
      on EConvertError do
      ShowMessage ('Serial inválido');
    end;

end;

procedure TfrmConfig.SalvarExecute(Sender: TObject);
begin
  Salva;
end;

procedure TfrmConfig.SaveBlob(cds: TClientDataSet; Campo: TBlobField;
  Path: string);
var
  fS  : TFileStream;
  // campo é o campo do tipo blob da tabela ex: clientdataset1FOTO
  // cds é o nome do clientdataset
  // path é o file name do OpenPictureDialog (nao esquecer de verificar se filename <> '' ao usar a procedure) ou um caminho fisico mesmo.
begin
  fs:=TFileStream.Create(Path, fmOpenRead);
  try

   if cds.State in [dsEdit, dsInsert]  then
    begin
      Campo.LoadFromStream(fs);
    end
      else
        begin
          cds.Edit;
          Campo.LoadFromStream(fs);
        end;

  finally
   fs.Free;
  end;
end;

procedure TfrmConfig.ShowJPG;
var
  bS  : TClientBlobStream;
  Pic : TJpegImage;
begin
  bS := TClientBlobStream.Create (DM.cdsConfigLOGO, bmRead);
  try
    Pic:=TJpegImage.Create;
    try
     Pic.LoadFromStream(bS);
     img.Picture.Graphic:=Pic;
    finally
     Pic.Free;
    end;
  finally
    bS.Free
  end;
end;

procedure TfrmConfig.SpeedButton1Click(Sender: TObject);
begin
  if opd.Execute then
  begin
    img.Picture.LoadFromFile(opd.FileName);
  end;
end;

end.
