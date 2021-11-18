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

## _Actividad_

Cada una de las actividades que proponen los profesores


|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|Nombre|Nombre de la actividad|
| _String_ | ID   | Identificación de la actividad (número de 3 dígitos) |
| _Integer_ | ECTS   | Número de ECTSs de la actividad |
| _Profesor_ | Profesor   | Profesor encargado de esa actividad |


## _Certificado_

Documento que se emite a los alumnos con la información relevante

|Tipo|Nombre|Detalles
|:--|:--|:--
|_String_|Nombre|Nombre de la actividad que se certifica|
| _String_ | ID   | Identificación del certificado (número de 3 dígitos) |
| _Integer_ | ECTS   | Número de ECTSs |
| _Integer_ | IDToken   | Token recibido (NFT) |

# Transacciones


## `RegistrarActividad` {-}

Dar de alta una actividad en el sistema

|||
|:--|:--|
|  `String IDActividad` | ID de la actividad a registrar| 
|  `String email` | Email de la persona responsable| 

## `ApuntarseActividad` {-}

Apunta a un alumno en una actividad
|||
|:--|:--|
|  `String IDActividad` | ID de la actividad| 
|  `String email` | Email de la persona apuntada| 


## `ValidarActividad` {-}

Valida una actividad a un alumno cuando la completa
|||
|:--|:--|
|  `String IDActividad` | ID de la actividad a validar| 
|  `String email` | Email de la persona validada| 

## `ConsumirNFT` {-}

Consume el NFT cuando en la recompensa que desee el aljumno
|||
|:--|:--|
|  `String IDToken` | ID del Token| 
|  `String emailA` | Email del alumno|
|  `String emailR` | Email de la persona responsable| 