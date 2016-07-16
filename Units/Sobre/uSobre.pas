unit uSobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg,Registry;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    mmLicenca: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure abre;
    procedure GetDataE;
  end;

var
  frmSobre: TfrmSobre;
  DataL, DataE : String;

implementation

uses Udm, UFuncoes;

{$R *.dfm}

procedure TfrmSobre.abre;
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
    mmLicenca.Lines.Add('Vers�o 2008');
    mmLicenca.Lines.Add('O sistema � apto a classificar res�duos segundo a ABNT NBR 10004:2004, e est� licenciado para:');
    mmLicenca.Lines.Add(DM.cdsConfigRAZAO_SOCIAL.AsString);
    mmLicenca.Lines.Add(DifDias(StrToDate(DataE),Date));
  end
    else
      begin
        mmLicenca.Lines.Add('licen�a expirada');
      end;
end;

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSobre   := nil;
  Action     := caFree;
end;

procedure TfrmSobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if     ((Screen.ActiveControl is TPanel) or
            (Screen.ActiveControl is TMemo) or
            (Screen.ActiveForm.ClassName = 'TMessageForm')) then
    begin
        case key of
        vk_Escape:  Close;
        end;
    end;
end;

procedure TfrmSobre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  Close;
end;

procedure TfrmSobre.FormShow(Sender: TObject);
begin
  abre;
end;

procedure TfrmSobre.GetDataE;
var
serial,rDL,rDE : string;
begin
  Serial := Criptografa(DM.cdsConfigSERIAL.AsString,'xst');
  Delete(Serial,1,1); // deleta o primeiro caractere do serial, por se tratar do c�digo do cliente
  Serial := Serial;

    // data de libera�ao (nao est� sendo usado)
    DataL := Copy(Serial,1,2)+'/';
    rDL := DataL;

    DataL := Copy(Serial,3,2);
    rDL := rDL + DataL+'/';

    DataL := Copy(Serial,5,4);
    rDL := rDL + DataL;

    DataL := rDL;


    // data de expira�ao (verifica a data de expira�ao)
    DataE := Copy(Serial,9,2);
    rDE := DataE+'/';

    DataE := Copy(Serial,11,2);
    rDE := rDE + DataE+'/';

    DataE := Copy(Serial,13,4);
    rDE := rDE + DataE;

    DataE := rDE;
end;


end.
 
