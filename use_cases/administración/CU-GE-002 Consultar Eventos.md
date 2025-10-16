**Nombre del Caso de Uso:** Consultar Eventos

**ID:** CU-GE-002

**Actor(es):** Coordinación

**Descripción:** La coordinación visualiza una lista de todos los eventos registrados en el sistema, pudiendo aplicar filtros o buscar eventos específicos.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinación selecciona la opción "Consultar eventos" o "Ver eventos" dentro de la "Gestión de Eventos".
2. El sistema muestra una lista paginada de todos los eventos registrados, incluyendo información clave como nombre, fechas y estado.
3. Opcionalmente, la Coordinación utiliza las opciones de filtro (por ejemplo, por fecha, por modalidad) o la barra de búsqueda para refinar la lista.
4. El sistema actualiza la lista de eventos según los criterios de búsqueda/filtros aplicados.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** No hay eventos registrados en el sistema. El sistema muestra un mensaje indicando que no hay eventos.
* **Alternativa B:** La Coordinación no encuentra el evento deseado. El sistema indica que no se encontraron resultados para la búsqueda/filtro.

**Post-condiciones:**

* La Coordinación ha visualizado la información de los eventos.