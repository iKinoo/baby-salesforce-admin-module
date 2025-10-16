**Nombre del Caso de Uso:** Visualizar leads

**ID:** CU-VE-003

**Actor(es):** Promotor de Ventas, Responsable de Ventas

**Descripción:** El usuario accede a la lista de leads registrados en el sistema. La vista y las acciones disponibles varían según el rol del usuario, permitiendo filtrar, agrupar y gestionar los leads de manera eficiente.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema.
* Existen leads registrados en la base de datos.

**Flujo Básico (Camino Feliz, vista del Administrador):**

1. El Administrador selecciona la opción "Leads" en el menú principal.
2. El sistema muestra por defecto una lista paginada de todos los leads, ordenados por fecha de creación (los más recientes primero).
3. El Administrador utiliza las herramientas de filtrado para refinar la lista. Puede filtrar por:
   * **Periodo:** Un rango de fechas de creación.
   * **Programa de Interés:** El programa académico que le interesa al lead.
   * **Estado de Asignación:** "Sin asignar", "Asignados" o "Todos".
   * **Agente Asignado:** Para ver los leads de un Agente de Ventas específico.
4. El sistema actualiza la lista en tiempo real para reflejar los filtros aplicados.
5. El Administrador puede hacer clic en cualquier lead de la lista para ver su detalle (esto iniciaría otro caso de uso como "Consultar Ficha de Lead").

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* **Alternativa A:** Vista del Agente de Ventas (Promotor): Si el actor es un Agente de Ventas, al realizar el paso 2, el sistema automáticamente filtra la lista para mostrar únicamente los leads que le han sido asignados. El Agente puede aplicar filtros adicionales (como por periodo o programa de interés) sobre su propia lista de leads.
* **Alternativa B:** Sin resultados: Si los filtros aplicados no devuelven ningún lead, el sistema muestra un mensaje claro, como "No se encontraron leads que coincidan con los criterios de búsqueda".
* **Excepción A:** Error al cargar los datos: Si ocurre un problema al consultar la base de datos, el sistema muestra un mensaje de error y no carga la lista, sugiriendo al usuario reintentarlo más tarde.

**Post-condiciones:**

* **En caso de éxito:**
  + Se muestra en pantalla la lista de leads correspondiente a los permisos del actor y los filtros seleccionados.
  + Los datos en la base de datos no son modificados (es una operación de solo lectura).
* **En caso de fallo:**
  + No se muestra la lista de leads.
  + El sistema permanece estable y los datos no sufren alteraciones.

**Notas/Comentarios (Opcional):**

* Se recomienda incluir una barra de búsqueda rápida para encontrar leads por nombre, correo o teléfono.
* La lista debe ser paginada para garantizar un buen rendimiento cuando el volumen de leads sea alto.