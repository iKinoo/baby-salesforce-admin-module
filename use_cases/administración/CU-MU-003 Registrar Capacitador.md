**Nombre del Caso de Uso:** Registrar Capacitador

**ID:** CU-MU-003

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC registra la información de un nuevo capacitador en el sistema, incluyendo sus datos personales y profesionales.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede al "Módulo de Usuarios".
2. La Coordinadora de EC selecciona la opción "Registrar Nuevo Capacitador".
3. El sistema presenta un formulario para ingresar la "Información básica" (ej. Nombre, Apellido, Correo Electrónico) y "Información profesional" (ej. Especialidad, Experiencia, CV).
4. La Coordinadora de EC completa los campos obligatorios y opcionales.
5. La Coordinadora de EC guarda la información del capacitador.
6. El sistema confirma el registro del capacitador y lo añade a la lista de capacitadores disponibles para asignación a eventos/capacitaciones.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC decide cancelar el registro del capacitador.
* **Excepción B:** El correo electrónico ingresado ya está asociado a otro usuario o capacitador. El sistema notifica a la Coordinadora de EC.
* **Excepción C:** Faltan campos obligatorios. El sistema resalta los campos faltantes.

**Post-condiciones:**

* Se ha creado un nuevo registro de capacitador en el sistema.
* El capacitador está disponible para ser asignado a eventos/capacitaciones.