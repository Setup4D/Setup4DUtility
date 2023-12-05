unit Setup4D.Utility;

interface

uses
  Horse.Request,
  Horse.Commons,
  Horse.Exception,

  {$IF DEFINED(FPC)}
  fpjson,
  jsonparser,
  Classes,
  SysUtils;
  {$ELSE}
  System.JSON,
  System.Classes,
  System.SysUtils,
  System.Generics.Collections;
  {$ENDIF}

type
  {$IFDEF HAS_PORTUGUES}
  /// <summary>
  /// Classe de suporte no desenvolvimento de aplicativos.
  /// Várias funções e procedimento que simplifica o uso de outros classes.
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
    /// Remove todos os caracteres não numéricos da string especificada.
    /// </summary>
    /// <param name="AValue">
    /// A string da qual deseja-se remover os caracteres não numéricos.
    /// </param>
    /// <returns>
    /// A string resultante contendo apenas os caracteres numéricos.
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
    /// Verifica se o caractere especificado é um dígito numérico.
    /// </summary>
    /// <param name="AValue">
    /// O caractere a ser verificado.
    /// </param>
    /// <returns>
    /// True se o caractere for um dígito numérico, caso contrário, False.
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
    /// Remove todos os caracteres que não são letras da string.
    /// </summary>
    /// <param name="AValue">
    /// A string da qual remover os caracteres não alfabéticos.
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
    /// Verifica se um caractere é uma letra.
    /// </summary>
    /// <param name="AValue">
    /// O caractere a ser verificado.
    /// </param>
    /// <returns>
    /// True se o caractere for uma letra, False caso contrário.
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
    /// A string na qual os caracteres especiais serão substituídos.
    /// </param>
    /// <param name="AExtras">
    /// Indica se caracteres extras também devem ser removidos (opcional).
    /// </param>
    /// <returns>
    /// A string resultante após a substituição.
    /// </returns>
    /// <remarks>
    ///   Esta função substitui caracteres especiais, como acentos e caracteres não alfanuméricos, por equivalentes normais.
    ///   Pode ser útil para normalizar strings antes de processá-las ou armazená-las em sistemas que não aceitam caracteres especiais.
    ///   O parâmetro opcional <paramref name="AExtras"/> determina se caracteres extras, como sinais de pontuação, também serão removidos.
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
    /// Lê uma tag XML específica de uma string XML.
    /// </summary>
    /// <remarks>
    /// Esta função extrai o conteúdo da tag XML especificada a partir da string XML fornecida.
    /// </remarks>
    /// <param name="AXML">
    /// A string XML da qual a tag será lida.
    /// </param>
    /// <param name="ATag">
    /// A tag XML que será lida.
    /// </param>
    /// <returns>
    /// O conteúdo da tag XML especificada.
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
    /// Lê uma tag XML específica de uma string XML.
    /// </summary>
    /// <remarks>
    /// Esta função extrai o conteúdo da tag XML especificada a partir da string XML fornecida.
    /// </remarks>
    /// <param name="AXML">
    /// A lista de strings XML da qual a tag será lida.
    /// </param>
    /// <param name="ATag">
    /// A tag XML que será lida.
    /// </param>
    /// <returns>
    /// O conteúdo da tag XML especificada.
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
    /// Remove espaços em branco de uma string.
    /// </summary>
    /// <remarks>
    /// Esta função remove todos os espaços em branco de uma string e retorna a versão sem espaços.
    /// </remarks>
    /// <param name="AValue">
    /// A string da qual os espaços em branco serão removidos.
    /// </param>
    /// <returns>
    /// A string resultante sem espaços em branco.
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
    /// Avalia uma expressão e retornar um valor com base em uma condição.
    /// </summary>
    /// <remarks>
    /// Esta função permite avaliar uma expressão e retornar um valor com base em uma condição.
    /// </remarks>
    /// <param name="T">
    /// Define o tipo que será retornado.
    /// </param>
    /// <param name="AValue">
    /// A expressão a ser verificada.
    /// </param>
    /// <param name="T1">
    /// O valor retornado se a expressão for verdadeira.
    /// </param>
    /// <param name="T2">
    /// O valor retornado se a expressão for falsa.
    /// </param>
    /// <returns>
    /// Se a expressão for verdadeira, retorna <paramref name="T1"/>, caso contrário, retorna <paramref name="T2"/>.
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
    /// Este método obtém a data e a hora no formato "yyyy-mm-dd hh:nn:ss"
    /// </summary>
    /// <param name="AValue">
    ///  Informações acerca do parâmetro de data e hora que se pretende formatar.
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
    /// Este método obtém a data no formato "yyyy-mm-dd"
    /// </summary>
    /// <param name="AValue">
    ///  Informações acerca do parâmetro de data e hora que se pretende formatar.
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
    /// Este método obtém a hora no formato "hh:nn:ss"
    /// </summary>
    /// <param name="AValue">
    ///  Informações acerca do parâmetro hora que se pretende formatar.
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
    /// Este método obtém a data e a hora no formato "yyyy-mm-dd hh:nn:ss"
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
    /// Este método obtém a hora no formato "yyyy-mm-dd"
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
    /// Este método obtém a hora no formato "hh:nn:ss"
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

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Processa mensagens de exceção para fornecer mensagens de erro significativas.
    /// </summary>
    /// <param name="AValue">
    /// A exceção que ocorreu durante o processamento.
    /// </param>
    /// <param name="AHTTPStatus">
    /// O status HTTP a ser associado à exceção.
    /// </param>
    {$ELSE}
    /// <summary>
    /// Process exception messages to provide meaningful error messages.
    /// </summary>
    /// <param name="AValue">
    /// The exception that occurred during processing.
    /// </param>
    /// <param name="AHTTPStatus">
    /// The HTTP status to be associated with the exception.
    /// </param>
    {$ENDIF}
    class procedure ProcessHorseExceptionMessage(AValue: Exception;
      AHTTPStatus: THTTPStatus); overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Processa mensagens de exceção para fornecer mensagens de erro significativas.
    /// </summary>
    /// <param name="AValue">
    /// A exceção que ocorreu durante o processamento.
    /// </param>
    /// <returns>
    /// A mensagem de erro processada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Process error messages for meaningful error messages.
    /// </summary>
    /// <param name="AValue">
    /// The exception that occurred during processing.
    /// </param>
    /// <returns>
    /// The processed error message.
    /// </returns>
    {$ENDIF}
    class function ProcessHorseExceptionMessage(
      AValue: Exception): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte a primeira letra de cada campo de uma string JSON para maiúscula.
    /// </summary>
    /// <param name="AJSONString">
    /// A string JSON a ser modificada.
    /// </param>
    /// <returns>
    /// A string JSON com a primeira letra de cada campo convertida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Capitalizes the first letter of each field in a JSON string.
    /// </summary>
    /// <param name="AJSONString">
    /// The JSON string to be modified.
    /// </param>
    /// <returns>
    /// The JSON string with the first letter of each field capitalized.
    /// </returns>
    {$ENDIF}
    class function FirstCapitalizeJsonFields(
      const AJSONString: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte a primeira letra de cada campo de uma string JSON para maiúscula.
    /// </summary>
    /// <param name="AJSON">
    /// O JSON a ser modificada.
    /// </param>
    /// <returns>
    /// A string JSON com a primeira letra de cada campo convertida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Capitalizes the first letter of each field in a JSON string.
    /// </summary>
    /// <param name="AJSON">
    /// The JSON to be modified.
    /// </param>
    /// <returns>
    /// The JSON string with the first letter of each field capitalized.
    /// </returns>
    {$ENDIF}
    class function FirstCapitalizeJsonFields(
      const AJSON: TJSONObject): TJSONObject; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte a primeira letra de cada campo de uma string JSON para maiúscula.
    /// </summary>
    /// <param name="AJSON">
    /// O JSON a ser modificada.
    /// </param>
    /// <returns>
    /// A string JSON com a primeira letra de cada campo convertida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Capitalizes the first letter of each field in a JSON string.
    /// </summary>
    /// <param name="AJSON">
    /// The JSON to be modified.
    /// </param>
    /// <returns>
    /// The JSON string with the first letter of each field capitalized.
    /// </returns>
    {$ENDIF}
    class function FirstCapitalizeJsonFields(
      const AJSON: TJSONArray): TJSONArray; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte a primeira letra de uma string para maiúscula.
    /// </summary>
    /// <param name="AValue">
    /// A string a ser modificada.
    /// </param>
    /// <returns>
    /// A string com a primeira letra convertida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Capitalizes the first letter of a string.
    /// </summary>
    /// <param name="AValue">
    /// The string to be modified.
    /// </param>
    /// <returns>
    /// The string with the first letter capitalized.
    /// </returns>
    {$ENDIF}
    class function FirstCapitalizeString(
      const AValue: string): string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o valor de um cabeçalho HTTP específico da solicitação, retornando uma string.
    /// </summary>
    /// <param name="AReq">
    /// A instância da solicitação (THorseRequest) que contém os cabeçalhos.
    /// </param>
    /// <param name="AKey">
    /// A chave do cabeçalho HTTP desejado.
    /// </param>
    /// <returns>
    /// O valor do cabeçalho HTTP como uma string.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the value of a specific HTTP header from the request, returning a string.
    /// </summary>
    /// <param name="AReq">
    /// The request instance (THorseRequest) that contains the headers.
    /// </param>
    /// <param name="AKey">
    /// The key of the desired HTTP header.
    /// </param>
    /// <returns>
    /// The value of the HTTP header as a string.
    /// </returns>
    {$ENDIF}
    class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
      AKey: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o valor de um cabeçalho HTTP específico da solicitação, retornando um Int64.
    /// </summary>
    /// <param name="AReq">
    /// A instância da solicitação (THorseRequest) que contém os cabeçalhos.
    /// </param>
    /// <param name="AKey">
    /// A chave do cabeçalho HTTP desejado.
    /// </param>
    /// <param name="ADefault">
    /// O valor padrão a ser retornado se o cabeçalho não estiver presente.
    /// </param>
    /// <returns>
    /// O valor do cabeçalho HTTP como um Int64.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the value of a specific HTTP header from the request, returning an Int64.
    /// </summary>
    /// <param name="AReq">
    /// The request instance (THorseRequest) that contains the headers.
    /// </param>
    /// <param name="AKey">
    /// The key of the desired HTTP header.
    /// </param>
    /// <param name="ADefault">
    /// The default value to be returned if the header is not present.
    /// </param>
    /// <returns>
    /// The value of the HTTP header as an Int64.
    /// </returns>
    {$ENDIF}
    class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
      AKey: string; ADefault: Int64): Int64; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o valor de um cabeçalho HTTP específico da solicitação, retornando um Boolean.
    /// </summary>
    /// <param name="AReq">
    /// A instância da solicitação (THorseRequest) que contém os cabeçalhos.
    /// </param>
    /// <param name="AKey">
    /// A chave do cabeçalho HTTP desejado.
    /// </param>
    /// <param name="ADefault">
    /// O valor padrão a ser retornado se o cabeçalho não estiver presente.
    /// </param>
    /// <returns>
    /// O valor do cabeçalho HTTP como um Boolean.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the value of a specific HTTP header from the request, returning a Boolean.
    /// </summary>
    /// <param name="AReq">
    /// The request instance (THorseRequest) that contains the headers.
    /// </param>
    /// <param name="AKey">
    /// The key of the desired HTTP header.
    /// </param>
    /// <param name="ADefault">
    /// The default value to be returned if the header is not present.
    /// </param>
    /// <returns>
    /// The value of the HTTP header as a Boolean.
    /// </returns>
    {$ENDIF}
    class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
      AKey: string; ADefault: Boolean): Boolean; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o valor de um cabeçalho HTTP específico da solicitação, retornando um Extended.
    /// </summary>
    /// <param name="AReq">
    /// A instância da solicitação (THorseRequest) que contém os cabeçalhos.
    /// </param>
    /// <param name="AKey">
    /// A chave do cabeçalho HTTP desejado.
    /// </param>
    /// <param name="ADefault">
    /// O valor padrão a ser retornado se o cabeçalho não estiver presente.
    /// </param>
    /// <returns>
    /// O valor do cabeçalho HTTP como um Extended.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the value of a specific HTTP header from the request, returning an Extended.
    /// </summary>
    /// <param name="AReq">
    /// The request instance (THorseRequest) that contains the headers.
    /// </param>
    /// <param name="AKey">
    /// The key of the desired HTTP header.
    /// </param>
    /// <param name="ADefault">
    /// The default value to be returned if the header is not present.
    /// </param>
    /// <returns>
    /// The value of the HTTP header as an Extended.
    /// </returns>
    {$ENDIF}
    class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
      AKey: string; ADefault: Extended): Extended; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se a string JSON fornecida é um objeto JSON válido.
    /// </summary>
    /// <param name="AJSONString">
    /// A string JSON a ser verificada.
    /// </param>
    /// <returns>
    /// True se a string JSON é um objeto JSON válido, False caso contrário.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Checks if the provided JSON string is a valid JSON object.
    /// </summary>
    /// <param name="AJSONString">
    /// The JSON string to be checked.
    /// </param>
    /// <returns>
    /// True if the JSON string is a valid JSON object, False otherwise.
    /// </returns>
    {$ENDIF}
    Class function IsValidJSONObject(const AJSONString: string): Boolean;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se a string JSON fornecida é um array JSON válido.
    /// </summary>
    /// <param name="AJSONString">
    /// A string JSON a ser verificada.
    /// </param>
    /// <returns>
    /// True se a string JSON é um array JSON válido e não vazio, False caso contrário.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Checks if the provided JSON string is a valid JSON array.
    /// </summary>
    /// <param name="AJSONString">
    /// The JSON string to be checked.
    /// </param>
    /// <returns>
    /// True if the JSON string is a valid and non-empty JSON array, False otherwise.
    /// </returns>
    {$ENDIF}
    Class function IsValidJSONArray(const AJSONString: string): Boolean;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se a string fornecida está vazia após a remoção de espaços.
    /// </summary>
    /// <param name="AValue">
    /// A string a ser verificada.
    /// </param>
    /// <returns>
    /// True se a string estiver vazia após a remoção de espaços, False caso contrário.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Checks if the provided string is empty after removing spaces.
    /// </summary>
    /// <param name="AValue">
    /// The string to be checked.
    /// </param>
    /// <returns>
    /// True if the string is empty after removing spaces, False otherwise.
    /// </returns>
    {$ENDIF}
    Class function IsEmpty(const AValue: string): Boolean;

  end;
