**Nombre del Caso de Uso:** Archivar/Eliminar Capacitador

**ID:** CU-MU-006

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC archiva o elimina un registro de capacitador del sistema.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.
* El capacitador existe en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede al "Módulo de Usuarios" y selecciona la opción "Gestionar Capacitadores".
2. La Coordinadora de EC selecciona el capacitador que desea archivar/eliminar de la lista.
3. El sistema solicita una confirmación a la Coordinadora de EC.
4. La Coordinadora de EC confirma la acción.
5. El sistema cambia el estado del capacitador a "Archivado" o lo elimina completamente.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC cancela la operación.
* **Excepción B:** El capacitador tiene eventos/capacitaciones asignadas activas. El sistema notifica a la Coordinadora de EC y no permite la eliminación directa, sugiriendo reasignar o archivar primero los eventos.
* **Excepción C:** Error del sistema al intentar archivar/eliminar.

**Post-condiciones:**

* El capacitador ya no es visible en las listas activas o ha sido removido del sistema.
* (Si aplica) Los eventos/capacitaciones donde estaba asignado el capacitador reflejan su estado (ej. "Capacitador archivado" o campo vacío).