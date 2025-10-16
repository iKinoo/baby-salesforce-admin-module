**Nombre del Caso de Uso:** Consultar recordatorios

**ID:** CU-VE-009

**Actor(es):** Promotor de Ventas

**Descripción:** El usuario accede a una vista centralizada para revisar sus tareas de seguimiento (recordatorios), tanto las que han sido agendadas manualmente como las que el sistema ha generado automáticamente. Esto le permite planificar su trabajo y asegurarse de no omitir ninguna actividad importante.

**Precondiciones:**

* El usuario está autenticado en el sistema.
* Existen tareas de seguimiento (recordatorios) asignadas al usuario o a su equipo.

**Flujo Básico (Camino Feliz):**

1. El Agente de Ventas inicia la consulta de su panel de recordatorios.
2. El sistema presenta por defecto una lista de los recordatorios programados para el día actual.
3. Para cada recordatorio, el sistema muestra la información clave: el nombre de la oportunidad asociada, el motivo del recordatorio (ej. "Llamada programada" o "Sin actividad por 3 días"), y la fecha/hora programada.
4. El Agente de Ventas aplica filtros para visualizar otros periodos:
   * **Pasados:** Para ver tareas vencidas que no fueron completadas.
   * **Próximos:** Para ver tareas programadas para el futuro.
5. El sistema actualiza la lista para mostrar los recordatorios que coinciden con el filtro seleccionado.
6. El Agente puede seleccionar cualquier recordatorio de la lista para ser dirigido a la ficha de la oportunidad correspondiente y tomar acción.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** Vista del jefe de Área: Si el actor es un Jefe de Área, el sistema le ofrece la capacidad adicional de filtrar el panel de recordatorios por un Agente de Ventas específico o para ver las tareas de todo el equipo.
* **Alternativa B:** No existen recordatorios: Si no hay recordatorios que coincidan con los filtros aplicados, el sistema informa claramente al usuario que no hay tareas pendientes para esa vista.
* **Excepción A:** Error al consultar los datos: Si ocurre un problema al obtener la información de los recordatorios, el sistema informa al usuario del error y no presenta la lista.

**Post-condiciones:**

* **En caso de éxito:**
  + Se ha presentado al usuario la lista de recordatorios solicitada.
  + No se realizan modificaciones en los datos de las tareas ni de las oportunidades (es una operación de solo lectura).
* **En caso de fallo:**
  + El sistema permanece en su estado anterior y no se realizan modificaciones de datos.

**Notas/Comentarios (Opcional):**

* Es recomendable que los recordatorios vencidos ("Pasados") se muestren con un distintivo visual (ej. color rojo) para indicar urgencia.