implementation

uses
  Setup4D.Utility.Constantes,

  {$IF DEFINED(FPC)}
  Dom,
  XMLRead;
  {$ELSE}
  Xml.XMLDoc,
  Xml.XMLIntf;
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
        if LXMLNode.NodeName = UnicodeString(ATag) then
        begin
          Result := String(LXMLNode.TextContent);
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
   _SPECIAL_CHAR: array of String = ['á', 'à', 'ã', 'â', 'ä', 'Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è', 'ê', 'ë', 'É', 'È', 'Ê', 'Ë',
                                     'í', 'ì', 'î', 'ï', 'Í', 'Ì', 'Î', 'Ï',
                                     'ó', 'ò', 'õ', 'ô', 'ö', 'Ó', 'Ò', 'Õ', 'Ô', 'Ö',
                                     'ú', 'ù', 'û', 'ü', 'Ú', 'Ù', 'Û', 'Ü',
                                     'ç', 'Ç','ñ', 'Ñ'];

   _NORMAL_CHAR: array of string = ['a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A', 'A',
                                    'e', 'e', 'e', 'e', 'E', 'E', 'E', 'E',
                                    'i', 'i', 'i', 'i', 'I', 'I', 'I', 'I',
                                    'o', 'o', 'o', 'o', 'o', 'O', 'O', 'O', 'O', 'O',
                                    'u', 'u', 'u', 'u', 'U', 'U', 'U', 'U',
                                    'c', 'C', 'n', 'N'];

   _EXTRA_CHAR: array of string = ['<', '>', '!', '@', '#', '$', '%', '¨',
                                   '&', '*', '(', ')', '_', '+', '=', '{',
                                   '}', '[', ']', '?', ';', ':', ',', '|',
                                   '*', '"', '~', '^', '´', '`', '¨', 'æ',
                                   'Æ', 'ø', '£', 'Ø', 'ƒ', 'ª', 'º' ,'¿',
                                   '®', '½', '¼', 'ß', 'µ', 'þ', 'ý', 'Ý'];

