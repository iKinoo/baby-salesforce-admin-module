**Nombre del Caso de Uso:** Consultar Capacitadores

**ID:** CU-MU-004

**Actor(es):** Coordinación

**Descripción:** La coordinación visualiza una lista de todos los capacitadores registrados en el sistema, pudiendo buscar o filtrar.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinación accede al "Módulo de Usuarios".
2. La Coordinación selecciona la opción "Consultar Capacitadores" o "Ver lista de Capacitadores".
3. El sistema muestra una lista de todos los capacitadores registrados, con información clave (ej. Nombre, Especialidad).
4. (Opcional) La Coordinación utiliza las opciones de búsqueda o filtro (ej. por nombre, especialidad) para refinar la lista.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** No hay capacitadores registrados. El sistema muestra un mensaje indicando que no hay capacitadores.

**Post-condiciones:**

* La Coordinación ha visualizado la información de los capacitadores.