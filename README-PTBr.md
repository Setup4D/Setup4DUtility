[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br)

<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>

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
### ⚙️ Dependências

* Este projeto depende do [**Horse**](https://github.com/hashload/horse) e do [**Horse Exception**](https://github.com/hashload/handle-exception), desempenhando um papel crucial em suas funcionalidades operacionais. Quando você utiliza o [**Boss**](https://github.com/HashLoad/boss) como instalador do framework, a instalação do **Horse** e do **Horse Exception** ocorre automaticamente. No entanto, se optar por uma instalação manual, siga os passos que tem na página do framework [**Horse**](https://github.com/hashload/horse) e do [**Horse Exception**](https://github.com/hashload/handle-exception).
   
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
 
####  ⚡️`class function IIF<T>(AValue : Boolean; T1, T2 : T) : T;`

Esta função tem o propósito de avaliar uma expressão e retornar um valor específico com base na condição fornecida.

- **Parâmetros:**
  - `<T>` : Define o tipo que será retornado
  - `AValue`: A expressão a ser verificada.
  - `T1`: O valor retornado se a expressão for verdadeira.
  - `T2`: O valor retornado se a expressão for falsa.
- **Retorno:**
   - Se a expressão for verdadeira, T1, caso contrário, retorna T2.
 
#### ⚡️ `class function GetDateTime(AValue : TDateTime): string; overload;`

Este método obtém a data e a hora no formato "yyyy-mm-dd hh:nn:ss", que representa o ano (yyyy), o mês (mm), o dia (dd), a hora (hh), os minutos (nn) e os segundos (ss). Esse formato é comumente usado para representar datas e horas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de data e hora em bancos de dados.

**Parâmetros:**
   - `AValue`: Informar a data e hora a ser formatada.
**Retorno:**
   - Retorna a data e hora formatada.
 
#### ⚡️ `class function GetDate(AValue : TDateTime): string; overload;`

Este método obtém a data formato "yyyy-mm-dd", que representa o ano (yyyy), o mês (mm), o dia (dd). Esse formato é comumente usado para representar datas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de data em bancos de dados.

**Parâmetros:**
   - `AValue`: Informar a data e hora a ser formatada.
**Retorno:**
   - Retorna a data e hora formatada.

#### ⚡️ `class function GetTime(AValue : TDateTime): string; overload;`

Este método obtém a hora no formato "hh:nn:ss", que representa a hora (hh), os minutos (nn) e os segundos (ss). Esse formato é comumente usado para representar horas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de hora em bancos de dados.

**Parâmetros:**
   - `AValue`: Informar a hora a ser formatada.
**Retorno:**
   - Retorna a data e hora formatada.

#### ⚡️ `class function GetDateTime: string; overload;`

Este método obtém a data e a hora no formato "yyyy-mm-dd hh:nn:ss", que representa o ano (yyyy), o mês (mm), o dia (dd), a hora (hh), os minutos (nn) e os segundos (ss). Esse formato é comumente usado para representar datas e horas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de data e hora em bancos de dados.

**Retorno:**
   - Retorna a data e hora formatada.
 
#### ⚡️ `class function GetDate: string; overload;`

Este método obtém a data formato "yyyy-mm-dd", que representa o ano (yyyy), o mês (mm), o dia (dd). Esse formato é comumente usado para representar datas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de data em bancos de dados.

**Retorno:**
   - Retorna a data e hora formatada.

#### ⚡️ `class function GetTime: string; overload;`

Este método obtém a hora no formato "hh:nn:ss", que representa a hora (hh), os minutos (nn) e os segundos (ss). Esse formato é comumente usado para representar horas em um formato legível por máquina e pode ser útil em diversos contextos, como armazenamento de registros de hora em bancos de dados.

**Retorno:**
   - Retorna a data e hora formatada.

#### ⚡️ `class function ProcessHorseExceptionMessage(AValue: Exception): string; overload;`

Esta função recebe uma exceção e retorna uma mensagem amigável correspondente a essa exceção. Ela lida com exceções específicas, como "max_user_connections" e "a foreign key constraint fails," e fornece mensagens amigáveis personalizadas para essas exceções.

**Parâmetros:**
- `AValue`: A exceção a ser processada.

**Retorno:**
- `Result`: A mensagem amigável correspondente à exceção.

#### ⚡️ `class procedure ProcessHorseExceptionMessage(AValue: Exception; AHTTPStatus: THTTPStatus); overload;`

Esta sobrecarga da função `ProcessHorseExceptionMessage` recebe uma exceção e um status HTTP. Ela lança uma exceção `EHorseException` com a mensagem amigável correspondente à exceção e o status HTTP apropriado.

**Parâmetros:**
- `AValue`: A exceção a ser processada.
- `AHTTPStatus`: O status HTTP a ser atribuído à exceção lançada.

#### `class function FirstCapitalizeJsonFields(const AJSONString: string): string;`

Esta função recebe uma string JSON e retorna uma nova string JSON com os campos convertidos para o formato onde a primeira letra de cada palavra é maiúscula.

- **Parâmetros:**
  - `AJSONString`: A string JSON original.

- **Resultado:**
  - Uma nova string JSON com os campos capitalizados.

#### `class function FirstCapitalizeJsonFields(const AJSON: TJSONObject): TJSONObject;`

Esta função recebe um objeto JSON e retorna um novo objeto JSON com os campos convertidos para o formato onde a primeira letra de cada palavra é maiúscula.

- **Parâmetros:**
  - `AJSON`: O objeto JSON original.

- **Resultado:**
  - Um novo objeto JSON com os campos capitalizados.

#### `class function FirstCapitalizeString(const AValue: string): string;`

Esta função recebe uma string e retorna uma nova string com a primeira letra de cada palavra em maiúscula.

- **Parâmetros:**
  - `AValue`: A string original.

- **Resultado:**
  - Uma nova string com a primeira letra de cada palavra em maiúscula.

### ℹ️ Observações

- As funções `FirstCapitalizeJsonFields` operam tanto com strings JSON quanto com objetos JSON.
- A função `FirstCapitalizeString` capitaliza a primeira letra de cada palavra na string, considerando algumas exceções para caracteres especiais como hífens e barras.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string): string;`

Esta função retorna o valor associado à chave especificada no cabeçalho HTTP.

- **Parâmetros:**
  - `AReq`: Objeto de solicitação THorseRequest (opcional, dependendo da diretiva).
  - `AKey`: A chave para a qual se deseja obter o valor do cabeçalho.

- **Resultado:**
  - Uma string contendo o valor do cabeçalho associado à chave especificada.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Int64): Int64;`

