unit UFGenerateCache;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit, AdvEdBtn,
  AdvFileNameEdit, JclStrings, Clipbrd;

type
  TFGenerateChache = class(TForm)
    AFEBridgeFile: TAdvFileNameEdit;
    BGenerate: TButton;
    AFECacheFile: TAdvFileNameEdit;
    CBClipBoard: TCheckBox;
    procedure BGenerateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGenerateChache: TFGenerateChache;

implementation

{$R *.dfm}

procedure TFGenerateChache.BGenerateClick(Sender: TObject);

var
   BridgeFile: TextFile;
   BridgeIn: string;
   CacheOut: string;
   GUID1: string;
   GUID2: string;
   Signature, Signature1, Signature2: string;
   CacheLines: TStringList;

begin

   if AFEBridgeFile.Text = ''
   then
      begin
         ShowMessage('Please enter Bridge file name');
         AFEBridgeFile.SetFocus;
         Exit;
      end;

   if (AFECacheFile.Text = '') and
      (not CBClipBoard.Checked)
   then
      begin
         ShowMessage('Please enter Cache file name or check "Copy to clipboard"');
         AFECacheFile.SetFocus;
         Exit;
      end;

   CacheLines := TStringList.Create;

   AssignFile(BridgeFile, AFEBridgeFile.Text);

   Reset(BridgeFile);

   GUID1 := '';

   while not Eof(BridgeFile) do
      begin

         Readln(BridgeFile, BridgeIn);

         if Pos('[''{', BridgeIn) > 0
         then
            if GUID1 = ''
            then
               begin
                  GUID1 := StrAfter('[''', BridgeIn);
                  GUID1 := StrBefore(''']', GUID1);
               end
            else
               begin
                  GUID2 := StrAfter('[''', BridgeIn);
                  GUID2 := StrBefore(''']', GUID2);
                  CacheOut := Signature + ' ' + GUID1 + ' ' + GUID2 + ' ' + StrBefore('.pas', ExtractFileName(AFEBridgeFile.Text));
                  CacheLines.Add(CacheOut);
                  GUID1 := '';
               end;

         if Pos('[JavaSignature(''', BridgeIn) > 0
         then
            begin
               Signature := StrAfter('[JavaSignature(''', BridgeIn);
               Signature := StrBefore(''')', Signature);
               Signature := StringReplace(Signature, '/', '.', [rfReplaceAll]);
               Signature2 := StrRestOf(Signature, StrLastPos('.', Signature) + 1);
               Signature2 := StringReplace(Signature2, '$', '_', [rfReplaceAll]);
               Signature := Signature + ' ' + Signature2;
            end;

      end;

   CloseFile(BridgeFile);

   if not CBClipBoard.Checked
   then
      begin
         CacheLines.SaveToFile(AFECacheFile.Text);
         ShowMessage('Created file ' + AFECacheFile.Text);
      end
   else
      begin
         Clipboard.AsText := CacheLines.Text;
         ShowMessage('Copied to clipboard');
      end;

   CacheLines.Free;

end;

end.
