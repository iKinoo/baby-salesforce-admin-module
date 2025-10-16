**Nombre del Caso de Uso:** Generar Reportes de Eventos

**ID:** CU-GE-006

**Actor(es):** Coordinación

**Descripción:** La coordinación genera reportes detallados sobre los eventos, como listas de participantes, resúmenes de inscripción o estados de pago.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.
* Existe información de eventos e inscripciones en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinación accede a la sección de "Reportes" dentro de la "Gestión de Eventos" o "Administrativo".
2. El sistema presenta una lista de tipos de reportes disponibles (ej. "Participantes por Evento", "Ingresos por Evento", "Estado de Pagos").
3. La Coordinación selecciona el tipo de reporte deseado y los parámetros necesarios (ej. un evento específico, un rango de fechas).
4. La Coordinación inicia la generación del reporte.
5. El sistema procesa la información y genera el reporte en el formato solicitado.
6. El sistema ofrece la opción de descargar el reporte.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinación decide no generar un reporte.
* **Excepción B:** No hay datos disponibles para el reporte según los filtros aplicados. El sistema informa a la Coordinación.
* **Excepción C:** Error en la generación del reporte debido a un problema del sistema o datos inconsistentes. El sistema notifica a la Coordinación.

**Post-condiciones:**

* Se ha generado un reporte sobre los eventos y/o participantes.