[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br)

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

####  ⚡️ `class function OnlyAlpha(const AValue: String): String;`

Este método remove todos os caracteres que não são letras da string especificada e retorna a string resultante contendo apenas letras.

- **Parâmetros:**
  - `AValue`: A string da qual deseja-se remover os caracteres não alfabéticos.
- **Retorno:**
  - A string resultante contendo apenas letras.

Este método é útil para limpar uma string e manter apenas os caracteres alfabéticos.

####  ⚡️`class function CharIsAlpha(const AValue: Char): Boolean;`

Este método verifica se o caractere especificado é uma letra.

- **Parâmetros:**
  - `AValue`: O caractere a ser verificado.
- **Retorno:**
  - True se o caractere for uma letra, caso contrário, False.

Este método é útil para verificar se um caractere é uma letra do alfabeto.

####  ⚡️`class function ReplaceSpecialChars(AValue: string; AExtras: Boolean = False): string;`

Este método substitui caracteres especiais em uma string por equivalentes normais.

- **Parâmetros:**
  - `AValue`: O texto no qual os caracteres especiais serão substituídos.
  - `AExtras`: Indica se caracteres extras também devem ser removidos (opcional).
- **Retorno:**
  - Um novo texto, que não contém caracteres especiais e, caso selecionado, não contém caracteres extras, como @, #, $, entre outros.

####  ⚡️`class function ReadXMLTag(const AXML: string; const ATag: string): string; Overload;`

Essa função lê uma tag específica de um XML, o qual está em formato de string.

- **Parâmetros:**
  - `AXML`: O XML no formato de string a ser processado.
  - `ATag`: A tag XML que deseja-se ler.
- **Retorno:**
  - O conteúdo da tag XML especificada.
  
####  ⚡️`class function ReadXMLTag(const AXML: TStringList; const ATag: string): string; Overload;`

Essa função lê uma tag específica de um XML, o qual está em formato de TStringList.

- **Parâmetros:**
  - `AXML`: O XML no formato de TStringList a ser processado.
  - `ATag`: A tag XML que deseja-se ler.
- **Retorno:**
  - O conteúdo da tag XML especificada.
  
####  ⚡️`class function RemoveSpaces(const AValue: string): string;`

Essa função tem a finalidade de eliminar todos os espaços em branco de uma string.

- **Parâmetros:**
  - `AValue`: A string na qual os espaços em branco serão suprimidos.
- **Retorno:**
  - A string sem os espaços em branco.

#### 🌱 Exemplo de Uso

Aqui está um exemplo de como usar a classe `TSetup4DUtility`:

```delphi
var
  LValue: string;
  LResultString: string;
  LChar: Char;
  LValid: Boolean;
  LStringList : TStringList;
begin
  // Remove todos os caracteres não numéricos da string
  LValue := 'A123B456C789';
  // O valor de LResultString será '123456789'
  LResultString := TSetup4DUtility.OnlyNumber(LValue);
  // O valor de LResultString será 'AC'
  LResultString := TSetup4DUtility.OnlyAlpha(LValue);
  
  // Verifica se um caractere é um dígito numérico
  LChar := '5';
  // O valor de LValid será True
  LValid := TSetup4DUtility.CharIsNum(LChar);
  LChar := 'A';
  // O valor de LValid será True
  LValid := TSetup4DUtility.CharIsAlpha(LChar);

  // Remove todos os caracteres especial
  LValue := '#Caçada';
  // O valor de LResultString será '#Cacada'
  LResultString := TSetup4DUtility.ReplaceSpecialChars(LValue);
  // O valor de LResultString será 'Cacada'
  LResultString := TSetup4DUtility.ReplaceSpecialChars(LValue, True);

  // Ler as TAGs do XML
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

  // O valor de LResultString será 'O XML veste prada'
  LResultString := TSetup4DUtility.ReadXMLTag(LValue, 'titulo');
  // O valor de LResultString será 'O filme mostra a elegância da XML na representação de dados estruturados e semi estruturados.'
  LResultString := TSetup4DUtility.ReadXMLTag(LStringList, 'resumo');

  // Remove todos os espaços em branco
  LValue := 'O rato roeu a roupa';
  // O valor de LResultString será 'Oratoroeuaroupa'
  LResultString := TSetup4DUtility.RemoveSpaces(LValue);
end;
```

## 📐Função do TSetup4DUtilityGeneric<T>

A classe `TSetup4DUtilityGeneric<T>` é uma classe genérica de suporte para o desenvolvimento de aplicativos. Ela contém várias funções e procedimentos que simplificam o uso de outros tipos enumerados.

### ⚙️ Tipos e Enums Relacionados

- **TSetup4DNumberSequence**: Um tipo enumerado que representa uma faixa numérica de trabalho de 0 a 255.

### ⚙️ Métodos

#### `class procedure EnumToList(AValue: TStrings); overload;`

Este método popula uma lista de strings com os nomes dos valores do tipo enumerado.

- **Parâmetros:**
  - `AValue`: A lista de strings a ser preenchida com os nomes dos valores do tipo enumerado.

### ⚡️ `class procedure EnumToList(AValue: TStrings; const AOldValue: string; const ANewValue: string); overload;`

Este método preenche uma lista de strings com os nomes dos valores do tipo enumerado, substituindo um valor específico pelo novo valor.

- **Parâmetros:**
  - `AValue`: A lista de strings a ser preenchida.
  - `AOldValue`: O caracter do tipo enumerado a ser substituído na lista.
  - `ANewValue`: O novo valor que substituirá o valor antigo do caracter do enumerado.

Este método permite preencher uma lista de strings com os nomes dos valores do tipo enumerado e, opcionalmente, substituir um valor específico na lista pelo novo valor. Isso pode ser útil para personalizar a lista de nomes de valores enumerados conforme necessário.

#### ⚡️ `class function EnumToString(const AEnum: T): string; overload;`

Este método converte um valor enumerado para uma representação de string.

- **Parâmetros:**
  - `AEnum`: O valor enumerado a ser convertido.
- **Retorno:**
  - A representação de string do valor enumerado.

###  ⚡️ `class function EnumToString(const AEnum: T; const AOldValue: string; const ANewValue: string): string; overload;`

Este método converte um valor enumerado para uma representação de string, permitindo opcionalmente substituir um caractere específico pelo novo caractere na representação de string.

- **Parâmetros:**
  - `AEnum`: O valor enumerado a ser convertido.
  - `AOldValue`: O caractere a ser substituído na representação de string.
  - `ANewValue`: O novo caractere a ser colocado na representação de string.
- **Retorno:**
  - A representação de string do valor enumerado, com as substituições aplicadas, se especificadas.

Este método é útil para converter um valor enumerado em uma representação de string e, opcionalmente, personalizar essa representação substituindo caracteres específicos.

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
    // A lista `LStringList` agora contém os nomes dos valores do tipo enumerado
    TSetup4DUtilityGeneric<TDias>.EnumToList(LStringList);

    // A lista `LStringList` agora contém os nomes dos valores do tipo enumerado
    TSetup4DUtilityGeneric<TDias>.EnumToList(LStringList, 'E', '3'); 

    // Converte um valor enumerado para uma representação de string
    LEnumValue := TDias.QUINTA;
    LStringValue := TSetup4DUtilityGeneric<TDias>.EnumToString(LEnumValue);
    LStringValue := TSetup4DUtilityGeneric<TDias>.EnumToString(LEnumValue, 'I', '1');

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
