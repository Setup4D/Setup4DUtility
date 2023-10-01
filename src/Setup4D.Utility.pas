unit Setup4D.Utility;

interface
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

  end;
implementation

uses
  System.SysUtils;

{ TSetup4DUtility }

class function TSetup4DUtility.CharIsNum(const AValue: Char): Boolean;
begin
  Result := CharInSet(AValue, ['0'..'9']) ;
end;

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
