**Nombre del Caso de Uso:** Eliminar Evento

**ID:** CU-GE-004

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC elimina un evento del sistema.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.
* El evento a eliminar existe en el sistema.
* El evento no tiene inscripciones o dependencias que impidan su eliminación directa (o se maneja una eliminación lógica).

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC selecciona la opción "Eliminar evento" o un icono de eliminación junto a un evento en la lista de eventos.
2. El sistema solicita una confirmación a la Coordinadora de EC para la eliminación.
3. La Coordinadora de EC confirma la eliminación.
4. El sistema elimina el evento de la base de datos (o lo marca como eliminado lógicamente) y actualiza la lista de eventos.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC cancela la eliminación.
* **Excepción B:** El evento tiene inscripciones o datos asociados que impiden su eliminación directa. El sistema notifica a la Coordinadora de EC y le sugiere archivar el evento o transferir dependencias.
* **Excepción C:** Error del sistema al intentar eliminar el evento. El sistema muestra un mensaje de error.

**Post-condiciones:**

* El evento ya no es visible en la lista de eventos (o está marcado como eliminado lógicamente).