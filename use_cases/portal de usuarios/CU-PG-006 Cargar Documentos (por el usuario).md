**Nombre del Caso de Uso:** Cargar Documentos (por el usuario)

**ID:** CU-PG-006

**Actor(es):** Interesado

**Descripción:** El interesado sube documentos requeridos por el sistema como parte de una solicitud de inscripción a un evento, o en respuesta a una solicitud de información adicional por parte del administrativo.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).
* El sistema ha solicitado la carga de uno o más documentos como parte de una "Solicitud de Inscripción" (CU-PG-004), o un administrativo ha solicitado información adicional (via CU-GE-007).
* El usuario tiene el documento digitalizado listo para subir (ej. en su dispositivo).

**Flujo Básico (Camino Feliz):**

1. El **usuario** accede a la sección donde se solicitan los documentos (ej. durante el flujo de "Solicitar Inscripción" para un evento específico, o en la sección de "Mis Solicitudes" si hay una solicitud de información adicional).
2. El **sistema** muestra una interfaz de carga de archivos (ej. un botón "Seleccionar Archivo" o un área de arrastrar y soltar) y, opcionalmente, una lista de los tipos de documentos requeridos (ej. "Identificación Oficial", "Comprobante de Estudios").
3. El **usuario** selecciona el archivo desde su dispositivo.
4. El **sistema** puede mostrar una barra de progreso de la carga.
5. Una vez completada la carga, el **sistema** almacena el documento en un repositorio seguro y lo asocia con la solicitud de inscripción o el perfil del usuario.
6. El **sistema** confirma la carga exitosa del documento y actualiza el estado relevante de la solicitud (ej., si estaba en "Información Requerida", ahora puede volver a "Pendiente de Revisión").
7. El **sistema** puede notificar al administrativo que se ha cargado un nuevo documento/información para una solicitud.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** El usuario decide cancelar la carga del documento en cualquier momento.
* **Excepción B (Formato de Archivo No Permitido):** El usuario intenta subir un archivo con un formato no aceptado (ej. .exe, .zip cuando solo se permiten PDF, JPG, PNG).
  + El **sistema** muestra un mensaje de error indicando los formatos permitidos.
* **Excepción C (Tamaño del Archivo Excedido):** El archivo subido excede el límite de tamaño máximo configurado.
  + El **sistema** informa al usuario que "El archivo es demasiado grande. El tamaño máximo permitido es [X] MB."
* **Excepción D (Error de Conexión/Sistema):** Ocurre un problema de red o un error interno del sistema durante la carga del archivo.
  + El **sistema** muestra un mensaje de error genérico y sugiere reintentar.
* **Excepción E (Documento Duplicado/Reemplazo):** El usuario intenta cargar el mismo documento que ya subió o una versión actualizada.
  + El **sistema** notifica al usuario que el documento ya existe o pregunta si desea reemplazarlo.

**Post-condiciones:**

* El documento ha sido cargado y almacenado de forma segura en el sistema.
* El documento está asociado a la solicitud de inscripción (o al perfil del usuario si es un documento general de perfil).
* La solicitud de inscripción puede haber cambiado de estado (ej., de "Información Requerida" a "Pendiente de Revisión").