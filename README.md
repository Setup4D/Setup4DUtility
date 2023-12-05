[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br) 

<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>
<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

# Setup4DUtility 

[![Lazarus Supported Versions](https://img.shields.io/badge/Lazarus%20Supported%20Versions-2.2.6-blue.svg)](https://github.com/Setup4D/Setup4DUtility)
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

### ⚙️ Dependencies

* This project depends on [**Horse**](https://github.com/hashload/horse) and [**Horse Exception**](https://github.com/hashload/handle-exception), playing a crucial role in its operational functionalities. When using [**Boss**](https://github.com/HashLoad/boss) as the framework installer, the installation of **Horse** and **Horse Exception** occurs automatically. However, if you choose to manually install, follow the steps provided on the framework's [**Horse**](https://github.com/hashload/horse) and [**Horse Exception**](https://github.com/hashload/handle-exception) pages.
  
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
 
#### ⚡️ `class function GetDateTime(AValue: TDateTime): string; overload;`

This method retrieves the date and time in the "yyyy-mm-dd hh:nn:ss" format, representing the year (yyyy), month (mm), day (dd), hour (hh), minutes (nn), and seconds (ss). This format is commonly used to represent dates and times in a machine-readable format and can be useful in various contexts, such as storing date and time records in databases.

**Parameters:**
   - `AValue`: Specify the date and time to be formatted.
**Return:**
   - Returns the formatted date and time.

#### ⚡️ `class function GetDate(AValue: TDateTime): string; overload;`

This method retrieves the date in the "yyyy-mm-dd" format, representing the year (yyyy), month (mm), and day (dd). This format is commonly used to represent dates in a machine-readable format and can be useful in various contexts, such as storing date records in databases.

**Parameters:**
   - `AValue`: Specify the date and time to be formatted.
**Return:**
   - Returns the formatted date.

#### ⚡️ `class function GetTime(AValue: TDateTime): string; overload;`

This method retrieves the time in the "hh:nn:ss" format, representing the hour (hh), minutes (nn), and seconds (ss). This format is commonly used to represent times in a machine-readable format and can be useful in various contexts, such as storing time records in databases.

**Parameters:**
   - `AValue`: Specify the time to be formatted.
**Return:**
   - Returns the formatted time.

#### ⚡️ `class function GetDateTime: string; overload;`

This method retrieves the current date and time in the "yyyy-mm-dd hh:nn:ss" format, representing the year (yyyy), month (mm), day (dd), hour (hh), minutes (nn), and seconds (ss). This format is commonly used to represent dates and times in a machine-readable format and can be useful in various contexts, such as storing date and time records in databases.

**Return:**
   - Returns the formatted date and time.

#### ⚡️ `class function GetDate: string; overload;`

This method retrieves the current date in the "yyyy-mm-dd" format, representing the year (yyyy), month (mm), and day (dd). This format is commonly used to represent dates in a machine-readable format and can be useful in various contexts, such as storing date records in databases.

**Return:**
   - Returns the formatted date.

#### ⚡️ `class function GetTime: string; overload;`

This method retrieves the current time in the "hh:nn:ss" format, representing the hour (hh), minutes (nn), and seconds (ss). This format is commonly used to represent times in a machine-readable format and can be useful in various contexts, such as storing time records in databases.

**Return:**
   - Returns the formatted time.

#### ⚡️ `class function ProcessHorseExceptionMessage(AValue: Exception): string; overload;`

This function takes an exception and returns a friendly message corresponding to that exception. It handles specific exceptions like "max_user_connections" and "a foreign key constraint fails," providing customized friendly messages for these exceptions.

**Parameters:**
- `AValue`: The exception to be processed.

**Return:**
- `Result`: The friendly message corresponding to the exception.

#### ⚡️ `class procedure ProcessHorseExceptionMessage(AValue: Exception; AHTTPStatus: THTTPStatus); overload;`

This overload of the `ProcessHorseExceptionMessage` function takes an exception and an HTTP status. It raises an `EHorseException` with the friendly message corresponding to the exception and the appropriate HTTP status.

**Parameters:**
- `AValue`: The exception to be processed.
- `AHTTPStatus`: The HTTP status to be assigned to the thrown exception.
#### `class function FirstCapitalizeJsonFields(const AJSONString: string): string;`

This function takes a JSON string and returns a new JSON string with fields converted to the format where the first letter of each word is capitalized.

- **Parameters:**
  - `AJSONString`: The original JSON string.

- **Result:**
  - A new JSON string with capitalized fields.

#### `class function FirstCapitalizeJsonFields(const AJSON: TJSONObject): TJSONObject;`

This function takes a JSON object and returns a new JSON object with fields converted to the format where the first letter of each word is capitalized.

- **Parameters:**
  - `AJSON`: The original JSON object.

- **Result:**
  - A new JSON object with capitalized fields.

#### `class function FirstCapitalizeString(const AValue: string): string;`

This function takes a string and returns a new string with the first letter of each word capitalized.

- **Parameters:**
  - `AValue`: The original string.

- **Result:**
  - A new string with the first letter of each word capitalized.

### ℹ️ Notes

- The `FirstCapitalizeJsonFields` functions operate with both JSON strings and JSON objects.
- The `FirstCapitalizeString` function capitalizes the first letter of each word in the string, considering some exceptions for special characters like hyphens and slashes.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string): string;`

This function returns the value associated with the specified key in the HTTP header.

- **Parameters:**
  - `AReq`: THorseRequest object (optional, depending on the directive).
  - `AKey`: The key for which to retrieve the header value.

- **Result:**
  - A string containing the value of the header associated with the specified key.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Int64): Int64;`

This function returns the value associated with the specified key in the HTTP header as a 64-bit integer.

- **Parameters:**
  - `AReq`: THorseRequest object (optional, depending on the directive).
  - `AKey`: The key for which to retrieve the header value.
  - `ADefault`: Default value to be returned if the header does not exist or is not an integer.

- **Result:**
  - A 64-bit integer containing the value of the header associated with the specified key or the default value if the key does not exist or is not an integer.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Boolean): Boolean;`

This function returns the value associated with the specified key in the HTTP header as a boolean.

- **Parameters:**
  - `AReq`: THorseRequest object (optional, depending on the directive).
  - `AKey`: The key for which to retrieve the header value.
  - `ADefault`: Default value to be returned if the header does not exist or is not a boolean.

- **Result:**
  - A boolean containing the value of the header associated with the specified key or the default value if the key does not exist or is not a boolean.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Extended): Extended;`

This function returns the value associated with the specified key in the HTTP header as a floating-point number.

- **Parameters:**
  - `AReq`: THorseRequest object (optional, depending on the directive).
  - `AKey`: The key for which to retrieve the header value.
  - `ADefault`: Default value to be returned if the header does not exist or is not a floating-point number.

- **Result:**
  - A floating-point number containing the value of the header associated with the specified key or the default value if the key does not exist or is not a floating-point number.

### ℹ️ Notes

- The functions use the CGI environment to get header values when compiled with the `HORSE_CGI` directive.
- In non-CGI environments (like Horse), the functions use `THorseRequest` objects to get header values.

#### `class function IsValidJSONObject(const AJSONString: string): Boolean;`

This function checks if the provided string represents a valid JSON object.

- **Parameters:**
  - `AJSONString`: The JSON string to be validated.

- **Result:**
  - A boolean indicating whether the string represents a valid JSON object.

#### `class function IsValidJSONArray(const AJSONString: string): Boolean;`

This function checks if the provided string represents a valid JSON array.

- **Parameters:**
  - `AJSONString`: The JSON string to be validated.

- **Result:**
  - A boolean indicating whether the string represents a valid JSON array.

#### `class function IsEmpty(const AValue: string): Boolean;`

This function checks if a string is empty after removing spaces.

- **Parameters:**
  - `AValue`: The string to be checked.

- **Result:**
  - A boolean indicating whether the string, after removing spaces, is empty.
  
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
## 📐Function of TSetup4DUtilityConstants

The class `TSetup4DUtilityConstants` provides constants and default error messages for application development. Below are some of the functions offered by this class, along with their descriptions.

### ⚙️ Related Functions and Messages

#### `class function FOREGIN_KEY_FAILS: string;`

This function returns a standard error message in case of failure when attempting to use a foreign key.

- **Result:**
  - A string containing the error message.

#### `class function INVALID_BOOLEAN: string;`

This function returns a message indicating that the provided boolean value is invalid or unrecognized.

- **Result:**
  - A string containing the error message.

#### `class function INVALID_DATA: string;`

This function returns a message indicating that the provided data is invalid.

- **Result:**
  - A string containing the error message.

#### `class function INVALID_NUMBER: string;`

This function returns a message indicating that the provided number is invalid or unrecognized.

- **Result:**
  - A string containing the error message.

#### `class function MAX_USER_CONNECTIONS: string;`

This function returns a message informing that the system is undergoing maintenance and asks the user to wait before trying again.

- **Result:**
  - A string containing the informational message about maintenance.

#### `class function MESSAGE_GENERIC: string;`

This function returns a generic message indicating that the system is temporarily unavailable.

- **Result:**
  - A string containing the generic unavailability message.

#### `class function MESSAGE_GENERIC(const AMessage: string): string;`

This function returns a generic message, including a specific message provided as a parameter.

- **Parameters:**
  - `AMessage`: A specific message to be included in the generic message.

- **Result:**
  - A string containing the generic message with the formatted specific message.

#### `class function NO_KEY: string;`

This function returns a message indicating that the key is missing or not found.

- **Result:**
  - A string containing the error message.

#### `class function NO_DATA_FOUND: string;`

This function returns a message indicating that no information was located.

- **Result:**
  - A string containing the error message.

#### `class function NO_RECORDS_FOUND: string;`

This function returns a message indicating that no records were located.

- **Result:**
  - A string containing the error message.

#### `class function NO_RESOURCE_FOUND: string;`

This function returns a message indicating that the requested resource was not found on the server.

- **Result:**
  - A string containing the error message.

#### `class function REQUIRED_INFORMATION(AField: string): string;`

This function returns a message indicating that information in a specific field is required.

- **Parameters:**
  - `AField`: The field for which information is required.

- **Result:**
  - A string containing the formatted error message with the specific field.
#### `class function UNINSTANTIATED_CLASS(AClass: string): string;`

This function returns a message indicating that the specified class has not been instantiated.

- **Parameters:**
  - `AClass`: The name of the uninstantiated class.

- **Result:**
  - A string containing the formatted error message with the class name.

#### `class function UNINSTANTIATED_CLASS: string;`

This function returns a message indicating that the class has not been instantiated.

- **Result:**
  - A string containing the error message.

#### `class function REQUIRED_INFORMATION: string;`

This function returns a message indicating that the required information has not been provided.

- **Result:**
  - A string containing the error message.

Each of these functions provides standardized messages for specific situations, promoting consistency in error communication and informative messages in applications using the `TSetup4DUtilityConstants` class.

### 📐Function of TSetup4DUtilityConstants (Continuation)

The `TSetup4DUtilityConstants` class continues to provide constants and default error messages for application development. Here are some more functions from this class, along with their descriptions.

### ⚙️ Related Functions and Messages

#### `class function NO_KEY: string;`

This function returns a message indicating that the key is missing or not found.

- **Result:**
  - A string containing the error message.

#### `class function NO_DATA_FOUND: string;`

This function returns a message indicating that no information was located.

- **Result:**
  - A string containing the error message.

#### `class function NO_RECORDS_FOUND: string;`

This function returns a message indicating that no records were located.

- **Result:**
  - A string containing the error message.

#### `class function NO_RESOURCE_FOUND: string;`

This function returns a message indicating that the requested resource was not found on the server.

- **Result:**
  - A string containing the error message.

#### `class function REQUIRED_INFORMATION(AField: string): string;`

This function returns a message indicating that information in a specific field is required.

- **Parameters:**
  - `AField`: The field for which information is required.

- **Result:**
  - A string containing the formatted error message with the specific field.

#### `class function UNINSTANTIATED_CLASS(AClass: string): string;`

This function returns a message indicating that the specified class has not been instantiated.

- **Parameters:**
  - `AClass`: The name of the uninstantiated class.

- **Result:**
  - A string containing the formatted error message with the class name.

#### `class function UNINSTANTIATED_CLASS: string;`

This function returns a message indicating that the class has not been instantiated.

- **Result:**
  - A string containing the error message.

#### `class function REQUIRED_INFORMATION: string;`

This function returns a message indicating that the required information has not been provided.

- **Result:**
  - A string containing the error message.

ℹ️ Each of these functions contributes to the consistency and clarity of error and informational messages in applications using the `TSetup4DUtilityConstants` class.
