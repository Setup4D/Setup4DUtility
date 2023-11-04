unit Setup4D.Utility;

interface

uses
  {$IF DEFINED(FPC)}
  Classes;
  {$ELSE}
  System.Classes;
  {$ENDIF}

type
  {$IFDEF HAS_PORTUGUES}
  /// <summary>
  /// Classe de suporte no desenvolvimento de aplicativos.
  /// V�rias fun��es e procedimento que simplifica o uso de outros classes.
  /// </summary>
  {$ELSE}
  /// <summary>
  /// Support class for application development.
  /// Contains various functions and procedures that simplify the use of other classes.
  /// </summary>
  {$ENDIF}
  TSetup4DUtility = class
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Remove todos os caracteres n�o num�ricos da string especificada.
    /// </summary>
    /// <param name="AValue">
    /// A string da qual deseja-se remover os caracteres n�o num�ricos.
    /// </param>
    /// <returns>
    /// A string resultante contendo apenas os caracteres num�ricos.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Removes all non-numeric characters from the specified string.
    /// </summary>
    /// <param name="AValue">
    /// The string from which you want to remove non-numeric characters.
    /// </param>
    /// <returns>
    /// The resulting string containing only numeric characters.
    /// </returns>
    {$ENDIF}
    class function OnlyNumber(const AValue: String): String;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se o caractere especificado � um d�gito num�rico.
    /// </summary>
    /// <param name="AValue">
    /// O caractere a ser verificado.
    /// </param>
    /// <returns>
    /// True se o caractere for um d�gito num�rico, caso contr�rio, False.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Checks if the specified character is a numeric digit.
    /// </summary>
    /// <param name="AValue">
    /// The character to be checked.
    /// </param>
    /// <returns>
    /// True if the character is a numeric digit, otherwise, False.
    /// </returns>
    {$ENDIF}
    class function CharIsNum(const AValue: Char): Boolean;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Remove todos os caracteres que n�o s�o letras da string.
    /// </summary>
    /// <param name="AValue">
    /// A string da qual remover os caracteres n�o alfab�ticos.
    /// </param>
    /// <returns>
    /// A string resultante contendo apenas letras.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Removes all characters that are not letters from the string.
    /// </summary>
    /// <param name="AValue">
    /// The string from which to remove non-alphabetic characters.
    /// </param>
    /// <returns>
    /// The resulting string containing only letters.
    /// </returns>
    {$ENDIF}
    class function OnlyAlpha(const AValue: String): String;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se um caractere � uma letra.
    /// </summary>
    /// <param name="AValue">
    /// O caractere a ser verificado.
    /// </param>
    /// <returns>
    /// True se o caractere for uma letra, False caso contr�rio.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Checks if a character is a letter.
    /// </summary>
    /// <param name="AValue">
    /// The character to be checked.
    /// </param>
    /// <returns>
    /// True if the character is a letter, False otherwise.
    /// </returns>
    {$ENDIF}
    class function CharIsAlpha(const AValue: Char): Boolean;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Substitui caracteres especiais em uma string por equivalentes normais.
    /// </summary>
    /// <param name="AValue">
    /// A string na qual os caracteres especiais ser�o substitu�dos.
    /// </param>
    /// <param name="AExtras">
    /// Indica se caracteres extras tamb�m devem ser removidos (opcional).
    /// </param>
    /// <returns>
    /// A string resultante ap�s a substitui��o.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o substitui caracteres especiais, como acentos e caracteres n�o alfanum�ricos, por equivalentes normais.
    ///   Pode ser �til para normalizar strings antes de process�-las ou armazen�-las em sistemas que n�o aceitam caracteres especiais.
    ///   O par�metro opcional <paramref name="AExtras"/> determina se caracteres extras, como sinais de pontua��o, tamb�m ser�o removidos.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Replaces special characters in a string with their normal equivalents.
    /// </summary>
    /// <param name="AValue">
    /// The string in which special characters will be replaced.
    /// </param>
    /// <param name="AExtras">
    /// Indicates whether extra characters should also be removed (optional).
    /// </param>
    /// <returns>
    /// The resulting string after replacement.
    /// </returns>
    /// <remarks>
    ///   This function replaces special characters, such as accents and non-alphanumeric characters, with their normal equivalents.
    ///   It can be useful for normalizing strings before processing or storing them in systems that do not accept special characters.
    ///   The optional parameter <paramref name="AExtras"/> determines whether extra characters, such as punctuation marks, will also be removed.
    /// </remarks>
    {$ENDIF}
    class function ReplaceSpecialChars(AValue: string; AExtras: Boolean = False): string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// L� uma tag XML espec�fica de uma string XML.
    /// </summary>
    /// <remarks>
    /// Esta fun��o extrai o conte�do da tag XML especificada a partir da string XML fornecida.
    /// </remarks>
    /// <param name="AXML">
    /// A string XML da qual a tag ser� lida.
    /// </param>
    /// <param name="ATag">
    /// A tag XML que ser� lida.
    /// </param>
    /// <returns>
    /// O conte�do da tag XML especificada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Reads a specific XML tag from an XML string.
    /// </summary>
    /// <remarks>
    /// This function extracts the content of the specified XML tag from the provided XML string.
    /// </remarks>
    /// <param name="AXML">
    /// The XML string from which the tag will be read.
    /// </param>
    /// <param name="ATag">
    /// The XML tag to be read.
    /// </param>
    /// <returns>
    /// The content of the specified XML tag.
    /// </returns>
    {$ENDIF}
    class function ReadXMLTag(const AXML: string; const ATag: string): string; Overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// L� uma tag XML espec�fica de uma string XML.
    /// </summary>
    /// <remarks>
    /// Esta fun��o extrai o conte�do da tag XML especificada a partir da string XML fornecida.
    /// </remarks>
    /// <param name="AXML">
    /// A lista de strings XML da qual a tag ser� lida.
    /// </param>
    /// <param name="ATag">
    /// A tag XML que ser� lida.
    /// </param>
    /// <returns>
    /// O conte�do da tag XML especificada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Reads a specific XML tag from an XML string.
    /// </summary>
    /// <remarks>
    /// This function extracts the content of the specified XML tag from the provided XML string.
    /// </remarks>
    /// <param name="AXML">
    /// The list of XML strings from which the tag will be read.
    /// </param>
    /// <param name="ATag">
    /// The XML tag to be read.
    /// </param>
    /// <returns>
    /// The content of the specified XML tag.
    /// </returns>
    {$ENDIF}
    class function ReadXMLTag(const AXML: TStringList; const ATag: string): string; Overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Remove espa�os em branco de uma string.
    /// </summary>
    /// <remarks>
    /// Esta fun��o remove todos os espa�os em branco de uma string e retorna a vers�o sem espa�os.
    /// </remarks>
    /// <param name="AValue">
    /// A string da qual os espa�os em branco ser�o removidos.
    /// </param>
    /// <returns>
    /// A string resultante sem espa�os em branco.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Removes whitespace from a string.
    /// </summary>
    /// <remarks>
    /// This function removes all whitespace from a string and returns the resulting string without spaces.
    /// </remarks>
    /// <param name="AValue">
    /// The string from which whitespace will be removed.
    /// </param>
    /// <returns>
    /// The resulting string without whitespace.
    /// </returns>
    {$ENDIF}
    class function RemoveSpaces(const AValue: string): string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Avalia uma express�o e retornar um valor com base em uma condi��o.
    /// </summary>
    /// <remarks>
    /// Esta fun��o permite avaliar uma express�o e retornar um valor com base em uma condi��o.
    /// </remarks>
    /// <param name="T">
    /// Define o tipo que ser� retornado.
    /// </param>
    /// <param name="AValue">
    /// A express�o a ser verificada.
    /// </param>
    /// <param name="T1">
    /// O valor retornado se a express�o for verdadeira.
    /// </param>
    /// <param name="T2">
    /// O valor retornado se a express�o for falsa.
    /// </param>
    /// <returns>
    /// Se a express�o for verdadeira, retorna <paramref name="T1"/>, caso contr�rio, retorna <paramref name="T2"/>.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Evaluates an expression and returns a value based on a condition.
    /// </summary>
    /// <remarks>
    /// This function allows evaluating an expression and returning a value based on a condition.
    /// </remarks>
    /// <param name="AValue">
    /// The expression to evaluate.
    /// </param>
    /// <param name="T1">
    /// The value to return if the expression is true.
    /// </param>
    /// <param name="T2">
    /// The value to return if the expression is false.
    /// </param>
    /// <returns>
    /// If the expression is true, returns <paramref name="T1"; otherwise, returns <paramref name="T2"/>.
    /// </returns>
    {$ENDIF}
    class function IIF<T>(AValue : Boolean; T1, T2 : T) : T;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a data e a hora no formato "yyyy-mm-dd hh:nn:ss"
    /// </summary>
    /// <param name="AValue">
    ///  Informa��es acerca do par�metro de data e hora que se pretende formatar.
    /// </param>
    /// <returns>
    /// Retorna a data e hora formatada com o padrao yyyy-mm-dd hh:nn:ss
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the date and time in the "yyyy-mm-dd hh:nn:ss" format.
    /// </summary>
    /// <param name="AValue">
    /// Information about the date and time parameter that you want to format.
    /// </param>
    /// <returns>
    /// Returns the date and time formatted with the pattern "yyyy-mm-dd hh:nn:ss."
    /// </returns>
    {$ENDIF}
    class function GetDateTime(AValue : TDateTime): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a data no formato "yyyy-mm-dd"
    /// </summary>
    /// <param name="AValue">
    ///  Informa��es acerca do par�metro de data e hora que se pretende formatar.
    /// </param>
    /// <returns>
    /// Retorna a data formatada com o padrao yyyy-mm-dd
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the date in the "yyyy-mm-dd" format.
    /// </summary>
    /// <param name="AValue">
    /// Information about the date parameter that you want to format.
    /// </param>
    /// <returns>
    /// Returns the date formatted with the pattern "yyyy-mm-dd."
    /// </returns>
    {$ENDIF}
    class function GetDate(AValue : TDateTime): string; overload;


    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a hora no formato "hh:nn:ss"
    /// </summary>
    /// <param name="AValue">
    ///  Informa��es acerca do par�metro hora que se pretende formatar.
    /// </param>
    /// <returns>
    /// Retorna a hora formatada com o padrao hh:nn:ss
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the time in the "hh:nn:ss" format.
    /// </summary>
    /// <param name="AValue">
    /// Information about the time parameter that you want to format.
    /// </param>
    /// <returns>
    /// Returns the time formatted with the pattern "hh:nn:ss."
    /// </returns>
    {$ENDIF}
    class function GetTime(AValue : TDateTime): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a data e a hora no formato "yyyy-mm-dd hh:nn:ss"
    /// </summary>
    /// <returns>
    /// Retorna a data e hora formatada com o padrao yyyy-mm-dd hh:nn:ss
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the date and time in the "yyyy-mm-dd hh:nn:ss" format.
    /// </summary>
    /// <returns>
    /// Returns the date and time formatted with the pattern "yyyy-mm-dd hh:nn:ss."
    /// </returns>
    {$ENDIF}
    class function GetDateTime: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a hora no formato "yyyy-mm-dd"
    /// </summary>
    /// <returns>
    /// Retorna a hora formatada com o padrao yyyy-mm-dd
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the time in the "yyyy-mm-dd" format.
    /// </summary>
    /// <returns>
    /// Returns the time formatted with the pattern "yyyy-mm-dd."
    /// </returns>
    {$ENDIF}
    class function GetDate: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo obt�m a hora no formato "hh:nn:ss"
    /// </summary>
    /// <returns>
    /// Retorna a hora formatada com o padrao hh:nn:ss
    /// </returns>
    {$ELSE}
    /// <summary>
    /// This method retrieves the time in the "hh:nn:ss" format.
    /// </summary>
    /// <returns>
    /// Returns the time formatted with the pattern "hh:nn:ss."
    /// </returns>
    {$ENDIF}
    class function GetTime: string; overload;
  end;
