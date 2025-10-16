**Nombre del Caso de Uso:** Asignar Leads

**ID:** CU-VE-004

**Actor(es):** Responsable de Ventas

**Descripción:** El jefe de área distribuye los leads entrantes entre los Agentes de Ventas (Promotores) para que realicen el seguimiento. Esta acción puede realizarse de forma individual o masiva para optimizar el flujo de trabajo.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema y tiene los permisos de "Jefe de Área".
* Existen leads con el estado "Sin asignar" en el sistema.
* Existen Agentes de Ventas activos en el sistema a quienes se les pueden asignar leads.

**Flujo Básico (Camino Feliz):** [La secuencia principal de eventos, donde todo funciona como se espera. Se describe paso a paso la interacción entre el actor y el sistema.]

1. El jefe de área navega a la lista de leads y aplica el filtro para ver los "Sin asignar".
2. Selecciona uno o varios leads de la lista.
3. Realiza la acción "Asignar".
4. El sistema muestra los Agentes de Ventas disponibles.
5. El jefe de área selecciona al Agente de Ventas al que desea asignar los leads.
6. Confirma la acción (ej. haciendo clic en "Confirmar Asignación").
7. El sistema actualiza los registros de los leads seleccionados, asociándolos con el Agente elegido y cambiando su estado a "Asignado".
8. El sistema muestra un mensaje de éxito (ej. "3 leads asignados a Juan Pérez") y actualiza la vista, por lo que los leads ya no aparecen en el filtro "Sin asignar".

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* **Alternativa A:** Reasignación de un lead: El Jefe de Área puede filtrar por leads ya asignados a un agente, seleccionarlo y repetir el flujo para cambiar su asignación a otro agente. El sistema actualiza el agente asignado.
* **Alternativa B:** El usuario cancela la operación: Después de seleccionar los leads y el sistema estar listo para la asignación, el Jefe de Área decide no continuar y cancela la operación. El sistema no realiza ningún cambio.
* **Excepción A:** Intento de asignación sin seleccionar leads: Si el Jefe de Área realiza la acción "Asignar" sin haber seleccionado leads, el sistema muestra una notificación indicando que debe seleccionar al menos un lead.
* **Excepción B:** Intento de acceso sin permisos: Si un Agente de Ventas (sin rol de Jefe de Área) intenta acceder a esta funcionalidad, el sistema le deniega el acceso y/o los controles de asignación no son visibles en su interfaz.

**Post-condiciones:**

* **En caso de éxito:**
  + Los leads seleccionados ahora están vinculados a un Agente de Ventas en la base de datos.
  + El estado de los leads cambia de "Sin asignar" a "Asignado".
  + Los leads asignados ahora son visibles en la lista de trabajo del Agente de Ventas correspondiente.
  + Se genera un registro de auditoría de la asignación.
* **En caso de fallo o cancelación:**
  + El estado y la asignación de los leads no se modifican. La base de datos permanece sin cambios.