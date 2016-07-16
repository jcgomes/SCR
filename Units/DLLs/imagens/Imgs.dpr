library Imgs;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  dbclient,
  Jpeg,
  ExtCtrls,
  db,
  Classes;

{$R *.res}

Function ShowImg(cds : TBlobField; img : TImage): string; stdcall;
var
  bS  : TClientBlobStream;
  Pic : TJpegImage;
begin
  bS := TClientBlobStream.Create (cds, bmRead);
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

exports
  showImg;

begin
end.
