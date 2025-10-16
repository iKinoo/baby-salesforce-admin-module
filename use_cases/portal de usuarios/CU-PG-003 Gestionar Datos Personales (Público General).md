**Nombre del Caso de Uso:** Gestionar Datos Personales (Público General)

**ID:** CU-PG-003

**Actor(es):** Usuario

**Descripción:** Un usuario de Público General visualiza y/o actualiza su información personal registrada en el sistema para mantener sus datos al día.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).

**Flujo Básico (Camino Feliz):**

1. El **usuario** accede a su sección de "Perfil", "Configuración de Cuenta" o "Mis Datos" desde su panel de usuario.
2. El **sistema** muestra un formulario pre-llenado con la información personal actual del usuario (ej. nombre completo, correo electrónico, número de teléfono, dirección).
3. El **usuario** revisa la información mostrada.
4. El **usuario** decide si desea editar alguno de los campos o simplemente salir de la sección.
5. **Si el usuario decide editar:**
   1. El **usuario** realiza los cambios deseados en uno o varios campos editables (ej. actualizar número de teléfono, cambiar dirección, corregir un nombre).
   2. El **usuario** hace clic en el botón "Guardar Cambios" o "Actualizar Perfil".
   3. El **sistema** valida los datos actualizados.
   4. El **sistema** guarda la información modificada en el perfil del usuario.
   5. El **sistema** muestra un mensaje de confirmación (ej., "¡Tu perfil ha sido actualizado exitosamente!").

**Flujos Alternativos y Excepciones:**

* **Alternativa A (No editar):** El usuario visualiza su información pero decide no realizar cambios y navega a otra sección o cierra sesión.
* **Excepción B (Campos Obligatorios Faltantes/Inválidos al editar):** El usuario deja campos obligatorios vacíos o ingresa datos en un formato incorrecto durante la edición.
  + El **sistema** resalta los campos con errores y muestra mensajes de validación específicos.
* **Excepción C (Error de Sistema):** Ocurre un error inesperado durante el proceso de visualización o actualización.
  + El **sistema** muestra un mensaje de error genérico (ej., "No se pudo cargar/actualizar tu perfil. Por favor, inténtalo de nuevo.").
* **Excepción D (Cambio de Contraseña/Correo):** Si la funcionalidad de cambiar contraseña o correo electrónico está integrada aquí.
  + El **sistema** puede requerir la contraseña actual del usuario para confirmar la identidad antes de permitir cambios en datos sensibles como la contraseña o el correo electrónico.

**Post-condiciones:**

* La información personal del usuario ha sido visualizada y, opcionalmente, actualizada en el sistema.