**Nombre del Caso de Uso:** Registrar/Actualizar Información de Pago/Facturación de Capacitador

**ID:** CU-MU-007

**Actor(es):** Coordinadora de EC

**Descripción:** La coordinadora de EC ingresa o actualiza los datos financieros (ej. cuenta bancaria, RFC, datos fiscales) necesarios para procesar los pagos y facturación de un capacitador. Esta información luego deberá ser validada por el capacitador.

**Precondiciones:**

* La Coordinadora de EC ha iniciado sesión en el sistema.
* El capacitador ya está registrado en el sistema (CU-MU-003).

**Flujo Básico (Camino Feliz):**

1. La Coordinadora de EC accede al "Módulo de Usuarios" y busca/selecciona el perfil del capacitador.
2. Dentro del perfil del capacitador, la Coordinadora de EC selecciona la opción "Gestionar Información de Pago/Facturación".
3. El sistema presenta un formulario con campos para ingresar o modificar los datos financieros (ej. nombre del banco, número de cuenta, tipo de cuenta, RFC, dirección fiscal).
4. La Coordinadora de EC ingresa o actualiza la información requerida.
5. La Coordinadora de EC guarda los datos.
6. El sistema guarda la información y marca el estado de estos datos como "Pendiente de Validación por Capacitador".
7. El sistema puede enviar una notificación al capacitador informándole que tiene información de pago pendiente de validar.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** La Coordinadora de EC decide cancelar el proceso sin guardar los cambios.
* **Excepción B:** El formato de algún dato es inválido (ej. RFC incorrecto, número de cuenta con longitud incorrecta). El sistema resalta los errores.
* **Excepción C:** Faltan campos obligatorios. El sistema impide guardar y resalta los campos faltantes.
* **Excepción D:** Error en el sistema al intentar guardar la información.

**Post-condiciones:**

* La información de pago/facturación del capacitador ha sido registrada o actualizada en el sistema.
* El estado de esta información se marca como "Pendiente de Validación por Capacitador".