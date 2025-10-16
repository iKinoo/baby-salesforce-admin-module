**Nombre del Caso de Uso:** Realizar Pago de Solicitud Aprobada

**ID:** CU-PG-005

**Actor(es):** Interesado

**Descripción:** El interesado completa el proceso de pago para confirmar su participación en un evento, después de que su solicitud de inscripción ha sido aprobada por un administrativo.

**Precondiciones:**

* El usuario ha iniciado sesión en el sistema (CU-PG-001).
* El usuario tiene una solicitud de inscripción para un evento con costo que ha sido "Aprobada" por un administrativo (via CU-GE-007) y está "Pendiente de Pago".
* El usuario tiene acceso a un método de pago válido (ej. tarjeta de crédito/débito, datos para transferencia bancaria).

**Flujo Básico (Camino Feliz):**

1. El **usuario** recibe una notificación (ej., correo electrónico, o mensaje en su panel de usuario) de que su solicitud ha sido aprobada y que debe proceder con el pago.
2. El **usuario** accede a su panel de control o a la sección de "Mis Solicitudes" / "Solicitudes Aprobadas".
3. El **sistema** muestra las solicitudes aprobadas que tienen un estado de "Pendiente de Pago".
4. El **usuario** selecciona la solicitud para la cual desea realizar el pago y hace clic en "Proceder al Pago".
5. El **sistema** dirige al usuario a la interfaz de pago, mostrando el monto total a pagar y las opciones de pago disponibles (ej. "Pago con Tarjeta", "Transferencia Bancaria").
6. El **usuario** selecciona su método de pago preferido.
7. **Si es Pago Electrónico (Tarjeta/PayPal):**
   1. El **sistema** redirige al usuario a una pasarela de pago segura o integra un formulario de pago seguro.
   2. El **usuario** ingresa los datos de su tarjeta o sus credenciales de PayPal.
   3. La **pasarela de pago** procesa la transacción.
   4. La **pasarela de pago** notifica al sistema sobre el resultado del pago (éxito o fallo).
   5. Si el pago es exitoso, el **sistema** actualiza el estado de la solicitud y la inscripción del usuario a "Pagada" o "Confirmada".
8. **Si es Transferencia Bancaria u Otro Método Manual:**
   1. El **sistema** muestra las instrucciones detalladas para realizar la transferencia (número de cuenta, banco, beneficiario, concepto).
   2. El **sistema** indica que la inscripción está "Pendiente de Confirmación Manual de Pago" y que la confirmación será realizada por la administración.
   3. El **usuario** realiza la transferencia fuera del sistema y, opcionalmente, carga el comprobante de pago (relación con CU-PG-007 si se permite carga de comprobantes aquí).
9. Para pagos electrónicos exitosos, el **sistema** muestra una confirmación de pago exitoso al usuario.
10. El **sistema** envía un recibo de pago y/o una confirmación final de inscripción al correo electrónico del usuario.

**Flujos Alternativos y Excepciones:**

* **Excepción A (Pago Rechazado):** El pago electrónico es rechazado.
  + El **sistema** informa al usuario que "El pago ha sido rechazado. Por favor, verifique sus datos o intente con otro método." y le da opciones para reintentar.
* **Excepción B (Error de Conexión/Técnico):** Hay un problema de conexión con la pasarela de pago o un error interno del sistema.
  + El **sistema** informa al usuario sobre el problema y le sugiere reintentar más tarde o contactar a soporte, manteniendo la solicitud en estado "Pendiente de Pago".
* **Excepción C (Abandono del Pago):** El usuario cierra la ventana de pago o sale del proceso sin completar la transacción.
  + El **sistema** mantiene la solicitud en estado "Pendiente de Pago" y puede enviar recordatorios al usuario.
* **Excepción D (Monto Incorrecto):** Por algún error, el monto a pagar es incorrecto.
  + El **sistema** detecta la inconsistencia y no permite el pago, informando del error.

**Post-condiciones:**

* Si el pago es exitoso (electrónico), la inscripción del usuario se confirma como "Pagada" o "Confirmada".
* Si el pago es manual, el estado de la inscripción se actualiza a "Pendiente de Verificación de Pago".
* Se ha generado un registro de la transacción de pago en el sistema.