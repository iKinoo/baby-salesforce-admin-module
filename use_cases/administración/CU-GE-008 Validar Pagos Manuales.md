**Nombre del Caso de Uso:** Validar Pagos Manuales

**ID:** CU-GE-008

**Actor(es):** Coordinación

**Descripción:** La coordinación revisa y confirma los pagos de inscripciones que se han realizado a través de métodos manuales (ej., transferencia bancaria, depósito en efectivo) y que requieren una verificación fuera del sistema para actualizar el estado de la inscripción del participante.

**Precondiciones:**

* La Coordinación ha iniciado sesión en el sistema.
* Existen inscripciones con el estado "Pendiente de Verificación de Pago" (resultado de CU-PG-006, paso 8).
* La coordinación tiene acceso a los comprobantes de pago externos (ej., extractos bancarios, recibos físicos).

**Flujo Básico (Camino Feliz):**

1. La **Coordinación** accede a la sección de "Gestión de Pagos" o "Pagos Pendientes de Verificación".
2. El **sistema** muestra una lista de inscripciones cuyo estado de pago es "Pendiente de Verificación de Pago".
3. La **Coordinación** selecciona una inscripción para revisar, consultando los detalles del participante y el monto esperado.
4. La **Coordinación** compara la información del sistema con el comprobante de pago externo (ej., verifica la transferencia en el banco, coteja el recibo).
5. **Si el pago es confirmado:**
   1. La **Coordinación** hace clic en "Confirmar Pago" o "Marcar como Pagado".
   2. El **sistema** actualiza el estado de la inscripción del participante a "Pagada" o "Confirmada".
   3. El **sistema** envía una notificación por correo electrónico al participante confirmando la recepción del pago y la confirmación de su inscripción.
   4. El **sistema** muestra una confirmación a la Coordinación de que el pago ha sido validado.
6. **Si el pago no es confirmado (ej., no se encuentra, monto incorrecto):**
   1. La **Coordinación** hace clic en "Rechazar Pago" o "Marcar como No Confirmado".
   2. El **sistema** solicita a la Coordinación que proporcione un motivo (ej., "Comprobante no válido", "Monto incorrecto").
   3. La **Coordinación** ingresa el motivo y confirma la acción.
   4. El **sistema** actualiza el estado de la inscripción a "Pago Rechazado" o "Pendiente de Rectificación de Pago".
   5. El **sistema** notifica al participante sobre el problema con su pago y las acciones a seguir.

**Flujos Alternativos y Excepciones:**

* **Alternativa A (Solicitar Comprobante):** Si el comprobante no fue cargado por el usuario, la Coordinación puede solicitarlo.
  + La **Coordinación** hace clic en "Solicitar Comprobante".
  + El **sistema** notifica al participante para que cargue el comprobante (relación con CU-PG-007 o un nuevo CU específico para comprobantes de pago).
* **Excepción B (Pago Duplicado):** La Coordinación intenta confirmar un pago que ya fue marcado como pagado.
  + El **sistema** informa que el pago ya está confirmado.
* **Excepción C (Error de Sistema):** Ocurre un error al intentar actualizar el estado del pago.
  + El **sistema** muestra un mensaje de error genérico.

**Post-condiciones:**

* El estado del pago de la inscripción ha sido actualizado (Pagado, Rechazado, etc.).
* El participante ha sido notificado sobre el resultado de la validación de su pago.