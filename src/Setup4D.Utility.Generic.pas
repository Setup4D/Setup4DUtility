unit Setup4D.Utility.Generic;
interface
uses
  System.Classes;
type
  {$IFDEF HAS_PORTUGUES}
  /// <summary>
  /// Definir uma faixa numerica de trabalho.
  /// </summary>
  {$ELSE}
  /// <summary>
  /// Define a numeric working range.
  /// </summary>
  {$ENDIF}
  TSetup4DNumberSequence = 0 .. 255;
  {$IFDEF HAS_PORTUGUES}
  /// <summary>
  /// Classe generica de suporte no desenvolvimento de aplicativos.
  /// Várias funções e procedimento que simplifica o uso de outros classes.
  /// </summary>
  {$ELSE}
  /// <summary>
  /// Support generic class for application development.
  /// Contains various functions and procedures that simplify the use of other classes.
  /// </summary>
  {$ENDIF}
  TSetup4DUtilityGeneric<T> = class
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Preenche uma lista de strings com os nomes dos valores do tipo enumerado.
    /// </summary>
    /// <param name="AValue">
    /// A lista de strings a ser preenchida.
    /// </param>
    {$ELSE}
    /// <summary>
    /// Populates a string list with the names of the enumerated type values.
    /// </summary>
    /// <param name="AValue">
    /// The string list to be populated.
    /// </param>
    {$ENDIF}
    class procedure EnumToList(AValue: TStrings); overload;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Preenche uma lista de strings com os nomes dos valores do tipo enumerado.
    /// </summary>
    /// <param name="AValue">
    /// A lista de strings a ser preenchida.
    /// </param>
    /// <param name="AOldValue">
    /// Caracter a ser substituido no enumerado.
    /// </param>
    /// <param name="ANewValue">
    /// Novo caractacter colocar no enumerado.
    /// </param>
    {$ELSE}
    /// <summary>
    /// Populates a string list with the names of the enumerated type values.
    /// </summary>
    /// <param name="AValue">
    /// The string list to be populated.
    /// </param>
    /// <param name="AOldValue">
    /// Character to be replaced in the enumerated value.
    /// </param>
    /// <param name="ANewValue">
    /// New character to place in the enumerated value.
    /// </param>
    {$ENDIF}
    class procedure EnumToList(AValue: TStrings; Const AOldValue: string;
      Const ANewValue: string); overload;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte um valor enumerado para uma representação de string.
    /// </summary>
    /// <param name="AEnum">
    // O valor enumerado a ser convertido.
    // </param>
    /// <returns>
    /// A representação de string do valor enumerado.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Converts an enumerated value to a string representation.
    /// </summary>
    /// <param name="AEnum">
    /// The enumerated value to be converted.
    /// </param>
    /// <returns>
    /// The string representation of the enumerated value.
    /// </returns>
    {$ENDIF}
    class function EnumToString(const AEnum: T): string; overload;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte um valor enumerado para uma representação de string.
    /// </summary>
    /// <param name="AEnum">
    // O valor enumerado a ser convertido.
    // </param>
    /// <param name="AOldValue">
    /// Caracter a ser substituido no enumerado.
    /// </param>
    /// <param name="ANewValue">
    /// Novo caractacter colocar no enumerado.
    /// </param>
    /// <returns>
    /// A representação de string do valor enumerado.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Converts an enumerated value to a string representation.
    /// </summary>
    /// <param name="AEnum">
    /// The enumerated value to be converted.
    /// </param>
    /// <param name="AOldValue">
    /// Character to be replaced in the enumerated value.
    /// </param>
    /// <param name="ANewValue">
    /// New character to place in the enumerated value.
    /// </param>
    /// <returns>
    /// The string representation of the enumerated value.
    /// </returns>
    {$ENDIF}
    class function EnumToString(const AEnum: T; Const AOldValue: string;
      Const ANewValue: string): string; overload;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte um valor enumerado para um número inteiro.
    /// </summary>
    /// <param name="AEnum">
    /// O valor enumerado a ser convertido.
    /// </param>
    /// <returns>
    /// O número inteiro correspondente ao valor enumerado.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Converts an enumerated value to an integer number.
    /// </summary>
    /// <param name="AEnum">
    /// The enumerated value to be converted.
    /// </param>
    /// <returns>
    /// The integer number corresponding to the enumerated value.
    /// </returns>
    {$ENDIF}
    class function EnumToInterger(const AEnum: T): integer;
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte uma representação de string para um valor enumerado.
    /// </summary>
    /// <param name="AValue">
    /// A representação de string a ser convertida.
    /// </param>
    /// <returns>
    /// O valor enumerado correspondente à representação de string.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Converts a string representation to an enumerated value.
    /// </summary>
    /// <param name="AValue">
    /// The string representation to be converted.
    /// </param>
    /// <returns>
    /// The enumerated value corresponding to the string representation.
    /// </returns>
    {$ENDIF}
    class function StringToEnum(const AValue: string): T;
  end;
