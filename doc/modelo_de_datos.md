# Modelo datos

A continuación se describe el escenario del caso de uso diseñado e implementado para el reto: los usuarios o roles, los "assets" o bienes que se almacenarán en la plataforma blockchain, así como las transacciones que permitirán registrar las operaciones que se hagan sobre ellos.

# Usuarios o roles

## _Participante_

Persona que utiliza el sistema para recibir Certificados y EduTokens por realizar actividades, así como para gastar dichos EduTokens en los comercios del campus que se hayan asociado a la iniciativa.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_string_|email|Identificación del alumno en la aplicación|
|_string_|nia|Número de identificación del alumnado en el sistema de la universidad|
| _Certificado[]_ | certificados | Certificados obtenidos por el alumno|

## _ResponsableActividad_

Persona responsable de una actividad que emite certificados y EduTokens.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_string_|email|Identificación de la persona responsable de una actividad en la aplicación|
|_string_|dni|Número de identificación de la persona responsable en el sistema de la universidad|

## _ResponsableComercial_

Persona responsable de un comercio de la universidad asociado a la iniciativa y que gestiona el consumo de EduTokens. Por ejemplo, el responsable de la librería o la cafetería.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_string_|email|Identificación del responsable comercial en la aplicación|
|_string_|dni|Número de identificación de la persona responsable de un determinado comercio en la universidad|

# Assets

## _Certificado_

Documento que se emite a los participantes en actividades.

|Tipo|Nombre|Detalles
|:--|:--|:--
| _string_ | idCertificado | Identificación del certificado en el sistema de la universidad |
| _Participante_ | participante | Participante propietario del certificado |
| _ResponsableActividad_ | responsableActividad | Persona responsable de la actividad |
|_string_|idActividad|Identificación de la actividad que se certifica|
|_string_|nombreActividad|Nombre de la actividad que se certifica|
|_string_|descripcionActividad|Descripción de la actividad que se certifica|
| _int_ | ectsActividad | Número de ECTSs asociados a la actividad|
| _int_ | valorEduToken | Valor del EduToken asociado a la actividad|
| _string[]_ | competenciasActividad | Lista de competencias trabajadas en la actividad |

## _EduToken_

Moneda educativa que se emite tras participar en actividades y que se puede consumir en los comercios asociados a la iniciativa en la universidad.

|Tipo|Nombre|Detalles
|:--|:--|:--
| _string_ | idEduToken | Identificación del EduToken |
| _Participante_ | participante | Participante propietario del EduToken |
| _int_ | valorEduToken | Valor del EduToken |

# Transacciones

## `EmitirCertificadoEduToken` {-}

Da de alta un Certificado y un EduToken en la plataforma blockchain, estableciendo como ResponsableActividad a la persona que ejecuta la transacción y rellenando el resto de atributos del certificado con todos los parámetros necesarios.

|||
|:--|:--|
| _string_ | idCertificado | Identificación del certificado en el sistema de la universidad |
| _Participante_ | participante | Participante propietario del certificado |
| _ResponsableActividad_ | responsableActividad | Persona responsable de la actividad |
|_string_|idActividad|Identificación de la actividad que se certifica|
|_string_|nombreActividad|Nombre de la actividad que se certifica|
|_string_|descripcionActividad|Descripción de la actividad que se certifica|
| _int_ | ectsActividad | Número de ECTSs asociados a la actividad|
| _string[]_ | competenciasActividad | Lista de competencias trabajadas en la actividad |
| _string_ | idEduToken | Identificación del EduToken |
| _int_ | valorEduToken | Valor del EduToken |

## `TransferirEduTokens` {-}

EduTokens que transfiere un participante de su monedero al del comercio cuando realiza una compra o gasto, estableciendo como emisor al participante que ejecuta la transacción y como receptor al responsable del comercio que gestiona el monedero del comercio.

|||
|:--|:--|
|  _EduToken[]_ | Lista de Edutokens que se transfieren | 
| _Participante_ | emisor | Participante que transfiere Edutokens |
| _ResponsableComercial_ | receptor | Persona responsable del comercio en el que se gastan los EduTokens |