Esta função retorna o valor associado à chave especificada no cabeçalho HTTP como um número inteiro de 64 bits.

- **Parâmetros:**
  - `AReq`: Objeto de solicitação THorseRequest (opcional, dependendo da diretiva).
  - `AKey`: A chave para a qual se deseja obter o valor do cabeçalho.
  - `ADefault`: Valor padrão a ser retornado caso o cabeçalho não exista ou não seja um número inteiro.

- **Resultado:**
  - Um número inteiro de 64 bits contendo o valor do cabeçalho associado à chave especificada ou o valor padrão se a chave não existir ou não for um número inteiro.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Boolean): Boolean;`

Esta função retorna o valor associado à chave especificada no cabeçalho HTTP como um booleano.

- **Parâmetros:**
  - `AReq`: Objeto de solicitação THorseRequest (opcional, dependendo da diretiva).
  - `AKey`: A chave para a qual se deseja obter o valor do cabeçalho.
  - `ADefault`: Valor padrão a ser retornado caso o cabeçalho não exista ou não seja um booleano.

- **Resultado:**
  - Um booleano contendo o valor do cabeçalho associado à chave especificada ou o valor padrão se a chave não existir ou não for um booleano.

#### `class function GetHeadValue({$IFNDEF HORSE_CGI}AReq: THorseRequest;{$ENDIF} AKey: string; ADefault: Extended): Extended;`

Esta função retorna o valor associado à chave especificada no cabeçalho HTTP como um número de ponto flutuante.

- **Parâmetros:**
  - `AReq`: Objeto de solicitação THorseRequest (opcional, dependendo da diretiva).
  - `AKey`: A chave para a qual se deseja obter o valor do cabeçalho.
  - `ADefault`: Valor padrão a ser retornado caso o cabeçalho não exista ou não seja um número de ponto flutuante.

- **Resultado:**
  - Um número de ponto flutuante contendo o valor do cabeçalho associado à chave especificada ou o valor padrão se a chave não existir ou não for um número de ponto flutuante.

### ℹ️ Observações

- As funções utilizam o ambiente CGI para obter os valores dos cabeçalhos quando compiladas com a diretiva `HORSE_CGI`.
- Em ambientes não CGI (como Horse), as funções utilizam objetos `THorseRequest` para obter os valores dos cabeçalhos.

#### `class function IsValidJSONObject(const AJSONString: string): Boolean;`

Esta função verifica se a string fornecida representa um objeto JSON válido.

- **Parâmetros:**
  - `AJSONString`: A string JSON a ser validada.

- **Resultado:**
  - Um booleano indicando se a string representa um objeto JSON válido.

#### `class function IsValidJSONArray(const AJSONString: string): Boolean;`

Esta função verifica se a string fornecida representa um array JSON válido.

- **Parâmetros:**
  - `AJSONString`: A string JSON a ser validada.

- **Resultado:**
  - Um booleano indicando se a string representa um array JSON válido.

#### `class function IsEmpty(const AValue: string): Boolean;`

Esta função verifica se uma string está vazia após a remoção dos espaços.

- **Parâmetros:**
  - `AValue`: A string a ser verificada.

- **Resultado:**
  - Um booleano indicando se a string, após a remoção de espaços, está vazia.
    
### 🌱 Exemplo de Uso

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

  // Verfica se o um e maior que o zero
  LValid := 1 > 0;
  // O valor de LResultString será 'SIM'
  LResultString := TSetup4DUtility.IIF<string>(LValid, 'SIM', 'NÃO');
  // Verfica se o um e menot que o zero
  LValid := 1 < 0;
  // O valor de LResultString será 'NÂO'
  LResultString := TSetup4DUtility.IIF<string>(LValid, 'SIM', 'NÃO');
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
### 📐Função do TSetup4DUtilityConstantes

A classe `TSetup4DUtilityConstantes` fornece constantes e mensagens de erro padrão para o desenvolvimento de aplicativos. Abaixo estão algumas das funções oferecidas por esta classe, juntamente com suas descrições.

### ⚙️ Funções e Mensagens Relacionadas

#### `class function FOREGIN_KEY_FAILS: string;`

Esta função retorna uma mensagem padrão de erro em caso de falha ao tentar utilizar uma chave estrangeira.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function INVALID_BOOLEAN: string;`