var
  LText : string;
  I : Integer;
begin
   LText := AValue;
   for I := Low(_SPECIAL_CHAR) to High(_SPECIAL_CHAR) do
     LText := StringReplace(LText, _SPECIAL_CHAR[I], _NORMAL_CHAR[I], [rfreplaceall]);

   if (AExtras) then
   begin
     for I := Low(_EXTRA_CHAR) to High(_EXTRA_CHAR) do
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

class function TSetup4DUtility.FirstCapitalizeJsonFields(
  const AJSONString: string): string;
var
  LJSONObject, LNewJSONObject: TJSONObject;
  I: Integer;
  LKey: string;
begin

  // Original JSON:
  // {"firstname": "john", "lastname": "doe", "address": "123 main street"}
  //
  // Modified JSON:
  // { "firstname" : "John", "lastname" : "Doe", "address" : "123 Main Street" }

  LJSONObject := {$IFDEF FPC}GetJSON{$ELSE}TJSONObject.ParseJSONValue{$ENDIF}(AJSONString) as TJSONObject;
  LNewJSONObject := TJSONObject.Create;

  try
    for I := 0 to LJSONObject.Count - 1 do
    begin
      LKey := LJSONObject.{$IFDEF FPC}Names[i]{$ELSE}Pairs[I].JsonString.Value{$ENDIF};

      if LJSONObject.{$IFDEF FPC}Items[i]{$ELSE}Pairs[I].JsonValue{$ENDIF} is TJSONString then
        LNewJSONObject.{$IFDEF FPC}Add{$ELSE}AddPair{$ENDIF}(LKey, FirstCapitalizeString(LJSONObject.{$IFDEF FPC}Items[I].AsString{$ELSE}Pairs[I].JsonValue.Value{$ENDIF}))
      else
        LNewJSONObject.{$IFDEF FPC}Add{$ELSE}AddPair{$ENDIF}(LKey, LJSONObject.{$IFDEF FPC}Items[i]{$ELSE}Pairs[I].JsonValue{$ENDIF}.Clone {$IFNDEF FPC}as TJSONValue{$ENDIF});
    end;

    Result := LNewJSONObject.{$IFDEF FPC}AsJSON{$ELSE}ToJSON{$ENDIF};
  finally
    LNewJSONObject.Free;
    LJSONObject.Free;
  end;
