**Nombre del Caso de Uso:** Agendar Tarea de Seguimiento

**ID:** CU-VE-007

**Actor(es):** Promotor de Ventas

**Descripción:** El Agente de Ventas registra una actividad futura y programada para una oportunidad específica, como una llamada o un envío de correo, para garantizar que el seguimiento se realice en el momento acordado con el cliente.

**Precondiciones:**

* El Agente de Ventas está autenticado en el sistema.
* Existe una oportunidad activa asignada al Agente.

**Flujo Básico (Camino Feliz):**

1. El Agente de Ventas inicia la creación de una nueva tarea de seguimiento asociada a una oportunidad.
2. El sistema solicita la información requerida para la tarea.
3. El Agente de Ventas proporciona los detalles de la tarea: fecha, hora, medio de contacto (llamada, correo, WhatsApp, etc.) y una descripción del objetivo de la tarea.
4. El Agente solicita al sistema que guarde la nueva tarea.
5. El sistema valida que los datos proporcionados sean coherentes y completos (ej. la fecha no puede ser en el pasado).
6. El sistema crea un registro para la nueva tarea, vinculándolo a la oportunidad y al agente responsable.
7. El sistema ajusta la temporalidad de los recordatorios por inactividad respetando el tiempo de espera hasta que el contacto con el cliente se dé por la tarea programada.
8. El sistema confirma al Agente que la tarea ha sido agendada exitosamente.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** Modificar una tarea existente: El Agente de Ventas selecciona una tarea ya programada e inicia su modificación. El sistema le permite actualizar los detalles y guarda los cambios.
* **Alternativa B:** El Agente de Ventas cancela la creación: Durante el proceso de creación, el Agente decide no continuar. El sistema descarta toda la información proporcionada y no realiza ningún cambio.
* **Excepción A:** Información de tarea inválida: Si los datos proporcionados por el Agente son inválidos o están incompletos, el sistema rechaza la creación e informa al Agente sobre los errores específicos que deben ser corregidos para poder continuar.

**Post-condiciones:**

* **En caso de éxito:**
  + Existe un nuevo registro de tarea en el sistema, asociado a la oportunidad y al Agente.
  + El sistema está preparado para generar una notificación o recordatorio para el Agente en la fecha y hora programadas.
  + La bitácora de la oportunidad puede reflejar que se ha agendado una tarea de seguimiento.
* **En caso de fallo o cancelación:**
  + No se crea ningún registro de tarea nuevo. El estado de la oportunidad no se ve afectado.

**Notas/Comentarios (Opcional):**

* El sistema debe contar con un mecanismo de notificaciones fiable para alertar al Agente cuando una tarea está por vencer o ha vencido.