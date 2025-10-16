**Nombre del Caso de Uso:** Consultar Mis Eventos

**ID:** CU-PG-009

**Actor(es):** Participante

**Descripción:** El participante visualiza una lista consolidada de todos los eventos a los que se ha inscrito de manera exitosa y confirmada. Esta función permite al participante acceder a los detalles de los eventos para los que su participación está garantizada.

**Precondiciones:**

* El participante ha iniciado sesión en el sistema.
* El participante tiene al menos una solicitud de inscripción que ha sido aprobada y confirmada (es decir, ya está inscrito a un evento).

**Flujo Básico (Camino Feliz):**

1. El participante accede a su panel de control o a una sección dedicada (ej. "Mis Inscripciones" o "Mis Eventos").
2. El sistema muestra una lista de eventos a los que el participante se ha inscrito.
3. Para cada evento de la lista, el sistema presenta información clave como:
    1. Nombre del evento. 
    2. Fecha(s) y horario(s) del evento. 
    3. Ubicación o enlace de acceso (si es en línea). 
    4. Estado de la inscripción (ej., "Inscrito", "Asistido").
4. El participante puede hacer clic en un evento específico para ver detalles más completos, como la agenda, ponentes y cualquier otro documento o recurso relacionado. 

**Flujos Alternativos y Excepciones:**

* **Excepción A (No hay eventos inscritos):** El participante no tiene inscripciones confirmadas. 
  + El sistema muestra un mensaje claro indicando "No tienes eventos inscritos aún. Puedes buscar eventos para inscribirte en el catálogo." 
* **Excepción B (Error de Carga):** Ocurre un error del sistema al intentar cargar la lista de eventos.
  + El sistema muestra un mensaje de error genérico (ej., "Hubo un problema al cargar tus eventos. Por favor, inténtalo de nuevo más tarde.").

**Post-condiciones:**

* El participante ha visualizado exitosamente la lista de sus eventos inscritos y sus detalles. 