Esta função retorna uma mensagem indicando que o valor booleano fornecido é inválido ou não reconhecido.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function INVALID_DATA: string;`

Esta função retorna uma mensagem indicando que os dados fornecidos são inválidos.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function INVALID_NUMEBER: string;`

Esta função retorna uma mensagem indicando que o número fornecido é inválido ou não reconhecido.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function MAX_USER_CONNECTIONS: string;`

Esta função retorna uma mensagem informando que o sistema está passando por manutenção e solicita ao usuário que aguarde antes de tentar novamente.

- **Resultado:**
  - Uma string contendo a mensagem informativa sobre a manutenção.

#### `class function MESSAGE_GENERIC: string;`

Esta função retorna uma mensagem genérica indicando que o sistema está temporariamente indisponível.

- **Resultado:**
  - Uma string contendo a mensagem genérica de indisponibilidade.

#### `class function MESSAGE_GENERIC(const AMessage: string): string;`

Esta função retorna uma mensagem genérica, incluindo uma mensagem específica fornecida como parâmetro.

- **Parâmetros:**
  - `AMessage`: Uma mensagem específica a ser incluída na mensagem genérica.

- **Resultado:**
  - Uma string contendo a mensagem genérica com a mensagem específica formatada.

#### `class function NO_KEY: string;`

Esta função retorna uma mensagem indicando que a chave está ausente ou não foi encontrada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_DATA_FOUND: string;`

