**Nombre del Caso de Uso:** Consultar Capacitaciones Asignadas

**ID:** CU-MU-009

**Actor(es):** Capacitador

**Descripción:** El capacitador visualiza la lista de todas las capacitaciones a las que ha sido asignado por la administración.

**Precondiciones:**

* El Capacitador ha iniciado sesión en el sistema.
* El Capacitador tiene capacitaciones asignadas.

**Flujo Básico (Camino Feliz):**

1. El Capacitador accede a su panel de control o a la sección "Mis Capacitaciones".
2. El sistema muestra una lista de todas las capacitaciones donde el Capacitador está asignado, incluyendo detalles relevantes como nombre del evento, fechas, y participantes (si aplica).
3. (Opcional) El Capacitador puede hacer clic en una capacitación para ver más detalles.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** El Capacitador no tiene ninguna capacitación asignada. El sistema muestra un mensaje indicando "No tiene capacitaciones asignadas".
* **Excepción B:** Problema de conexión o sistema al cargar las capacitaciones. El sistema muestra un mensaje de error.

**Post-condiciones:**

* El Capacitador ha visualizado la lista de sus capacitaciones asignadas.