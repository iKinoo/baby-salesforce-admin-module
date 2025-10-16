**Nombre del Caso de Uso:** Modificar Información de Capacitador

**ID:** CU-MU-005

**Actor(es):** Coordinadora de EC, Capacitador (Este actor podría modificar sus propios datos básicos)

**Descripción:** Una coordinadora de EC o el propio capacitador actualiza la información personal o profesional de un capacitador en el sistema. Esto incluye datos de contacto, especialidad, CV. **No incluye la validación de documentos para pago/facturación.**

**Precondiciones:**

* El Actor (Coordinadora de EC o Capacitador) ha iniciado sesión en el sistema.
* El capacitador a modificar existe en el sistema.

**Flujo Básico (Camino Feliz):**

1. El Actor (Coordinadora de EC desde "Módulo de Usuarios" o Capacitador desde su "Perfil") selecciona la opción para editar la información de un capacitador.
2. El sistema presenta un formulario pre-llenado con la información actual del capacitador.
3. El Actor realiza los cambios necesarios en los campos (ej. datos básicos, información profesional, CV).
4. El Actor guarda los cambios.
5. El sistema actualiza la información del capacitador y confirma la modificación.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** El Actor decide cancelar la modificación.
* **Excepción B:** Faltan campos obligatorios o los datos son inválidos. El sistema resalta los errores.

**Post-condiciones:**

* La información del capacitador ha sido actualizada en el sistema.