Esta função retorna uma mensagem indicando que nenhuma informação foi localizada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_RECORDS_FOUND: string;`

Esta função retorna uma mensagem indicando que nenhum registro foi localizado.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_RESOURCE_FOUND: string;`

Esta função retorna uma mensagem indicando que o recurso solicitado não foi encontrado no servidor.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function REQUIRED_INFORMATION(AField: string): string;`

Esta função retorna uma mensagem indicando que a informação em um campo específico é obrigatória.

- **Parâmetros:**
  - `AField`: O campo para o qual a informação é obrigatória.

- **Resultado:**
  - Uma string contendo a mensagem de erro formatada com o campo específico.

#### `class function UNINSTANTIATED_CLASS(AClass: string): string;`

Esta função retorna uma mensagem indicando que a classe especificada não foi instanciada.

- **Parâmetros:**
  - `AClass`: O nome da classe não instanciada.

- **Resultado:**
  - Uma string contendo a mensagem de erro formatada com o nome da classe.

#### `class function UNINSTANTIATED_CLASS: string;`

Esta função retorna uma mensagem indicando que a classe não foi instanciada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function REQUIRED_INFORMATION: string;`

Esta função retorna uma mensagem indicando que a informação necessária não foi fornecida.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

Cada uma dessas funções oferece mensagens padronizadas para situações específicas, promovendo consistência na comunicação de erros e mensagens informativas nos aplicativos que utilizam a classe `TSetup4DUtilityConstantes`.


### 📐Função do TSetup4DUtilityConstantes (Continuação)

A classe `TSetup4DUtilityConstantes` continua a oferecer constantes e mensagens de erro padrão para o desenvolvimento de aplicativos. Aqui estão mais algumas funções desta classe, juntamente com suas descrições.

### ⚙️ Funções e Mensagens Relacionadas

#### `class function NO_KEY: string;`

Esta função retorna uma mensagem indicando que a chave está ausente ou não foi encontrada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_DATA_FOUND: string;`

Esta função retorna uma mensagem indicando que nenhuma informação foi localizada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_RECORDS_FOUND: string;`

Esta função retorna uma mensagem indicando que nenhum registro foi localizado.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function NO_RESOURCE_FOUND: string;`

Esta função retorna uma mensagem indicando que o recurso solicitado não foi encontrado no servidor.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function REQUIRED_INFORMATION(AField: string): string;`

Esta função retorna uma mensagem indicando que a informação em um campo específico é obrigatória.

- **Parâmetros:**
  - `AField`: O campo para o qual a informação é obrigatória.

- **Resultado:**
  - Uma string contendo a mensagem de erro formatada com o campo específico.

#### `class function UNINSTANTIATED_CLASS(AClass: string): string;`

Esta função retorna uma mensagem indicando que a classe especificada não foi instanciada.

- **Parâmetros:**
  - `AClass`: O nome da classe não instanciada.

- **Resultado:**
  - Uma string contendo a mensagem de erro formatada com o nome da classe.

#### `class function UNINSTANTIATED_CLASS: string;`

Esta função retorna uma mensagem indicando que a classe não foi instanciada.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

#### `class function REQUIRED_INFORMATION: string;`

Esta função retorna uma mensagem indicando que a informação necessária não foi fornecida.

- **Resultado:**
  - Uma string contendo a mensagem de erro.

ℹ️ Cada uma dessas funções contribui para a consistência e clareza das mensagens de erro e informativas nos aplicativos que utilizam a classe `TSetup4DUtilityConstantes`.
