unit Setup4D.Utility.Constantes;

interface
type
  TSetup4DUtilityConstantes = class
  public
    {$IFDEF HAS_PORTUGUES}
     /// <summary>
    /// Mensagem padrão para falha em chave estrangeira.
    /// </summary>
    /// <returns>
    /// Mensagem de erro indicando que os dados estão em uso em outra parte do sistema.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Default message for foreign key failure.
    /// </summary>
    /// <returns>
    /// Error message indicating that the data is already in use elsewhere in the system.
    /// </returns>
    {$ENDIF}
    class function FOREGIN_KEY_FAILS: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem para valor booleano inválido ou não reconhecido.
    /// </summary>
    /// <returns>
    /// Mensagem de erro indicando que o valor booleano fornecido é inválido ou não reconhecido.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message for invalid or unrecognized boolean value.
    /// </summary>
    /// <returns>
    /// Error message indicating that the provided boolean value is invalid or unrecognized.
    /// </returns>
    {$ENDIF}
    class function INVALID_BOOLEAN: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem para dados fornecidos inválidos.
    /// </summary>
    /// <returns>
    /// Mensagem de erro indicando que os dados fornecidos são inválidos.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message for invalid provided data.
    /// </summary>
    /// <returns>
    /// Error message indicating that the provided data is invalid.
    /// </returns>
    {$ENDIF}
    class function INVALID_DATA: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem para número fornecido inválido ou não reconhecido.
    /// </summary>
    /// <returns>
    /// Mensagem de erro indicando que o número fornecido é inválido ou não reconhecido.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message for invalid or unrecognized provided number.
    /// </summary>
    /// <returns>
    /// Error message indicating that the provided number is invalid or unrecognized.
    /// </returns>
    {$ENDIF}
    class function INVALID_NUMEBER: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem para o número máximo de conexões de usuário atingido.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que o sistema está em manutenção e solicita aguardar e tentar novamente mais tarde.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message for reaching the maximum number of user connections.
    /// </summary>
    /// <returns>
    /// Message indicating that the system is undergoing maintenance and requests to wait and try again later.
    /// </returns>
    {$ENDIF}
    class function MAX_USER_CONNECTIONS: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem genérica para indisponibilidade temporária.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que o sistema está temporariamente indisponível e solicita tentar novamente mais tarde.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Generic message for temporary unavailability.
    /// </summary>
    /// <returns>
    /// Message indicating that the system is temporarily unavailable and requests to try again later.
    /// </returns>
    {$ENDIF}
    class function MESSAGE_GENERIC: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem genérica para indisponibilidade temporária com uma mensagem personalizada.
    /// </summary>
    /// <param name="AMessage">
    /// Mensagem personalizada a ser incluída na mensagem genérica.
    /// </param>
    /// <returns>
    /// Mensagem indicando que o sistema está temporariamente indisponível com uma mensagem personalizada e solicita tentar novamente mais tarde.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Generic message for temporary unavailability with a custom message.
    /// </summary>
    /// <param name="AMessage">
    /// Custom message to be included in the generic message.
    /// </param>
    /// <returns>
    /// Message indicating that the system is temporarily unavailable with a custom message and requests to try again later.
    /// </returns>
    {$ENDIF}
    class function MESSAGE_GENERIC(const AMessage: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que a chave está ausente ou não foi encontrada.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que a chave está ausente ou não foi encontrada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that the key is missing or not found.
    /// </summary>
    /// <returns>
    /// Message indicating that the key is missing or not found.
    /// </returns>
    {$ENDIF}
    class function NO_KEY: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que nenhuma informação foi localizada.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que nenhuma informação foi localizada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that no information was located.
    /// </summary>
    /// <returns>
    /// Message indicating that no information was located.
    /// </returns>
    {$ENDIF}
    class function NO_DATA_FOUND: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que nenhum registro foi localizado.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que nenhum registro foi localizado.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that no records were found.
    /// </summary>
    /// <returns>
    /// Message indicating that no records were found.
    /// </returns>
    {$ENDIF}
    class function NO_RECORDS_FOUND: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que o recurso solicitado não foi encontrado no servidor.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que o recurso solicitado não foi encontrado no servidor.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that the requested resource could not be found on the server.
    /// </summary>
    /// <returns>
    /// Message indicating that the requested resource could not be found on the server.
    /// </returns>
    {$ENDIF}
    class function NO_RESOURCE_FOUND: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que a informação específica é obrigatória e não foi fornecida.
    /// </summary>
    /// <param name="AField">
    /// O campo que deve ser fornecido.
    /// </param>
    /// <returns>
    /// Mensagem indicando que a informação é obrigatória e não foi fornecida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that specific information is required and not provided.
    /// </summary>
    /// <param name="AField">
    /// The field that needs to be provided.
    /// </param>
    /// <returns>
    /// Message indicating that the information is required and not provided.
    /// </returns>
    {$ENDIF}
    class function REQUIRED_INFORMATION(AField: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que a classe específica não foi instanciada.
    /// </summary>
    /// <param name="AClass">
    /// A classe que não foi instanciada.
    /// </param>
    /// <returns>
    /// Mensagem indicando que a classe não foi instanciada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that the specific class has not been instantiated.
    /// </summary>
    /// <param name="AClass">
    /// The class that has not been instantiated.
    /// </param>
    /// <returns>
    /// Message indicating that the class has not been instantiated.
    /// </returns>
    {$ENDIF}
    class function UNINSTANTIATED_CLASS(AClass: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que nenhuma classe foi instanciada.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que nenhuma classe foi instanciada.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that no class has been instantiated.
    /// </summary>
    /// <returns>
    /// Message indicating that no class has been instantiated.
    /// </returns>
    {$ENDIF}
    class function UNINSTANTIATED_CLASS: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Mensagem indicando que uma informação necessária não foi fornecida.
    /// </summary>
    /// <returns>
    /// Mensagem indicando que uma informação necessária não foi fornecida.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Message indicating that required information has not been provided.
    /// </summary>
    /// <returns>
    /// Message indicating that required information has not been provided.
    /// </returns>
    {$ENDIF}
    class function REQUIRED_INFORMATION: string; overload;


  end;
implementation
uses
  {$IfDef FPC}
  SysUtils
  {$Else}
  System.SysUtils
  {$EndIf}
  ;

class function TSetup4DUtilityConstantes.FOREGIN_KEY_FAILS: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Ops, encontramos um problema. ' +
              'Os dados que você está tentando usar já estão em uso em ' +
              'outra parte do sistema. Por favor, ' +
              'verifique os dados e tente novamente.';
{$ELSE}
  Result := 'Oops, we''ve encountered an issue. The data you''re ' +
              'trying to use is already in use elsewhere in the system. ' +
              'Please verify the data and try again.' ;
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.INVALID_BOOLEAN: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Valor booleano inválido ou não reconhecido.';
{$ELSE}
  Result := 'Invalid or unrecognized boolean value.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.INVALID_DATA: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Os dados fornecidos são inválidos.';
{$ELSE}
  Result := 'The provided data is invalid.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.INVALID_NUMEBER: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Número fornecido é inválido ou não reconhecido.';
{$ELSE}
  Result := 'The provided number is invalid or not recognized.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.MAX_USER_CONNECTIONS: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Estamos realizando uma manutenção neste momento. ' +
              'Por favor, aguarde um pouco e tente novamente mais tarde.';
{$ELSE}
  Result := 'We are currently undergoing maintenance. ' +
              'Please wait a moment and try again later.';
{$ENDIF}
end;
class function TSetup4DUtilityConstantes.MESSAGE_GENERIC: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Ops!!! Estamos temporariamente indisponível. ' + sLineBreak +
              'Tente novamente mais tarde.';
{$ELSE}
  Result := 'Oops!!! We are temporarily unavailable. ' + sLineBreak +
              'Please try again later.';
{$ENDIF}

end;

class function TSetup4DUtilityConstantes.MESSAGE_GENERIC
  (const AMessage: string): string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Ops!!! Estamos temporariamente indisponível, ' +
              'mensagem: %s. Tente novamente mais tarde.';
{$ELSE}
  Result := 'Oops!!! We are temporarily unavailable, ' +
              'message: %s. Please try again later.';
{$ENDIF}
  Result := Format(Result, [AMessage])
end;

class function TSetup4DUtilityConstantes.NO_KEY: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Chave ausente ou não encontrada.';
{$ELSE}
  Result := 'Key missing or not found.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.NO_DATA_FOUND: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Nenhuma informação localizada.';
{$ELSE}
  Result := 'No information located.';
{$ENDIF}
end;


class function TSetup4DUtilityConstantes.NO_RECORDS_FOUND: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Nenhum registro localizado.';
{$ELSE}
  Result := 'No records found.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.NO_RESOURCE_FOUND: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'O recurso solicitado não foi encontrado no servidor.';
{$ELSE}
  Result := 'The requested resource could not be found on the server.';
{$ENDIF}

end;

class function TSetup4DUtilityConstantes.REQUIRED_INFORMATION(
  AField: string): string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'A informação [%s] é obrigatória. Por favor, informe-a.';
{$ELSE}
  Result := 'The information [%s] is required. Please submit it.';
{$ENDIF}
  Result := Format(Result, [AField])
end;
class function TSetup4DUtilityConstantes.UNINSTANTIATED_CLASS(
  AClass: string): string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'A classe %s não foi instanciada.';
{$ELSE}
  Result := 'The %s class has not been instantiated.';
{$ENDIF}
  Result := Format(Result, [AClass])
end;

class function TSetup4DUtilityConstantes.UNINSTANTIATED_CLASS: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'A classe não foi instanciada.';
{$ELSE}
  Result := 'The class has not been instantiated.';
{$ENDIF}
end;

class function TSetup4DUtilityConstantes.REQUIRED_INFORMATION: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'Informação necessária não fornecida. Por favor, informe-a.';
{$ELSE}
  Result := 'Required information not provided. Please provide it..';
{$ENDIF}
end;
end.