end;

class function TSetup4DUtility.FirstCapitalizeJsonFields(
  const AJSON: TJSONObject): TJSONObject;
var
  I: Integer;
  {$IFNDEF FPC}
  LPair: TJSONPair;
  {$ENDIF}
  LKey: string;
  LValue: {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};
  LNewJSONObject: TJSONObject;
begin
  // Original JSON:
  // {"firstname": "john", "lastname": "doe", "address": "123 main street"}
  //
  // Modified JSON:
  // { "firstname" : "John", "lastname" : "Doe", "address" : "123 Main Street" }


  LNewJSONObject := TJSONObject.Create;

  for I := 0 to AJSON.Count - 1 do
  begin
    {$IFNDEF FPC}
    LPair := AJSON.Pairs[I];
    {$ENDIF}
    LKey := {$IFDEF FPC}AJSON.Names[I]{$ELSE}LPair.JsonString.Value{$ENDIF};
    LValue := {$IFDEF FPC}AJSON.Items[I]{$ELSE}LPair.JsonValue{$ENDIF};

    if LValue is TJSONString then
      LNewJSONObject.{$IFDEF FPC}Add{$ELSE}AddPair{$ENDIF}(LKey, FirstCapitalizeString({$IFDEF FPC}TJSONString({$ENDIF}LValue{$IFDEF FPC}){$ENDIF}.{$IFDEF FPC}AsString{$ELSE}Value{$ENDIF}))
    else if LValue is TJSONObject then
      LNewJSONObject.{$IFDEF FPC}Add{$ELSE}AddPair{$ENDIF}(LKey, FirstCapitalizeJsonFields(TJSONObject(LValue.Clone)))
    else
      LNewJSONObject.{$IFDEF FPC}Add{$ELSE}AddPair{$ENDIF}(LKey, {$IFNDEF FPC}TJSONValue({$ENDIF}LValue.Clone{$IFNDEF FPC}){$ENDIF});
  end;

  Result := LNewJSONObject;

