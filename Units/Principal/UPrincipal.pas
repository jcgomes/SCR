unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Menus, inifiles, UCBase, UCDataConnector,
  UCDBXConn, UCSettings,ShellAPI,Registry, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Menu: TMainMenu;
    Arquivo: TMenuItem;
    Logoff: TMenuItem;
    Sair: TMenuItem;
    Cadastros1: TMenuItem;
    Empresas2: TMenuItem;
    N3: TMenuItem;
    Config: TMenuItem;
    rocarSenha1: TMenuItem;
    Usurios1: TMenuItem;
    Caractersticasdeperculosidade1: TMenuItem;
    FontesGeradoras1: TMenuItem;
    Classes1: TMenuItem;
    Descrio1: TMenuItem;
    AnexoF1: TMenuItem;
    AnexoG1: TMenuItem;
    Resduos2: TMenuItem;
    Substncias2: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Imagens_16x16: TImageList;
    Imagens_Botoes: TImageList;
    StatusBar1: TStatusBar;
    Processos1: TMenuItem;
    Atividades1: TMenuItem;
    Norma1: TMenuItem;
    Ajuda2: TMenuItem;
    N1: TMenuItem;
    UC: TUserControl;
    ucConn: TUCDBXConn;
    N4: TMenuItem;
    Bancodedados1: TMenuItem;
    Laboratrio1: TMenuItem;
    Parametros1: TMenuItem;
    Amostras1: TMenuItem;
    amostras2: TMenuItem;
    ABNTNBR1000420041: TMenuItem;
    FormulriodeClassificao1: TMenuItem;
    imgBotoes: TImageList;
    Configuraes1: TMenuItem;
    UCConfig: TUCSettings;
    procedure UCLoginSucess(Sender: TObject; IdUser: Integer; Usuario, Nome,
      Senha, Email: string; Privileged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Atividades1Click(Sender: TObject);
    procedure Processos1Click(Sender: TObject);
    procedure Substncias2Click(Sender: TObject);
    procedure Resduos2Click(Sender: TObject);
    procedure AnexoG1Click(Sender: TObject);
    procedure AnexoF1Click(Sender: TObject);
    procedure Descrio1Click(Sender: TObject);
    procedure Classes1Click(Sender: TObject);
    procedure FontesGeradoras1Click(Sender: TObject);
    procedure Caractersticasdeperculosidade1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Empresas2Click(Sender: TObject);
    procedure Bancodedados1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure amostras2Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure FormulriodeClassificao1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ConfigDb;
    Procedure CriaIni;
    Procedure LeIni;
    procedure ExcluiHTML;
    procedure ExcluiBMP;


    

  end;

var
  frmPrincipal: TfrmPrincipal;
  Banco :String;

implementation

uses UConsEmpr, UConsRCP, UConsRFG, UConsRClas,
  uConsRDesc, uConsRAnF, uConsRAnG, uConsRRes, uConsSubs,
  UConsProcG, UConsRAtv, Udm, uSobre, uConfig,
  uConsParam, uConsAmostras, uConsClassificacao,UFuncoes;


{$R *.dfm}

procedure TfrmPrincipal.Ajuda2Click(Sender: TObject);
begin
  ShellExecute(0,'open','AcroRd32.exe',Pchar(ExtractFilePath(Application.ExeName)+'\manual.pdf'),nil,SW_SHOWNORMAL)
end;

procedure TfrmPrincipal.amostras2Click(Sender: TObject);
begin
  frmConsAmostras := TfrmConsAmostras.Create(Application);
  if frmConsAmostras = nil then
  frmConsAmostras.Show;
end;

procedure TfrmPrincipal.AnexoF1Click(Sender: TObject);
begin
    frmConsRAnF := TfrmConsRAnF.Create(Application);
    if frmConsRAnF = nil then
    frmConsRAnF.Show;
end;

procedure TfrmPrincipal.AnexoG1Click(Sender: TObject);
begin
    frmConsRAnG := TfrmConsRAnG.Create(Application);
    if frmConsRAnG = nil then
    frmConsRAnG.Show;
end;

procedure TfrmPrincipal.Atividades1Click(Sender: TObject);
begin
    frmConsRAtv := TfrmConsRAtv.Create(Application);
    if frmConsRAtv = nil then
    frmConsRAtv.Show;
end;

procedure TfrmPrincipal.Bancodedados1Click(Sender: TObject);
begin
  ConfigDb;
end;

procedure TfrmPrincipal.Caractersticasdeperculosidade1Click(Sender: TObject);
begin
    frmConsRCP := TfrmConsRCP.Create(Application);
    if frmConsRCP = nil then
    frmConsRCP.Show;
end;

procedure TfrmPrincipal.Classes1Click(Sender: TObject);
begin
    frmConsRClas := TfrmConsRClas.Create(Application);
    if frmConsRClas = nil then
    frmConsRClas.Show;
    
end;

procedure TfrmPrincipal.ConfigDb;
var
Input : String;
arquivo : TIniFile;
begin
    if not FileExists(ExtractFilePath(Application.ExeName) + 'SCR.ini') then
    begin
        CriaIni;
    end;

    LeIni;
    Input := InputBox('Configurar banco de dados','Caminho:',Banco);

    if input <> Banco then
    begin
        arquivo := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'SCR.ini');
        try
          // salva só o DataBase sem alterar o resto da estrutura do arquivo .INI
          arquivo.WriteString('BANCO','Path',Input);
          ShowMessage('Banco configurado com sucesso.' +#13+ 'É necessário reiniciar o aplicativo.');
        finally
          FreeAndNil(arquivo);
        end;
    end
end;

procedure TfrmPrincipal.Configuraes1Click(Sender: TObject);
begin
  frmConfig := TfrmConfig.Create(Application);
  if frmConfig = nil then
  frmConfig.Show;
end;

procedure TfrmPrincipal.CriaIni;
var arquivo : TStringList;
begin
  arquivo := TStringList.Create;
  try
    arquivo.Add('[BANCO]');
    arquivo.Add('Path='+ 'localhost/3050:'+ExtractFilePath(Application.ExeName) + 'SCR.FDB');
    arquivo.SaveToFile(ExtractFilePath(Application.ExeName) + 'SCR.ini');
  finally
    FreeAndNil(arquivo);
  end;
end;

procedure TfrmPrincipal.Descrio1Click(Sender: TObject);
begin
    frmConsRDesc := TfrmConsRDesc.Create(Application);
    if frmConsRDesc = nil then
    frmConsRDesc.Show;
end;

procedure TfrmPrincipal.Empresas2Click(Sender: TObject);
begin
  frmConsEmpr := TfrmConsEmpr.Create(Application);
  if frmConsEmpr = nil then
  frmConsEmpr.Show;
end;

procedure TfrmPrincipal.ExcluiBMP;
var
  SR: TSearchRec;
  I: integer;
  Dir : String;
begin
  Dir := ExtractFilePath(Application.ExeName)+'relat';
  I := FindFirst(Dir + '\*.bmp', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    if not DeleteFile(Dir + '\' + SR.Name) then
      ShowMessage(Dir + '\' + SR.Name);
      I := FindNext(SR);
  end;

end;

procedure TfrmPrincipal.ExcluiHTML;
var
  SR: TSearchRec;
  I: integer;
  Dir : String;
begin
  Dir := ExtractFilePath(Application.ExeName)+'relat';
  I := FindFirst(Dir + '\*.html', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    if not DeleteFile(Dir + '\' + SR.Name) then
      ShowMessage(Dir + '\' + SR.Name);
      I := FindNext(SR);
  end;

end;

procedure TfrmPrincipal.FontesGeradoras1Click(Sender: TObject);
begin
    frmConsRFG := TfrmConsRFG.Create(Application);
    if frmConsRFG = nil then
    frmConsRFG.Show;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ExcluiHTML;
  ExcluiBMP;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    case Application.MessageBox(PChar('Deseja encerrar o aplicativo?'), 'Atenção', MB_YESNO+MB_ICONQUESTION) of
    ID_YES: Application.Terminate;
    ID_NO : CanClose := False;
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  // abre a conexão para utilizar o formulário de login do user control
  DM.Conexao.Open;
end;


procedure TfrmPrincipal.FormulriodeClassificao1Click(Sender: TObject);
begin
  frmConsClassificacao := TfrmConsClassificacao.Create(Application);
  if frmConsClassificacao = nil then
  frmConsClassificacao.Show;
end;

procedure TfrmPrincipal.LeIni;
var
  myINI   : TINIFile;
  Caminho : String;
begin
  myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'SCR.ini');
  application.processmessages;
  try
    begin
        Caminho := myINI.ReadString('BANCO', 'Path', 'SCR');
        Banco := Caminho;
    end;
  except
    begin
      raise Exception.Create( 'O banco de dados não foi aberto corretamente.');
      application.terminate;
    end;
  end;
  myINI.Free;
end;

procedure TfrmPrincipal.Parametros1Click(Sender: TObject);
begin
  frmConsParam := TfrmConsParam.Create(Application);
  if frmConsParam = nil then
  frmConsParam.Show;
end;

procedure TfrmPrincipal.Processos1Click(Sender: TObject);
begin
    frmConsProcG := TfrmConsProcG.Create(Application);
    if frmConsProcG = nil then
    frmConsProcG.Show;
end;

procedure TfrmPrincipal.Resduos2Click(Sender: TObject);
begin
    frmConsRRes := TfrmConsRRes.Create(Application);
    if frmConsRRes = nil then
    frmConsRRes.Show;
end;

procedure TfrmPrincipal.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
    frmSobre := TfrmSobre.Create(Application);
    if frmSobre = nil then
    frmSobre.Show;
end;

procedure TfrmPrincipal.Substncias2Click(Sender: TObject);
begin
    frmConsRSubs := TfrmConsRSubs.Create(Application);
    if frmConsRSubs = nil then
    frmConsRSubs.Show;
end;

procedure TfrmPrincipal.UCLoginSucess(Sender: TObject; IdUser: Integer; Usuario,
  Nome, Senha, Email: string; Privileged: Boolean);
begin
  // fecha a conexão após login
  DM.Conexao.Close;
end;

end.