implementation

uses
  {$IF DEFINED(FPC)}
  Dom,
  XMLRead,
  SysUtils;
  {$ELSE}
  Xml.XMLDoc,
  Xml.XMLIntf,
  System.SysUtils;
  {$ENDIF}

{$IF DEFINED(FPC)}
class function TSetup4DUtility.ReadXMLTag(const AXML, ATag: string): string;
var
  LXMLDocument: TXMLDocument;
  LXMLNode: TDOMNode;
begin
  Result := EmptyStr;

  LXMLDocument := TXMLDocument.Create;
  try
    try
      ReadXMLFile(LXMLDocument, AXML);
      LXMLNode := LXMLDocument.DocumentElement.FirstChild;

      while Assigned(LXMLNode) do
      begin
        if LXMLNode.NodeName = ATag then
        begin
          Result := LXMLNode.TextContent;
          Break;
        end;
        LXMLNode := LXMLNode.NextSibling;
      end;
    except
      // Handle any exceptions here
    end;
  finally
    LXMLDocument.Free;
  end;
end;

{$ELSE}

class function TSetup4DUtility.ReadXMLTag(const AXML,
  ATag: string): string;
begin
  Result := EmptyStr;

  var LXMLDocument: IXMLDocument;
  LXMLDocument := TXMLDocument.Create(nil);
  LXMLDocument.LoadFromXML(AXML);

  if not Assigned(LXMLDocument.DocumentElement) then
    Exit;

  var LXMLNode: IXMLNode;
  LXMLNode := LXMLDocument.DocumentElement.ChildNodes.FindNode(ATag);

  if Assigned(LXMLNode) then
    Result := LXMLNode.Text;
