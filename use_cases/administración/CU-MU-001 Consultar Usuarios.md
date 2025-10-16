**Nombre del Caso de Uso:** Consultar Usuarios

**ID:** CU-MU-001

**Actor(es):** Coordinación

**Descripción:** La coordinación visualiza una lista de todos los usuarios registrados en el sistema, pudiendo buscar, filtrar y acceder a sus perfiles.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinación accede al "Módulo de Usuarios".
2. El sistema muestra una lista paginada de todos los usuarios registrados (Público General, Capacitadores, etc.), incluyendo información básica como nombre, correo electrónico y estado de la cuenta.
3. Opcionalmente, la Coordinación utiliza las opciones de filtro (por ejemplo, por rol de usuario, por estado de cuenta) o la barra de búsqueda (por nombre, correo) para refinar la lista.
4. El sistema actualiza la lista de usuarios según los criterios de búsqueda/filtro aplicados.
5. La Coordinación puede seleccionar un usuario para ver su perfil detallado o realizar acciones sobre él.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** No hay usuarios registrados en el sistema. El sistema muestra un mensaje indicando que no hay usuarios.
* **Alternativa B:** La Coordinación no encuentra el usuario deseado. El sistema indica que no se encontraron resultados para la búsqueda/filtro.

**Post-condiciones:**

* La Coordinación ha visualizado la información de los usuarios.