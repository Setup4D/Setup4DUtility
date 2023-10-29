[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br) 

<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>
<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

# Setup4DUtility 

[![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)](https://github.com/Setup4D/Setup4DUtility)
[![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)](https://github.com/Setup4D/Setup4DUtility) 

Welcome to the Setup4DUtility project repository! This application was developed to simplify the use of other components in your Delphi projects. It provides a range of convenient features to optimize your application development. With Setup4DUtility, you can interact with other procedures and functions in your Delphi applications quickly, easily, and reliably.

## 📐 How to Use

### ⚙️ Installation

#### ⚡️ Automatic (via boss)

* `[Optional]` To make installation easier, we recommend using [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi). Simply run the following command in a terminal (Windows PowerShell, for example):

```shell
boss install github.com/Setup4D/Setup4DUtility
```

#### ⚡️ Manual (Delphi)

* If you choose to install manually, add the following folder to your project by going to *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*:

```shell
../Setup4DUtility/src
```

## 📐 How to Use

### ⚙️ Language for Messages

* The system supports two languages, with English being the default language. However, it is possible to use the application in Brazilian Portuguese. To do this, follow these steps:

```shell
Access Project > Options > Delphi Compiler > Conditionals Defines
```

* Add the *HAS_PORTUGUES* directive, which is necessary to enable Brazilian Portuguese as the language.

## 📐 TSetup4DUtility Function

The `TSetup4DUtility` class is a support class for application development, containing various functions and procedures that simplify the use of other classes.

### ⚙️ Methods

#### ⚡️ `class function OnlyNumber(const AValue: String): String;`

This method removes all non-numeric characters from the specified string and returns the resulting string containing only numeric characters.

- **Parameters:**
  - `AValue`: The string from which you want to remove non-numeric characters.
- **Return:**
  - The resulting string containing only numeric characters.

#### ⚡️ `class function CharIsNum(const AValue: Char): Boolean;`

This method checks if the specified character is a numeric digit.

- **Parameters:**
  - `AValue`: The character to be checked.
- **Return:**
  - True if the character is a numeric digit; otherwise, False.

#### ⚡️ `class function OnlyAlpha(const AValue: String): String;`

This method removes all non-alphabetic characters from the specified string and returns the resulting string containing only letters.

- **Parameters:**
  - `AValue`: The string from which you want to remove non-alphabetic characters.
- **Return:**
  - The resulting string containing only letters.

This method is useful for cleaning a string and keeping only alphabetic characters.

#### ⚡️ `class function CharIsAlpha(const AValue: Char): Boolean;`

This method checks if the specified character is a letter.

- **Parameters:**
  - `AValue`: The character to be checked.
- **Return:**
  - True if the character is a letter; otherwise, False.

This method is useful for verifying whether a character is an alphabet letter.

#### ⚡️ `class function ReplaceSpecialChars(AValue: string; AExtras: Boolean = False): string;`

This method replaces special characters in a string with their normal equivalents.

- **Parameters:**
  - `AValue`: The text in which special characters will be replaced.
  - `AExtras`: Indicates whether extra characters should also be removed (optional).
- **Return:**
  - A new text that does not contain special characters and, if selected, does not contain extra characters like @, #, $, and others.

#### ⚡️ `class function ReadXMLTag(const AXML: string; const ATag: string): string; Overload;`

This function reads a specific tag from an XML formatted as a string.

- **Parameters:**
  - `AXML`: The XML in string format to be processed.
  - `ATag`: The XML tag you want to read.
- **Return:**
  - The content of the specified XML tag.

#### ⚡️ `class function ReadXMLTag(const AXML: TStringList; const ATag: string): string; Overload;`

This function reads a specific tag from an XML formatted as a TStringList.

- **Parameters:**
  - `AXML`: The XML in TStringList format to be processed.
  - `ATag`: The XML tag you want to read.
- **Return:**
  - The content of the specified XML tag.

#### ⚡️ `class function RemoveSpaces(const AValue: string): string;`

This function is designed to remove all whitespace from a string.

- **Parameters:**
  - `AValue`: The string from which whitespace will be removed.
- **Return:**
  - The string without whitespace.

#### ⚡️ `class function IIF<T>(AValue: Boolean; T1, T2: T): T;`

This function is designed to evaluate an expression and return a specific value based on the provided condition.

- **Parameters:**
  - `<T>`: Defines the type that will be returned.
  - `AValue`: The expression to be checked.
  - `T1`: The value to be returned if the expression is true.
  - `T2`: The value to be returned if the expression is false.
- **Return:**
   - If the expression is true, returns T1; otherwise, returns T2.

### 🌱 Usage Example

Here is an example of how to use the `TSetup4DUtility` class:

```delphi
var
  LValue: string;
  LResultString: string;
  LChar: Char;
  LValid: Boolean;
  LStringList: TStringList;
begin
  // Remove all non-numeric characters from the string
  LValue := 'A123B456C789';
  // The value of LResultString will be '123456789'
  LResultString := TSetup4DUtility.OnlyNumber(LValue);
  // The value of LResultString will be 'AC'
  LResultString := TSetup4DUtility.OnlyAlpha(LValue);

  // Check if a character is a numeric digit
  LChar := '5';
  // The value of LValid will be True
  LValid := TSetup4DUtility.CharIsNum(LChar);
  LChar := 'A';
  // The value of LValid will be True
  LValid := TSetup4DUtility.CharIsAlpha(LChar);

  // Remove all special characters
  LValue := '#Caçada';
  // The value of LResultString will be '#Cacada'
  LResultString := TSetup4DUtility.ReplaceSpecialChars(LValue);
  // The value of LResultString will be 'Cacada'
  LResultString := TSetup4DUtility.ReplaceSpecialChars(LValue, True);

  // Read XML tags
  LValue := '<?xml version="1.0"> ' +
            '<filmes> ' +
            '    <filme id="1"> ' +
            '        <titulo>O XML veste prada</titulo> ' +
            '        <resumo>O filme mostra a elegância da XML na representação de dados estruturados e semi estruturados.</resumo> ' +
            '        <genero>Aventura</genero> ' +
            '        <genero>Documentário</genero> ' +
            '        <elenco> ' +
            '            <ator>Mark UPlanguage</ator> ' +
            '            <ator>Mary well-Formed</ator> ' +
            '            <ator>Sedna D. Atabase</ator> ' +
            '        </elenco> ' +
            '    </filme> ' +
            '</filmes> ';

  LStringList := TStringList.Create;
  LStringList.Add(LValue);

  // The value of LResultString will be 'O XML veste prada'
  LResultString := TSetup4DUtility.ReadXMLTag(LValue, 'titulo');
  // The value of LResultString will be 'O filme mostra a elegância da XML na representação de dados estruturados e semi estruturados.'
  LResultString := TSetup4DUtility.ReadXMLTag(LStringList, 'resumo');

  // Remove all whitespace
  LValue := 'O rato roeu a roupa';
  // The value of LResultString will be 'Oratoroeuaroupa'
  LResultString := TSetup4DUtility.RemoveSpaces(LValue);

  // Verifies if one is greater than zero
  LValid := 1 > 0;
  // The value of LResultString will be 'YES'
  LResultString := TSetup4DUtility.IIF<string>(LValid, 'YES', 'NO');
  // Verifies if one is less than zero
  LValid := 1 < 0;
  // The value of LResultString will be 'NO'
  LResultString := TSetup4DUtility.IIF<string>(LValid, 'YES', 'NO');

end;
```

## 📐 TSetup4DUtilityGeneric<T> Function

The `TSetup4DUtilityGeneric<T>` class is a generic support class for application development, containing various functions and procedures that simplify the use of other enumerated types.

### ⚙️ Related Types and Enums

- **TSetup4DNumberSequence**: An enumerated type that represents a numeric range from 0 to 255.

### ⚙️ Methods

#### `class procedure EnumToList(AValue: TStrings); overload;`

This method populates a string list with the names of the enumerated type values.

- **Parameters:**
  - `AValue`: The string list to be filled with the names of the enumerated type values.

#### ⚡️ `class procedure EnumToList(AValue: TStrings; const AOldValue: string; const ANewValue: string); overload;`

This method populates a string list with the names of the enumerated type values, replacing a specific value with a new one.

- **Parameters:**
  - `AValue`: The string list to be populated.
  - `AOldValue`: The enumerated type value to be replaced in the list.
  - `ANewValue`: The new value to replace the old enumerated type value.

This method allows you to populate a string list with the names of the enumerated type values and optionally replace a specific value in the list with a new one. This can be useful for customizing the list of enumerated type value names as needed.

#### ⚡️ `class function EnumToString(const AEnum: T): string; overload;`

This method converts an enumerated value into a string representation.

- **Parameters:**
  - `AEnum`: The enumerated value to be converted.
- **Return:**
  - The string representation of the enumerated value.

#### ⚡️ `class function EnumToString(const AEnum: T; const AOldValue: string; const ANewValue: string): string; overload;`

This method converts an enumerated value into a string representation, optionally replacing a specific character with a new character in the string representation.

- **Parameters:**
  - `AEnum`: The enumerated value to be converted.
  - `AOldValue`: The character to be replaced in the string representation.
  - `ANewValue`: The new character to be placed in the string representation.
- **Return:**
  - The string representation of the enumerated value, with the specified substitutions applied if provided.

This method is useful for converting an enumerated value into a string representation and, optionally, customizing this representation by replacing specific characters.

#### ⚡️ `class function EnumToInterger(const AEnum: T): integer;`

This method converts an enumerated value into an integer.

- **Parameters:**
  - `AEnum`: The enumerated value to be converted.
- **Return:**
  - The integer corresponding to the enumerated value.

#### ⚡️ `class function StringToEnum(const AValue: string): T;`

This method converts a string representation into an enumerated value.

- **Parameters:**
  - `AValue`: The string representation to be converted.
- **Return:**
  - The enumerated value corresponding to the string representation.

### 🌱 Usage Example

Here is an example of how to use the `TSetup4DUtilityGeneric<T>` class:

```delphi
Type
  TDias = (SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO);
```

```delphi
var
  LStringList: TStringList;
  LEnumValue: TDias;
  LStringValue: string;
  LIntValue: integer;
begin
  // Populate a string list with the names of the enumerated type values
  LStringList := TStringList.Create;
  try
    // The `LStringList` now contains the names of the enumerated type values
    TSetup4DUtilityGeneric<TDias>.EnumToList(LStringList);

    // The `LStringList` now contains the names of the enumerated type values
    TSetup4DUtilityGeneric<TDias>.EnumToList(LStringList, 'E', '3'); 

    // Convert an enumerated value into a string representation
    LEnumValue := TDias.QUINTA;
    LStringValue := TSetup4DUtilityGeneric<TDias>.EnumToString(LEnumValue);
    LStringValue := TSetup4DUtilityGeneric<TDias>.EnumToString(LEnumValue, 'I', '1');

    // Convert an enumerated value into an integer
    LIntValue := TSetup4DUtilityGeneric<TDias>.EnumToInterger(LEnumValue);

    // Convert a string representation into an enumerated value
    LStringValue := 'SEGUNDA';
    LEnumValue := TSetup4DUtilityGeneric<TDias>.StringToEnum(LStringValue);
  finally
    LStringList.Free;
  end;
end;
```
