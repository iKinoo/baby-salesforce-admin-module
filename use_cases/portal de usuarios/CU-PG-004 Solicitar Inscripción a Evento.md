**Nombre del Caso de Uso:** Solicitar Inscripción a Evento

**ID:** CU-PG-004

**Actor(es):** Interesado

**Descripción:** El interesado expresa su interés en un evento disponible y envía una solicitud formal de inscripción, que requiere la revisión y posible aprobación por parte de un administrativo antes de confirmar su participación.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).
* Existe al menos un evento disponible para el cual se pueden enviar solicitudes de inscripción (que no haya superado su fecha límite o cupo *de solicitudes* si aplica).

**Flujo Básico (Camino Feliz):**

1. El **interesado** navega por la sección de "Eventos Disponibles" o "Catálogo de Eventos".
2. El **sistema** muestra una lista de eventos con información clave (nombre, fechas, breve descripción, precio, estado de solicitud, etc.).
3. El **interesado** selecciona un evento de interés haciendo clic en "Ver Detalles" o "Solicitar Inscripción".
4. El **sistema** muestra la página de detalles del evento, incluyendo información completa, temario, requisitos de inscripción (documentos, información adicional).
5. El **interesado** hace clic en "Solicitar Inscripción".
6. El **sistema** puede mostrar un formulario pre-llenado con los datos del perfil del usuario (CU-PG-003b) y campos adicionales si el evento lo requiere.
7. El **interesado** confirma o actualiza su información, y carga los documentos requeridos (relación con CU-PG-007) para la solicitud, si los hay.
8. El **interesado** revisa los términos de la solicitud y hace clic en "Enviar Solicitud".
9. El **sistema** realiza validaciones de la solicitud (ej., campos completos, documentos adjuntos).
10. Si la información es válida, el **sistema** registra la solicitud de inscripción, asociándola al usuario y al evento, y establece su estado inicial como "Pendiente de Revisión" o "Pendiente de Aprobación".
11. El **sistema** muestra una confirmación al usuario de que su solicitud ha sido enviada y está en revisión.
12. El **sistema** envía una notificación por correo electrónico al usuario confirmando la recepción de la solicitud.

**Flujos Alternativos y Excepciones:**

* **Alternativa A (Evento sin cupo de solicitudes/período de solicitud cerrado):** El evento ha alcanzado su capacidad máxima de solicitudes o el período para solicitarlas ha finalizado.
  + El **sistema** informa al usuario que "No se aceptan más solicitudes para este evento" o "El período de solicitud ha finalizado."
* **Excepción B (Datos Incompletos o Inválidos en el formulario de solicitud):** El usuario no completa todos los campos obligatorios o los llena con un formato incorrecto.
  + El **sistema** resalta los campos con errores y proporciona mensajes de validación específicos.
* **Excepción C (Documentos Requeridos no cargados):** Si la solicitud requiere documentos y el usuario no los carga o interrumpe el proceso.
  + El **sistema** no permite enviar la solicitud y notifica al usuario que debe cargar los documentos.
* **Excepción D (Error de Sistema):** Ocurre un error inesperado durante el envío de la solicitud.
  + El **sistema** muestra un mensaje de error genérico (ej., "Ocurrió un error al enviar su solicitud. Por favor, intente de nuevo más tarde.")

**Post-condiciones:**

* Se ha creado un registro de la solicitud de inscripción del usuario para el evento.
* El estado de la solicitud se establece como "Pendiente de Revisión" o "Pendiente de Aprobación".
* El usuario está a la espera de una respuesta del administrativo.