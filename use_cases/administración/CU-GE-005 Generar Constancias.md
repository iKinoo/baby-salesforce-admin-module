**Nombre del Caso de Uso:** Generar Constancias

**ID:** CU-GE-005

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC genera constancias de participación para los asistentes que han cumplido con los requisitos de un evento.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.
* Existen eventos y participantes asociados.

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede a la sección de "Generación de constancias" dentro de la "Gestión de Eventos".
2. La Coordinadora de EC selecciona un evento específico para el cual desea generar constancias.
3. El sistema muestra una lista de participantes elegibles para constancia (ej. aquellos con el porcentaje requerido de asistencias).
4. La Coordinadora de EC selecciona los participantes para quienes generará la constancia o elige "Generar todas".
5. El sistema genera las constancias (en formato PDF u otro) utilizando una plantilla predefinida y los datos del participante y del evento.
6. El sistema ofrece opciones para descargar las constancias individualmente o en un paquete (zip) o enviarlas por correo electrónico.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC decide no generar constancias después de ver la lista de participantes.
* **Excepción B:** No hay participantes elegibles para constancia para el evento seleccionado. El sistema informa a la Coordinadora de EC.
* **Excepción C:** Error en la generación del documento (ej. plantilla faltante, datos incompletos). El sistema notifica a la Coordinadora de EC.

**Post-condiciones:**

* Las constancias han sido generadas y están disponibles para descarga o envío.