end;

{$ENDIF}

class function TSetup4DUtility.ReadXMLTag(const AXML: TStringList;
  const ATag: string): string;
begin
  Result:= Self.ReadXMLTag(AXML.Text, ATag);
end;

{$IF DEFINED(FPC)}
class function TSetup4DUtility.RemoveSpaces(const AValue: string): string;
var
  I: Integer;
begin
  Result := EmptyStr;
  for I := 1 to Length(AValue) do
  begin
    if not (AValue[I] in [' ', #9, #10, #13]) then
      Result := Result + AValue[I];
  end;
end;

{$ELSE}
class function TSetup4DUtility.RemoveSpaces(const AValue: string): string;
begin
  Result := EmptyStr;
  for var I := 1 to Length(AValue) do
  begin
    if not CharInSet(AValue[I], [' ', #9, #10, #13]) then
      Result := Result + AValue[I];
  end;
end;
{$ENDIF}

class function TSetup4DUtility.ReplaceSpecialChars(AValue : string; AExtras : boolean) : string;
const
  {$IF DEFINED(FPC)}
  SPECIAL_CHAR: array[1..38] of string = (#$00E1, #$00E0, #$00E3, #$00E2, #$00E4, #$00C1, #$00C0, #$00C3, #$00C2, #$00C4,
    #$00E9, #$00E8, #$00C9, #$00C8, #$00ED, #$00EC, #$00CD, #$00CC, #$00F3, #$00F2, #$00F6, #$00F5, #$00F4, #$00D3, #$00D2, #$00D6, #$00D5, #$00D4,
    #$00FA, #$00F9, #$00FC, #$00DA, #$00D9, #$00DC, #$00E7, #$00C7, #$00F1, #$00D1);

  NORMAL_CHAR: array[1..38] of string = ('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A', 'A',
    'e', 'e', 'E', 'E', 'i', 'i', 'I', 'I', 'o', 'o', 'o', 'o', 'o', 'O', 'O', 'O', 'O', 'O',
    'u', 'u', 'u', 'u', 'u', 'u', 'c', 'C', 'n', 'N');

  EXTRA_CHAR: array[1..48] of string = ('<', '>', '!', '@', '#', '$', '%', #$00A8, #$0026, #$002A,
    '(', ')', '_', '+', '=', '{', '}', '[', ']', '?', ';', ':', ',', '|', '*', '"', '~', '^',
    #$00B4, '`', #$00A8, #$00E6, #$00C6, #$00F8, #$00A3, #$00D8, #$0192, #$00AA, #$00BA, #$00BF, #$00AE, #$00BD, #$00BC, #$00DF, #$00B5, #$00FE, #$00FD, #$00DD);




  {$ELSE}
  _SPECIAL_CHAR: array[1..38] of String = ('�', '�', '�', '�', '�','�', '�', '�', '�', '�',
                                     '�', '�','�', '�','�', '�','�', '�',
                                     '�', '�', '�','�', '�','�', '�', '�', '�', '�',
                                     '�', '�', '�','�','�', '�','�','�','�','�');

  _NORMAL_CHAR: array[1..38] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');

  _EXTRA_CHAR: array[1..48] of string = ('<','>','!','@','#','$','%','�','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','�','`',
                                     '�','�','�','�','�','�','�','�','�','�',
                                     '�','�','�','�','�','�','�','�');
  {$ENDIF}
var
  LText : string;
  I : Integer;
begin
   LText := AValue;
   for I:=1 to 38 do
     LText := StringReplace(LText, {$IF DEFINED(FPC)}SPECIAL_CHAR{$ELSE}_SPECIAL_CHAR{$ENDIF}[I], {$IF DEFINED(FPC)}NORMAL_CHAR{$ELSE}_NORMAL_CHAR{$ENDIF}[I], [rfreplaceall]);

   if (AExtras) then
   begin
     for I:=1 to 48 do
       LText := StringReplace(LText, {$IF DEFINED(FPC)}EXTRA_CHAR{$ELSE}_EXTRA_CHAR{$ENDIF}[I], '', [rfreplaceall]);
   end;

   Result := LText;
end;

class function TSetup4DUtility.CharIsAlpha(const AValue: Char): Boolean;
begin
  Result := CharInSet(AValue, ['A'..'Z','a'..'z'] ) ;
end;

class function TSetup4DUtility.CharIsNum(const AValue: Char): Boolean;
begin
  Result := CharInSet(AValue, ['0'..'9']) ;
end;

class function TSetup4DUtility.GetDate: string;
begin
  Result := GetDate(Now);
end;

class function TSetup4DUtility.GetDate(AValue: TDateTime): string;
begin
  Result:= {$IF DEFINED(FPC)}SysUtils{$Else}System.SysUtils{$ENDIF}.FormatDateTime('yyyy-mm-dd', AValue);
end;

class function TSetup4DUtility.GetDateTime(AValue: TDateTime): string;
begin
  Result:= {$IF DEFINED(FPC)}SysUtils{$Else}System.SysUtils{$ENDIF}.FormatDateTime('yyyy-mm-dd hh:nn:ss', AValue);
end;

class function TSetup4DUtility.GetDateTime: string;
begin
  Result := GetDateTime(Now);
end;

class function TSetup4DUtility.GetTime: string;
begin
  Result := GetTime(Now);
end;

class function TSetup4DUtility.GetTime(AValue: TDateTime): string;
begin
  Result:= {$IF DEFINED(FPC)}SysUtils{$Else}System.SysUtils{$ENDIF}.FormatDateTime('hh:nn:ss', AValue);
end;

class function TSetup4DUtility.IIF<T>(AValue: Boolean; T1, T2: T): T;
begin
  Result := T1;

  if not AValue then
    Result := T2;
end;

class function TSetup4DUtility.OnlyAlpha(const AValue: String): String;
Var
  LPosition : Integer ;
  LSizeValue : Integer;
begin
  Result := '' ;
  LSizeValue := Length( AValue ) ;
  For LPosition := 1 to LSizeValue do
  begin
     if CharIsAlpha( AValue[LPosition] ) then
        Result := Result + AValue[LPosition];
  end;
end ;

class function TSetup4DUtility.OnlyNumber(const AValue: String): String;
Var
  LPosition: integer;
  LSizeValue: integer;
begin
  Result := EmptyStr;
  LSizeValue := AValue.Length;
  For LPosition := 1 to LSizeValue do
  begin
    if CharIsNum(AValue[LPosition]) then
      Result := Result + AValue[LPosition];
  end;
end;

end.