end;

class function TSetup4DUtility.FirstCapitalizeJsonFields(
  const AJSON: TJSONArray): TJSONArray;
var
  LJSONArray, LNewJSONArray: TJSONArray;
  I: Integer;
begin
  LJSONArray := AJSON;
  LNewJSONArray := TJSONArray.Create;

  try
    for I := 0 to LJSONArray.Count - 1 do
    begin
      if LJSONArray[I] is TJSONObject then
      begin
        {$IFDEF FPC}LNewJSONArray[I] := {$ELSE}LNewJSONArray.AddElement({$ENDIF}FirstCapitalizeJsonFields(LJSONArray[I] as TJSONObject){$IFNDEF FPC}){$ENDIF};
      end
      else
      begin
        {$IFDEF FPC}LNewJSONArray[I] := {$ELSE}LNewJSONArray.AddElement({$ENDIF}LJSONArray[I]{$IFNDEF FPC}){$ENDIF};
      end;
    end;

    Result := LNewJSONArray;
  finally
    LJSONArray.Free;
  end;
end;

class function TSetup4DUtility.FirstCapitalizeString(
  const AValue: string): string;
var
  LString: TStringList;
  LSubString : String;
  I: Integer;
  J: Integer;
begin
  {
    Original: 123 main street

    Modified: 123 Main Street
  }

  LString := TStringList.Create;
  try
    LString.Delimiter := ' ';
    LString.DelimitedText := AValue;
    for I := 0 to LString.Count - 1 do
    begin
      if Length(LString[I]) > 2 then
      begin
        LString[I] := UpperCase(LString[I][1]) + LowerCase(Copy(LString[I], 2, MaxInt));
        LSubString := LString[I];
        for J := 1 to Length(LSubString) - 1 do
        begin
          if (LSubString[J] = '-') or (LSubString[J] = '/') then
            LSubString[J + 1] := UpCase(LSubString[J + 1]);
        end;
        LString[I] := LSubString;
      end
      else
      begin
        if LString[I].Length = 1 then
          LString[I] := UpperCase(LString[I][1])
        else if AValue.Length > 2 then
          LString[I] := LowerCase(LString[I][1]) + LowerCase(Copy(LString[I], 2, MaxInt));
      end;
    end;
    Result := LString.DelimitedText;
  finally
    LString.Free;
  end;
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

