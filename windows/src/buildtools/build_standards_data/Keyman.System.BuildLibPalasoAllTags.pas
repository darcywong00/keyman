unit Keyman.System.BuildLibPalasoAllTags;

interface

type
  TBuildLibPalasoAllTags = class
    class procedure Build(AllTagsFile, DestinationFile: string);
  end;

implementation

uses
  System.Classes,
  System.StrUtils,
  System.SysUtils;

{ TBuildLibPalasoAllTags }

class procedure TBuildLibPalasoAllTags.Build(AllTagsFile,
  DestinationFile: string);
var
  FAllTags: TStringList;
  FResult: TStringList;
  i, j: Integer;
  s: string;
  items: TArray<string>;
  t: string;
begin
  FAllTags := TStringList.Create;
  try
    FAllTags.LoadfromFile(AllTagsFile, TEncoding.UTF8);
    FResult := TStringList.Create;
    try

      FResult.Add('unit Keyman.System.Standards.LibPalasoAllTagsRegistry;');
      FResult.Add('');
      FResult.Add('interface');
      FResult.Add('');
      FResult.Add('// File-Date: '+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now));
      FResult.Add('// Extracted from https://raw.githubusercontent.com/silnrsi/sldr/master/extras/alltags.txt');
      FResult.Add('// Generated by build_standards_data');
      FResult.Add('');
      FResult.Add('uses');
      FResult.Add('  System.Generics.Collections;');
      FResult.Add('');
      FResult.Add('type');
      FResult.Add('  TLibPalasoAllTagsMap = class');
      FResult.Add('  public');
      FResult.Add('    class procedure Fill(dict: TDictionary<string,TArray<string>>);');
      FResult.Add('  end;');
      FResult.Add('');
      FResult.Add('implementation');
      FResult.Add('');
      FResult.Add('{ TLibPalasoAllTagsMap }');
      FResult.Add('');
      FResult.Add('class procedure TLibPalasoAllTagsMap.Fill(dict: TDictionary<string,TArray<string>>);');
      FResult.Add('begin');

      for i := 0 to FAllTags.Count - 1 do
      begin
        // Line format: ignore '*'
        s := FAllTags[i];
        items := s.Split([' ','=','*'], TStringSplitOptions.ExcludeEmpty);
        if Length(items) = 0 then
          Continue;
        t := Format('  dict.Add(''%s'', [', [items[0]]);
        for j := 1 to High(items) do
        begin
          if j > 1 then
            t := t + ', ';
          t := t + Format('''%s''', [items[j]]);
        end;
        t := t + ']);';
        FResult.Add(t);
      end;

      FResult.Add('end;');
      FResult.Add('');
      FResult.Add('end.');

      FResult.SaveToFile(DestinationFile, TEncoding.UTF8);
    finally
      FResult.Free;
    end;
  finally
    FAllTags.Free;
  end;
end;

end.
