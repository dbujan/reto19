# Modelo datos

Detalla los participantes y transacciones del reto

# Participantes

## _Alumno_

Persona que utiliza el sistema para apuntarse a las actividades y consume los NFT.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|email|Identificación del alumno en la aplicación|
|_String_|Contraseña|Contraseña en la aplicación|

## _Profesor_

Persona responsable de las actividades que propone. Registra las actividades y las valida.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|email|Identificación del profesor en la aplicación|
|_String_|Contraseña|Contraseña en la aplicación|


## _Responsable comercial_

Persona responsable de recibir los NFT de los alumnos cuando quieren canjearlos. Por ejemplo, el responsable de la biblioteca.

|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|email|Identificación del responsable en la aplicación|
|_String_|Contraseña|Contraseña en la aplicación|

# Assets


## _Certificado_

Documento que se emite a los alumnos con la información relevante

|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|Nombre|Nombre de la actividad que se certifica o tipo de actividad|
| _String_ | ID   | Identificación del certificado |
| _Integer_ | ECTS   | Número de ECTSs |
| _String[]_ | Competencias asociadas   | Competencias trabajadas en la actividad |
| _Profesor_ | Profesor   | Profesor encargado de esa actividad |


## _EduToken_

Monedero que tiene cada participante con sus datos

|Tipo|Nombre|Detalles
|:--|:--|:--
| _String_ | ID   | Identificación del monedero) |
|_String_|email| Identificación del propietario|
| _Integer_ | Tokens   | Cantidad de tokens recibidos |

# Transacciones


## `EmitirCertificado` {-}

Dar de alta una actividad en el sistema

|||
|:--|:--|
|  `String IDActividad` | ID de la actividad a registrar| 
|  `String email` | Email de la persona responsable| 
|  `Int cantidad` | Cantidad de EduTokens| 




## `TransferirEdutokens` {-}

NFTs que reciben los responsables comerciales
|||
|:--|:--|
|  `String IDToken` | ID del Token| 
|  `String emailR` | Email del responsable comercial|
|  `String emailA` | Email alumno|
|  `Int cantidad` | Cantidad de EduTokens| 

