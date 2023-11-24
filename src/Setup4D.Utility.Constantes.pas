unit Setup4D.Utility.Constantes;

interface

type
  TSetup4DUtilityConstantes = class
  public
    class function MAX_USER_CONNECTIONS: string;
    class function FOREGIN_KEY_FAILS: string;
    class function NO_RECORDS_FOUND: string;
    class function INVALID_NUMEBER: string;
    class function NO_KEY : string;
    class function REQUIRED_INFORMATION: string; overload;
    class function REQUIRED_INFORMATION(AField: string): string; overload;
    class function MESSAGE_GENERIC(const AMessage: string): string;
  end;

implementation

uses
  {$IfDef FPC}
  SysUtils
  {$Else}
  System.SysUtils
  {$EndIf}
  ;

{ TSetup4DUtilityConstantes }

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

class function TSetup4DUtilityConstantes.INVALID_NUMEBER: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'O valor informado não é um número válido.';

{$ELSE}
  Result := 'The value provided is not a valid number.';

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
  Result := 'Chave inexistente.';

{$ELSE}
  Result := 'No Key.';
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

class function TSetup4DUtilityConstantes.REQUIRED_INFORMATION: string;
begin
{$IFDEF HAS_PORTUGUES}
  Result := 'A informação é obrigatória. Por favor, informe-a.';
{$ELSE}
  Result := 'The information is required. Please submit it.';
{$ENDIF}
end;

end.