implementation
uses
  System.TypInfo,
  System.SysUtils;
{ TSetup4DUtilityGeneric<T> }
class procedure TSetup4DUtilityGeneric<T>.EnumToList(AValue: TStrings;
  const AOldValue, ANewValue: string);
var
  LAuxiliar: String;
  LIndice: integer;
  LPosicao: integer;
begin
  AValue.Clear;
  LIndice := 0;
  repeat
    LAuxiliar := GetEnumName(TypeInfo(T), LIndice);
    LPosicao := GetEnumValue(TypeInfo(T), LAuxiliar);
    LAuxiliar := StringReplace(LAuxiliar, AOldValue, ANewValue, [rfReplaceAll, rfIgnoreCase]);
    if LPosicao <> -1 then
      AValue.Add(LAuxiliar);
    inc(LIndice);
  until LPosicao < 0;
end;

class function TSetup4DUtilityGeneric<T>.EnumToString(const AEnum: T;
  const AOldValue, ANewValue: string): string;
var
  LEnum: PInteger;
  LIndice: integer;
begin
  try
    LEnum := @AEnum;
    LIndice := integer(TSetup4DNumberSequence((LEnum^)));
    Result := GetEnumName(TypeInfo(T), LIndice);
    Result := StringReplace(Result, AOldValue, ANewValue, [rfReplaceAll, rfIgnoreCase]);
  except
    {$IFDEF HAS_PORTUGUES}
    raise EConvertError.Create('O Parâmetro passado não corresponde a ' +
      sLineBreak + 'um inteiro Ou a um Tipo Enumerado');
    {$ELSE}
    raise EConvertError.Create('The parameter passed does not correspond to' +
      sLineBreak + 'an integer or an Enum Type.');
    {$ENDIF}
  end;
end;

class function TSetup4DUtilityGeneric<T>.EnumToString(const AEnum: T): string;
var
  LEnum: PInteger;
  LIndice: integer;
begin
  try
    LEnum := @AEnum;
    LIndice := integer(TSetup4DNumberSequence((LEnum^)));
    Result := GetEnumName(TypeInfo(T), LIndice);
  except
    {$IFDEF HAS_PORTUGUES}
    raise EConvertError.Create('O Parâmetro passado não corresponde a ' +
      sLineBreak + 'um inteiro Ou a um Tipo Enumerado');
    {$ELSE}
    raise EConvertError.Create('The parameter passed does not correspond to' +
      sLineBreak + 'an integer or an Enum Type.');
    {$ENDIF}
  end;
end;
class function TSetup4DUtilityGeneric<T>.EnumToInterger(const AEnum: T): integer;
var
  LEnum: PInteger;
begin
  try
    LEnum := @AEnum;
    Result := integer(TSetup4DNumberSequence((LEnum^)));
  except
    {$IFDEF HAS_PORTUGUES}
    raise EConvertError.Create('O Parâmetro passado não corresponde a ' +
      sLineBreak + 'um Tipo Enumerado');
    {$ELSE}
    raise EConvertError.Create('The parameter passed does not correspond to' +
      sLineBreak + 'an Enum Type.');
    {$ENDIF}
  end;
end;
class procedure TSetup4DUtilityGeneric<T>.EnumToList(AValue: TStrings);
var
  LAuxiliar: String;
  LIndice: integer;
  LPosicao: integer;
begin
  AValue.Clear;
  LIndice := 0;
  repeat
    LAuxiliar := GetEnumName(TypeInfo(T), LIndice);
    LPosicao := GetEnumValue(TypeInfo(T), LAuxiliar);
    if LPosicao <> -1 then
      AValue.Add(LAuxiliar);
    inc(LIndice);
  until LPosicao < 0;
end;
class function TSetup4DUtilityGeneric<T>.StringToEnum(const AValue: string): T;
var
  LEnum: ^T;
  LIndice: integer;
begin
  try
    LIndice := GetEnumValue(TypeInfo(T), AValue);
    if LIndice = -1 then
      abort;
    LEnum := @LIndice;
    Result := LEnum^;
  except
    {$IFDEF HAS_PORTUGUES}
    raise EConvertError.Create('O Parâmetro "' + AValue + '" passado não ' +
      sLineBreak + ' corresponde a um Tipo Enumerado');
    {$ELSE}
    raise EConvertError.Create('The parameter "' + AValue + '" passed does not' +
      sLineBreak + 'correspond to an Enum Type.');
    {$ENDIF}
  end;
end;
end.
