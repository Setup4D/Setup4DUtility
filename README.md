[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com)

# Setup4DUtility

![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)
![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)

Bem-vindo(a) ao repositório do projeto Setup4DUtility! Esta aplicação foi desenvolvida para simplificar o uso de outros componentes em seus projetos. Ele fornece uma série de recursos convenientes para otimizar o desenvolvimento de aplicativos. Com o Setup4DUtility, você pode realizar interações com outros procedimentos e funções em suas aplicações Delphi de maneira rápida, simples e confiável. 

## 📐 Como utilizar

### ⚙️ Instalação

#### ⚡️ Automática (via boss)

* `[Optional]` Para facilitar recomendo utilizar [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) para instalação, bastando apenas rodar o comando abaixo em um terminal  (Windows PowerShell for example):

```
boss install github.com/Setup4D/Setup4DUtility
```

#### ⚡️ Manual (Delphi)

* Se você optar por instalar manualmente, basta adicionar a pasta abaixo ao seu projeto, em *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*.

```
../Setup4DUtility/src
```

## 📐 Modo de uso

### ⚙️ Idioma das mensagens

* O sistema suporta dois idiomas, com o inglês sendo o idioma padrão. No entanto, é possível utilizar o aplicativo em português do Brasil. Para isso, siga as etapas a seguir:

```
Acesse Project > Options > Delphi Compiler > Conditionals Defines
```

* Adicione a diretiva *HAS_PORTUGUES*, necessária para habilitar o idioma português do Brasil.

## 📐Função do TSetup4DUtility

A classe `TSetup4DUtility` é uma classe de suporte para o desenvolvimento de aplicativos que contém várias funções e procedimentos que simplificam o uso de outras classes.

### ⚙️ Métodos

#### ⚡️ `class function OnlyNumber(const AValue: String): String;`

Este método remove todos os caracteres não numéricos da string especificada e retorna a string resultante contendo apenas os caracteres numéricos.

- **Parâmetros:**
  - `AValue`: A string da qual deseja-se remover os caracteres não numéricos.
- **Retorno:**
  - A string resultante contendo apenas os caracteres numéricos.

#### ⚡️ `class function CharIsNum(const AValue: Char): Boolean;`

Este método verifica se o caractere especificado é um dígito numérico.

- **Parâmetros:**
  - `AValue`: O caractere a ser verificado.
- **Retorno:**
  - True se o caractere for um dígito numérico, caso contrário, False.

### 🌱 Exemplo de Uso

Aqui está um exemplo de como usar a classe `TSetup4DUtility`:

```delphi
var
  LValue: string;
  LResultString: string;
  LChar: Char;
  LValid: Boolean;
begin
  // Remove todos os caracteres não numéricos da string
  LValue := 'A123B456C789';
  // O valor de LResultString será '123456789'
  LResultString := TSetup4DUtility.OnlyNumber(LValue);
  
  // Verifica se um caractere é um dígito numérico
  LChar := '5';
  // O valor de LValid será True
  LValid := TSetup4DUtility.CharIsNum(LChar);
  
end;
```

## 📐Função do TSetup4DUtilityGeneric<T>

A classe `TSetup4DUtilityGeneric<T>` é uma classe genérica de suporte para o desenvolvimento de aplicativos. Ela contém várias funções e procedimentos que simplificam o uso de outros tipos enumerados.

### ⚙️ Tipos e Enums Relacionados

- **TSetup4DNumberSequence**: Um tipo enumerado que representa uma faixa numérica de trabalho de 0 a 255.

### ⚙️ Métodos

#### `class procedure EnumToList(AValue: TStrings);`

Este método popula uma lista de strings com os nomes dos valores do tipo enumerado.

- **Parâmetros:**
  - `AValue`: A lista de strings a ser preenchida com os nomes dos valores do tipo enumerado.

#### ⚡️ `class function EnumToString(const AEnum: T): string;`

Este método converte um valor enumerado para uma representação de string.

- **Parâmetros:**
  - `AEnum`: O valor enumerado a ser convertido.
- **Retorno:**
  - A representação de string do valor enumerado.

#### ⚡️ `class function EnumToInterger(const AEnum: T): integer;`

Este método converte um valor enumerado para um número inteiro.

- **Parâmetros:**
  - `AEnum`: O valor enumerado a ser convertido.
- **Retorno:**
  - O número inteiro correspondente ao valor enumerado.

#### ⚡️ `class function StringToEnum(const AValue: string): T;`

Este método converte uma representação de string para um valor enumerado.

- **Parâmetros:**
  - `AValue`: A representação de string a ser convertida.
- **Retorno:**
  - O valor enumerado correspondente à representação de string.

### 🌱 Exemplo de Uso

Aqui está um exemplo de como usar a classe `TSetup4DUtilityGeneric<T>`:

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
  // Preenche uma lista de strings com os nomes dos valores do tipo enumerado
  LStringList := TStringList.Create;
  try
    TSetup4DUtilityGeneric<TDias>.EnumToList(LStringList);
    // A lista `LStringList` agora contém os nomes dos valores do tipo enumerado

    // Converte um valor enumerado para uma representação de string
    LEnumValue := TDias.QUINTA;
    LStringValue := TSetup4DUtilityGeneric<TDias>.EnumToString(LEnumValue);

    // Converte um valor enumerado para um número inteiro
    LIntValue := TSetup4DUtilityGeneric<TDias>.EnumToInterger(LEnumValue);

    // Converte uma representação de string para um valor enumerado
    LStringValue := 'SEGUNDA';
    LEnumValue := TSetup4DUtilityGeneric<TDias>.StringToEnum(LStringValue);
  finally
    LStringList.Free;
  end;
end;
```
