**Nombre del Caso de Uso:** Modificar Categoría de Evento/Capacitación

**ID:** CU-GE-011

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC actualiza el nombre de una categoría de evento/capacitación existente.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.
* La categoría a modificar existe en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede a la sección de "Gestión de Categorías".
2. La Coordinadora de EC selecciona la categoría que desea modificar de la lista.
3. El sistema presenta un campo editable con el nombre actual de la categoría.
4. La Coordinadora de EC edita el nombre de la categoría.
5. La Coordinadora de EC guarda los cambios.
6. El sistema confirma la modificación y actualiza la categoría en la lista.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC decide cancelar la modificación.
* **Excepción B:** El nuevo nombre de la categoría ya existe. El sistema notifica a la Coordinadora de EC sobre el nombre duplicado.
* **Excepción C:** El nuevo nombre de la categoría está vacío o es inválido. El sistema solicita un nombre válido.

**Post-condiciones:**

* El nombre de la categoría ha sido actualizado en el sistema.
* Los eventos/capacitaciones asociados a esa categoría reflejarán el nuevo nombre.