**Nombre del Caso de Uso:** Crear Categoría de Evento/Capacitación

**ID:** CU-GE-009

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC crea una nueva categoría para clasificar los eventos o capacitaciones (ej. "Maestría", "Diplomado", "Curso", "Taller").

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede a la sección de "Gestión de Categorías" (dentro de "Gestión de Eventos").
2. El sistema muestra una opción para "Crear nueva categoría".
3. La Coordinadora de EC ingresa el "Nombre de la categoría" (ej. "Maestría", "Diplomado").
4. La Coordinadora de EC guarda la nueva categoría.
5. El sistema confirma la creación de la categoría y la añade a la lista de categorías disponibles.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC decide cancelar la creación de la categoría.
* **Excepción B:** El nombre de la categoría ya existe. El sistema notifica a la Coordinadora de EC que el nombre está duplicado.
* **Excepción C:** El nombre de la categoría está vacío o es inválido. El sistema solicita un nombre válido.

**Post-condiciones:**

* Se ha creado una nueva categoría en el sistema.
* La nueva categoría está disponible para ser asignada a eventos o capacitaciones.