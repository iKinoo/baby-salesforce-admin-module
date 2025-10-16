**Nombre del Caso de Uso:** Gestionar Notificación de Recordatorio

**ID:** CU-VE-010

**Actor(es):** Promotor de Ventas, Sistema

**Descripción:** El Sistema notifica proactivamente al Agente de Ventas sobre una tarea de seguimiento que requiere su atención. Esto ocurre cuando llega la fecha/hora de una tarea programada o cuando se cumple una regla de inactividad (ej. 3 días sin registrar interacciones en una oportunidad). El Agente debe procesar esta notificación para mantener el flujo de ventas activo.

**Precondiciones:**

* El Agente de Ventas está autenticado en el sistema.
* Una condición de recordatorio se ha cumplido (tarea programada vencida o regla de inactividad activada).
* El mecanismo de notificaciones del sistema está activo.

**Flujo Básico (Camino Feliz):**

1. El Sistema detecta que una tarea de seguimiento está vencida o que una oportunidad ha estado inactiva por el tiempo configurado.
2. El Sistema genera una notificación visible para el Agente responsable, mostrando el motivo del recordatorio y la oportunidad asociada.
3. El Agente de Ventas atiende la notificación y realiza la acción correspondiente fuera del sistema (ej. llama al cliente).
4. El Agente interactúa con la notificación para indicar que la tarea ha sido completada.
5. El sistema marca la tarea/recordatorio como "Completado".
6. El sistema (opcionalmente) solicita al Agente registrar la interacción resultante en la bitácora de la oportunidad (invocando [CU-VE-006](https://alumnosuady.sharepoint.com/sites/proyectofca-ec/Shared%20Documents/Casos%20de%20uso/Ventas/CU-VE-006%20Registrar%20Interacci%C3%B3n%20con%20Oportunidad.docx)).
7. El sistema elimina la notificación de la lista de alertas pendientes del Agente.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** Posponer el recordatorio: El Agente no puede atender la tarea en ese momento y solicita posponerla. El sistema le solicita una nueva fecha y hora y reagenda el recordatorio para el futuro. La notificación actual se elimina.
* **Alternativa B:** Descartar el recordatorio: El Agente considera que la notificación ya no es relevante y solicita descartarla. El sistema marca la tarea como "Descartada" y la elimina de las alertas pendientes, pudiendo solicitar un motivo.
* **Excepción A:** Falla al actualizar la tarea: Si el Agente intenta completar o posponer la tarea y el sistema no puede procesar la solicitud por un error interno, el sistema informa del fallo y la notificación permanece activa para no perder la tarea.

**Post-condiciones:**

* **En caso de éxito (Tarea Completada):**
  + El recordatorio se marca como "Completado".
  + La notificación activa desaparece.
  + Se ha registrado una nueva interacción en la bitácora de la oportunidad (si aplica).
* **En caso de éxito (Tarea Pospuesta):**
  + El recordatorio se actualiza con una nueva fecha/hora de vencimiento.
* **En caso de fallo:**
  + El estado del recordatorio no se modifica y la notificación permanece visible.

**Notas/Comentarios (Opcional):**

* El período de inactividad para generar recordatorios automáticos (ej. 3 días) debe ser un parámetro configurable por el administrador del sistema.
* El método de notificación (alerta en la app, correo electrónico, etc.) es una decisión de diseño, pero el sistema debe garantizar que el Agente sea notificado de manera efectiva.