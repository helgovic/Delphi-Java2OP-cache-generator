program GenerateCache;

uses
  Vcl.Forms,
  UFGenerateCache in 'UFGenerateCache.pas' {FGenerateChache},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TFGenerateChache, FGenerateChache);
  Application.Run;
end.
