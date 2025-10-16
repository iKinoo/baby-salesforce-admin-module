**Nombre del Caso de Uso:** Consultar Estado de mis Solicitudes e Inscripciones

**ID:** CU-PG-007

**Actor(es):** Interesado

**Descripción:** El interesado visualiza el estado actual de todas sus solicitudes de inscripción a eventos y el estado de sus inscripciones confirmadas, incluyendo detalles sobre requisitos pendientes como el pago o documentos.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).
* El usuario ha enviado al menos una solicitud de inscripción (CU-PG-004) o tiene una inscripción confirmada.

**Flujo Básico (Camino Feliz):**

1. El **usuario** accede a su panel de control o a una sección dedicada como "Mis Solicitudes" o "Mis Eventos".
2. El **sistema** muestra una lista consolidada de todas las solicitudes de inscripción enviadas por el usuario y sus inscripciones confirmadas.
3. Para cada elemento en la lista, el **sistema** muestra información relevante como:
   1. Nombre del evento.
   2. Fecha de la solicitud/inscripción.
   3. **Estado actual de la Solicitud/Inscripción:** (ej., "Pendiente de Revisión", "Aprobada - Pendiente de Pago", "Aprobada - Pendiente de Documentos", "Rechazada", "Inscrito Confirmado", "Pago Rechazado", "Información Requerida").
   4. El **estado específico del pago** para las inscripciones que lo requieren (ej., "Pendiente", "Pagado", "Rechazado", "Verificación Manual").
   5. (Opcional) Un enlace para ver los detalles completos de la solicitud/inscripción.
4. Si el estado es "Aprobada - Pendiente de Pago" o "Pago Rechazado", el **sistema** puede mostrar un botón "Proceder al Pago" o "Reintentar Pago" (relación con CU-PG-006).
5. Si el estado es "Información Requerida" o "Aprobada - Pendiente de Documentos", el **sistema** puede mostrar un botón "Proporcionar Información" o "Cargar Documentos" (relación con CU-PG-007).
6. Si el estado es "Rechazada", el **sistema** puede mostrar el motivo del rechazo.

**Flujos Alternativos y Excepciones:**

* **Excepción A (No hay solicitudes/inscripciones):** El usuario no tiene solicitudes o inscripciones registradas.
  + El **sistema** muestra un mensaje indicando "No tienes solicitudes o inscripciones registradas aún."
* **Excepción B (Error de Carga):** Ocurre un error al intentar cargar la información de solicitudes/inscripciones.
  + El **sistema** muestra un mensaje de error genérico.

**Post-condiciones:**

* El usuario ha visualizado el estado de sus solicitudes, inscripciones y el estado de los pagos asociados.