class function TSetup4DUtility.GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
  AKey: string): string;
{$IFDEF HORSE_CGI}
var
   LKey : String;
{$ENDIF}
begin
  {$IFDEF HORSE_CGI}
  LKey := StringReplace(AKey, '-', '_', [rfreplaceall]);
  LKey := StringReplace(LKey, ' ', '_', [rfreplaceall]);
  LKey := LKey.ToUpper;
;
  Result := GetEnvironmentVariable(Format('HTTP_%s', [LKey]));
  {$ELSE}
  if AReq.Headers.ContainsKey(AKey) then
    Result := AReq.Headers.Field(AKey).AsString;
  {$ENDIF}
end;

class function TSetup4DUtility.GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
  AKey: string; ADefault: Int64): Int64;
{$IFDEF HORSE_CGI}
var
  LValue : Int64;
  LHeader : String;
  LKey : String;
{$ENDIF}
begin

  {$IFDEF HORSE_CGI}
  try
    LKey := StringReplace(AKey, '-', '_', [rfreplaceall]);
    LKey := StringReplace(LKey, ' ', '_', [rfreplaceall]);
    LKey := LKey.ToUpper;

    LHeader := GetEnvironmentVariable(Format('HTTP_%s', [LKey]));

    if LHeader.IsEmpty then
      Result := ADefault;


    if Result = ADefault then
      Exit;

    LValue := StrToInt64(LHeader);
    Result := LValue;
  except
    raise Exception.Create(TSetup4DUtilityConstantes.INVALID_NUMEBER);
  end;
  {$ELSE}
  if AReq.Headers.ContainsKey(AKey) then
    Result := AReq.Headers.Field(AKey).AsInt64
  else
    Result := ADefault;
  {$ENDIF}
