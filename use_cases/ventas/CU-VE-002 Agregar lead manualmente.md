**Nombre del Caso de Uso:** Agregar lead manualmente

**ID:** CU-VE-002

**Actor(es):** Promotor de Ventas

**Descripción:** El Promotor de Ventas introduce manualmente en el sistema la información de un nuevo lead que ha sido contactado por un canal directo no automatizado, como WhatsApp, correo electrónico personal o una llamada telefónica.

**Precondiciones:**

* El Promotor de Ventas ha iniciado sesión en el sistema.
* El Promotor de Ventas tiene los permisos necesarios para crear nuevos leads.
* El Promotor de Ventas tiene la información del contacto que desea registrar.

**Flujo Básico (Camino Feliz):**

1. El Promotor de Ventas selecciona la opción para crear un nuevo lead.
2. El sistema presenta un formulario con campos para la información del lead.
3. El Promotor de Ventas completa los campos del formulario, incluyendo nombre, datos de contacto (email, teléfono) y selecciona la fuente del lead (ej. "WhatsApp", "Llamada", "Email Directo").
4. El Promotor de Ventas confirma la creación del lead (ej. haciendo clic en "Guardar").
5. El sistema valida los datos introducidos.
6. El sistema guarda la información y crea un nuevo registro de lead en la base de datos.
7. El sistema muestra un mensaje de confirmación y redirige al Promotor a la ficha del nuevo lead o al listado principal.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** Detección de lead duplicado: Al guardar, si el sistema detecta que el correo o teléfono ya existe, alerta al Promotor y le ofrece ver el registro existente para evitar duplicados.
* **Alternativa B:** El usuario cancela la operación: Si el Promotor de Ventas decide no continuar, puede cancelar la operación, descartando los datos introducidos sin guardar cambios.
* **Alternativa C:** Datos de entrada inválidos o incompletos: Si el Promotor intenta guardar y falta un campo obligatorio o un dato tiene un formato incorrecto (ej. email mal escrito), el sistema lo notifica, resalta los campos con error y no permite guardar hasta que se corrijan.

**Post-condiciones:**

* **En caso de éxito:**
  + Se crea un nuevo registro de lead en la base de datos.
  + El nuevo lead tiene asignada la fuente manual seleccionada por el Promotor.
  + Se registra un log de la creación del lead, asociándolo al Promotor que lo creó.
* **En caso de fallo o cancelación:**
  + No se crea ningún lead en la base de datos y el sistema permanece sin cambios.