**Nombre del Caso de Uso:** Aprobar/Gestionar Solicitudes de Inscripción

**ID:** CU-GE-007

**Actor(es):** Coordinación

**Descripción:** La coordinación revisa las solicitudes de inscripción enviadas por el Público General para un evento, y procede a aprobarlas, rechazarlas, o solicitar información adicional, gestionando así la lista final de participantes.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.
* Existen solicitudes de inscripción con el estado "Pendiente de Revisión" o "Información Requerida" para uno o más eventos.

**Flujo Básico (Camino Feliz):**

1. La **Coordinación** accede a la sección de "Gestión de Eventos" y selecciona la opción "Gestión de Solicitudes de Inscripción" o similar.
2. El **sistema** muestra una lista de eventos con solicitudes pendientes, o una vista consolidada de todas las solicitudes pendientes de revisión.
3. La **Coordinación** selecciona un evento o una solicitud específica para revisar.
4. El **sistema** muestra los detalles completos de la solicitud, incluyendo la información del usuario, los datos proporcionados para el evento y los documentos cargados (si aplica).
5. La **Coordinación** revisa la información y los documentos para determinar si la solicitud cumple con los criterios.
6. **Si decide aprobar la solicitud:**
   1. La **Coordinación** hace clic en "Aprobar Solicitud".
   2. El **sistema** verifica el cupo disponible del evento para participantes inscritos.
   3. El **sistema** actualiza el estado de la solicitud a "Aprobada".
   4. El **sistema** registra al usuario como participante "Inscrito" en el evento (o "Inscrito - Pendiente de Pago" si el evento tiene costo y el pago se gestiona después de la aprobación).
   5. El **sistema** notifica al usuario por correo electrónico sobre la aprobación de su solicitud. Si el evento tiene costo, la notificación incluye instrucciones para el pago (relación con CU-PG-006: Realizar Pago de Inscripción, o un nuevo flujo de "Realizar Pago de Solicitud Aprobada").
7. **Si decide rechazar la solicitud:**
   1. La **Coordinación** hace clic en "Rechazar Solicitud".
   2. El **sistema** solicita a la Coordinación que proporcione un motivo de rechazo.
   3. La **Coordinación** ingresa el motivo y confirma el rechazo.
   4. El **sistema** actualiza el estado de la solicitud a "Rechazada".
   5. El **sistema** notifica al usuario por correo electrónico sobre el rechazo de su solicitud, incluyendo el motivo.
8. **Si decide solicitar más información:**
   1. La **Coordinación** hace clic en "Solicitar Más Información".
   2. El **sistema** solicita a la Coordinación que especifique la información adicional necesaria.
   3. La **Coordinación** ingresa el detalle de la información requerida y confirma la acción.
   4. El **sistema** actualiza el estado de la solicitud a "Información Requerida".
   5. El **sistema** notifica al usuario por correo electrónico sobre la información adicional requerida, con instrucciones para proporcionarla.

**Flujos Alternativos y Excepciones:**

* **Alternativa A (Cancelar Revisión):** La Coordinación decide no procesar la solicitud en ese momento y vuelve a la lista de solicitudes.
* **Excepción B (Evento sin cupo al aprobar):** Si al momento de aprobar, el cupo del evento ya fue llenado por otras aprobaciones o asignaciones.
  + El **sistema** informa a la Coordinación que "El evento ha alcanzado su límite de cupo" y no permite la aprobación (a menos que se presente la opción de forzar cupo, que sería un sub-flujo excepcional y con permisos específicos).
* **Excepción C (Solicitud ya procesada):** La Coordinación intenta procesar una solicitud que ya ha sido aprobada, rechazada o ya tiene información requerida.
  + El **sistema** informa que "Esta solicitud ya ha sido procesada o está en otro estado".
* **Excepción D (Error de Sistema):** Ocurre un error inesperado al intentar procesar la solicitud.
  + El **sistema** muestra un mensaje de error genérico.

**Post-condiciones:**

* El estado de la solicitud de inscripción ha cambiado (Aprobada, Rechazada, Información Requerida).
* Si la solicitud fue aprobada, el usuario está ahora registrado como participante del evento (posiblemente pendiente de pago).
* Se ha actualizado el conteo de participantes del evento.
* El usuario ha sido notificado sobre la decisión de la coordinación.