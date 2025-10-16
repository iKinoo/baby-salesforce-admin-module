**Nombre del Caso de Uso:** Volver a Enviar Solicitud (tras rechazo o información requerida)

**ID:** CU-PG-008

**Actor(es):** Interesado

**Descripción:** El interesado modifica y reenvía una solicitud de inscripción que previamente fue rechazada por un administrativo o para la cual se solicitó información adicional, con el objetivo de que sea reconsiderada.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).
* El usuario tiene una solicitud de inscripción con el estado "Rechazada" o "Información Requerida".

**Flujo Básico (Camino Feliz):**

1. El **usuario** accede a su sección de "Mis Solicitudes" (relación con CU-PG-XXX: Consultar Estado de mis Solicitudes/Inscripciones).
2. El **sistema** muestra la lista de solicitudes, incluyendo aquellas con estado "Rechazada" o "Información Requerida".
3. El **usuario** selecciona la solicitud que desea modificar y reenviar, haciendo clic en "Editar y Reenviar" o "Proporcionar Información Adicional".
4. El **sistema** carga el formulario de solicitud pre-llenado con los datos anteriores, resaltando los campos que necesitan corrección o la información adicional solicitada por el administrativo.
5. El **usuario** realiza las correcciones necesarias y/o carga los documentos adicionales (relación con CU-PG-007).
6. El **usuario** hace clic en "Reenviar Solicitud".
7. El **sistema** valida la información actualizada.
8. Si la información es válida, el **sistema** actualiza la solicitud existente y cambia su estado a "Pendiente de Revisión" (o "Reenviada para Revisión").
9. El **sistema** muestra una confirmación al usuario de que la solicitud ha sido reenviada.
10. El **sistema** notifica al administrativo que una solicitud ha sido reenviada para revisión.

**Flujos Alternativos y Excepciones:**

* **Alternativa A (Evento no disponible):** Si el evento original ya no está disponible para solicitudes (ej., cupo lleno, fecha límite final).
  + El **sistema** informa al usuario que "No es posible reenviar la solicitud para este evento en este momento."
* **Excepción B (Campos Obligatorios Faltantes/Inválidos):** El usuario no corrige los errores o no proporciona la información solicitada.
  + El **sistema** resalta los campos con errores y no permite el reenvío hasta que se corrijan.
* **Excepción C (Error de Sistema):** Ocurre un error inesperado durante el reenvío.
  + El **sistema** muestra un mensaje de error genérico.

**Post-condiciones:**

* La solicitud de inscripción ha sido actualizada y su estado ha cambiado a "Pendiente de Revisión" o "Reenviada para Revisión".
* El administrativo ha sido notificado para una nueva revisión.