end;

class function TSetup4DUtility.GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
  AKey: string; ADefault: Boolean): Boolean;
{$IFDEF HORSE_CGI}
var
  LHeader : String;
  LKey : String;
{$ENDIF}
begin
  {$IFDEF HORSE_CGI}
  try
    LKey := StringReplace(AKey, '-', '_', [rfreplaceall]);
    LKey := StringReplace(LKey, ' ', '_', [rfreplaceall]);
    LKey := LKey.ToUpper;

    LHeader := GetEnvironmentVariable(Format('HTTP_%s', [LKey]));

    if LHeader.IsEmpty then
      Result := ADefault;

    if Result = ADefault then
      Exit;

    if LHeader.ToUpper[1] in ['T', 'S'] then
      Result := True;

    if LHeader.ToUpper[1] in ['F', 'N'] then
      Result := False;

  except
    raise Exception.Create(TSetup4DUtilityConstantes.INVALID_BOOLEAN);
  end;
  {$ELSE}
  if AReq.Headers.ContainsKey(AKey) then
    Result := AReq.Headers.Field(AKey).AsBoolean
  else
    Result := ADefault;
  {$ENDIF}


end;

class function TSetup4DUtility.GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF}
  AKey: string; ADefault: Extended): Extended;
{$IFDEF HORSE_CGI}
var
  LValue : Extended;
  LHeader : String;
  LKey : String;
{$ENDIF}
begin
  {$IFDEF HORSE_CGI}
  try
    LKey := StringReplace(AKey, '-', '_', [rfreplaceall]);
    LKey := StringReplace(LKey, ' ', '_', [rfreplaceall]);
    LKey := LKey.ToUpper;

    LHeader := GetEnvironmentVariable(Format('HTTP_%s', [LKey]));

    if LHeader.IsEmpty then
      Result := ADefault;


    if Result = ADefault then
      Exit;

    LValue := StrToFloat(LHeader);
    Result := LValue;
  except
    raise Exception.Create(TSetup4DUtilityConstantes.INVALID_NUMEBER);
  end;
  {$ELSE}
  if AReq.Headers.ContainsKey(AKey) then
    Result := AReq.Headers.Field(AKey).AsExtended
  else
    Result := ADefault;
  {$ENDIF}
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

class function TSetup4DUtility.IsEmpty(const AValue: string): Boolean;
begin
  Result := RemoveSpaces(AValue).IsEmpty;
end;

class function TSetup4DUtility.IsValidJSONArray(
  const AJSONString: string): Boolean;
var
  LJSON: TJSONArray;
