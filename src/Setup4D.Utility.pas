unit Setup4D.Utility;

interface

uses
  System.Classes;

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
    /// <param name="AXMLString">
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
    /// <param name="AXMLString">
    /// The XML string from which the tag will be read.
    /// </param>
    /// <param name="ATag">
    /// The XML tag to be read.
    /// </param>
    /// <returns>
    /// The content of the specified XML tag.
    /// </returns>
    {$ENDIF}
    class function ReadXMLTag(const AXMLString: string; const ATag: string): string; Overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// L� uma tag XML espec�fica de uma string XML.
    /// </summary>
    /// <remarks>
    /// Esta fun��o extrai o conte�do da tag XML especificada a partir da string XML fornecida.
    /// </remarks>
    /// <param name="AXMLString">
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
    /// <param name="AXMLString">
    /// The list of XML strings from which the tag will be read.
    /// </param>
    /// <param name="ATag">
    /// The XML tag to be read.
    /// </param>
    /// <returns>
    /// The content of the specified XML tag.
    /// </returns>
    {$ENDIF}
    class function ReadXMLTag(const AXMLString: TStringList; const ATag: string): string; Overload;
  end;
implementation

uses
  Xml.XMLDoc,
  Xml.XMLIntf,
  System.SysUtils;

class function TSetup4DUtility.ReadXMLTag(const AXMLString,
  ATag: string): string;
begin
  Result := EmptyStr;

  var LXMLDocument: IXMLDocument;
  LXMLDocument := TXMLDocument.Create(nil);
  LXMLDocument.LoadFromXML(AXMLString);

  if not Assigned(LXMLDocument.DocumentElement) then
    Exit;

  var LXMLNode: IXMLNode;
  LXMLNode := LXMLDocument.DocumentElement.ChildNodes.FindNode(ATag);

  if Assigned(LXMLNode) then
    Result := LXMLNode.Text;
end;

class function TSetup4DUtility.ReadXMLTag(const AXMLString: TStringList;
  const ATag: string): string;
begin
  Result:= Self.ReadXMLTag(AXMLString.Text, ATag);
end;

class function TSetup4DUtility.ReplaceSpecialChars(AValue : string; AExtras : boolean) : string;
const

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
var
  LText : string;
  I : Integer;
begin
   LText := AValue;
   for I:=1 to 38 do
     LText := StringReplace(LText, _SPECIAL_CHAR[I], _NORMAL_CHAR[I], [rfreplaceall]);

   if (AExtras) then
   begin
     for I:=1 to 48 do
       LText := StringReplace(LText, _EXTRA_CHAR[I], '', [rfreplaceall]);
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
