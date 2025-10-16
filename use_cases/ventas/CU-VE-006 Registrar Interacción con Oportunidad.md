**Nombre del Caso de Uso:** Registrar Interacción con Oportunidad

**ID:** CU-VE-006

**Actor(es):** Promotor de Ventas

**Descripción:** El Agente de Ventas registra en una bitácora cada contacto, evento o "momento" relevante que ocurre con una oportunidad. Estas interacciones se registran como “estados” que forman un historial cronológico, permitiendo un seguimiento claro y eficiente sin seguir una secuencia rígida.

**Precondiciones:**

* El Agente de Ventas está autenticado en el sistema.
* Existe una oportunidad activa asignada al Agente.

**Flujo Básico (Camino Feliz):**

1. El Agente de Ventas se encuentra viendo el detalle de una oportunidad.
2. Hace clic en una opción como "Agregar Interacción" o "Registrar Momento".
3. El sistema presenta un formulario o menú desplegable con la lista de interacciones predefinidas (ej. "Se le contacta por primera vez vía WhatsApp", "Se le manda correo al cliente", etc.).
4. El Agente selecciona la interacción que corresponde a la acción que realizó.
5. (Opcional pero recomendado) El Agente añade una nota o comentario con detalles específicos (ej. "Se envió el folleto del curso de verano y el plan de pagos").
6. El Agente confirma el registro.
7. El sistema guarda la interacción como una nueva entrada en la bitácora de la oportunidad, con la etiqueta seleccionada, la nota, el nombre del agente y la fecha/hora actual.
8. La ficha de la oportunidad se actualiza para mostrar la nueva interacción en el historial.

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* **Alternativa A:** Registrar una interacción que cierra la oportunidad: Si el Agente selecciona una interacción final como "Venta Cerrada: Pagó el Curso" o "Venta Perdida: Cliente declina", el sistema, además de registrar el momento (paso 7), actualiza el estado general de la oportunidad a "Ganada" o "Perdida". La oportunidad puede volverse de solo lectura.
* **Alternativa B:** Registrar la necesidad de un seguimiento futuro: Si el Agente selecciona "Cliente solicita que se le llame en otra ocasión", el sistema, después de registrar el momento, puede proactivamente abrir el formulario para "Agendar Tarea de Seguimiento" (el siguiente caso de uso) para que el Agente no olvide programarlo.
* **Alternativa C:** El usuario cancela la operación: El Agente abre el formulario de interacción, pero decide cancelar. El sistema cierra el formulario sin guardar ningún cambio.
* **Excepción A:** Intento de registro en oportunidad cerrada: Si el Agente intenta registrar una nueva interacción en una oportunidad que ya está marcada como "Ganada" o "Perdida", el sistema no lo permite y muestra un mensaje indicando que la oportunidad está cerrada.

**Post-condiciones:**

* **En caso de éxito:**
  + Se ha añadido una nueva entrada al historial de la oportunidad.
  + Si la interacción fue de cierre (A1), el estado de la oportunidad ha sido actualizado a "Ganada" o "Perdida".
  + La bitácora refleja un registro claro de la acción realizada para futuras consultas.
* **En caso de fallo o cancelación:**
  + No se registra ninguna nueva interacción y la oportunidad permanece sin cambios.