begin
  try
    LJSON := {$IFDEF FPC}TJSONArray(GetJSON{$Else}TJSONObject.ParseJSONValue{$ENDIF}(AJSONString){$IFDEF FPC}){$Else} as TJSONArray{$ENDIF};
    try
      Result := Assigned(LJSON) and (LJSON.Count > 0);

      if Result then
        Result := not (LJSON.{$IFDEF FPC}AsJSON = {$Else}ToJSON.Equals({$ENDIF}'[]'){$IFNDEF FPC}){$ENDIF};
    finally
      LJSON.Free;
    end;
  except
    Result := False;
  end;
end;

class function TSetup4DUtility.IsValidJSONObject(
  const AJSONString: string): Boolean;
var
  LJSON: {$IFDEF FPC}TJSONData{$ELSE}TJSONObject{$ENDIF};
begin
  try
    if AJSONString.Trim.IsEmpty then
      raise Exception.Create(TSetup4DUtilityConstantes.REQUIRED_INFORMATION('AJSONString'));

    LJSON := {$IFDEF FPC}GetJSON{$ELSE}TJSONObject.ParseJSONValue{$ENDIF}(AJSONString){$IFNDEF FPC} as TJSONObject{$ENDIF};
    try
      Result := Assigned(LJSON){$IFDEF FPC} AND (LJSON.JSONType = jtObject){$ENDIF};

      if Result then
        Result := NOT {$IFDEF FPC}(LJSON.AsJSON = '{}'){$ELSE}LJSON.ToJSON.Equals('{}'){$ENDIF};
    finally
      {$IFDEF FPC}FreeAndNil({$ENDIF}LJSON{$IFDEF FPC}){$ELSE}.Free{$ENDIF};
    end;
  except
    Result := False;
  end;
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

class function TSetup4DUtility.ProcessHorseExceptionMessage(
  AValue: Exception): string;
begin
  Result := AValue.Message;
  if AValue.Message.Contains('max_user_connections') then
  begin
    Result := TSetup4DUtilityConstantes.MAX_USER_CONNECTIONS;
    Exit;
  end;
  if AValue.Message.Contains('a foreign key constraint fails') then
  begin
    Result := TSetup4DUtilityConstantes.FOREGIN_KEY_FAILS;
    Exit;
  end;

  if AValue.Message.ToLower.Contains('unexpected response status code: 404') then
  begin
    Result := TSetup4DUtilityConstantes.NO_RESOURCE_FOUND;
    Exit;
  end;

  if AValue.Message.Equals(TSetup4DUtilityConstantes.MAX_USER_CONNECTIONS) or
     AValue.Message.Equals(TSetup4DUtilityConstantes.FOREGIN_KEY_FAILS) or
     AValue.Message.Equals(TSetup4DUtilityConstantes.NO_RECORDS_FOUND) or
     AValue.Message.Equals(TSetup4DUtilityConstantes.NO_RESOURCE_FOUND) then
    Exit;

  Result := TSetup4DUtilityConstantes.MESSAGE_GENERIC(AValue.Message);

end;

class procedure TSetup4DUtility.ProcessHorseExceptionMessage(AValue: Exception;
  AHTTPStatus: THTTPStatus);

begin

  if AValue.Message.Contains('max_user_connections') then
    raise EHorseException.New
            .Error(ProcessHorseExceptionMessage(AValue))
            .Status(THTTPStatus.InternalServerError);

  if AValue.Message.Contains('a foreign key constraint fails') then
    raise EHorseException.New
            .Error(ProcessHorseExceptionMessage(AValue))
            .Status(THTTPStatus.BadRequest);

   if AValue.Message.ToLower.Contains('unexpected response status code: 404') then
    raise EHorseException.New
            .Error(ProcessHorseExceptionMessage(AValue))
            .Status(THTTPStatus.NotFound);

  raise EHorseException.New
      .Error(ProcessHorseExceptionMessage(AValue))
      .Status(AHTTPStatus);
end;

initialization
 {$IFDEF FPC}
  // Define o CodePage para UTF-8
  if not (DefaultSystemCodePage = CP_UTF8) then
    DefaultSystemCodePage := CP_UTF8;
  {$ENDIF}

end.
