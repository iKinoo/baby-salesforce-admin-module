**Nombre del Caso de Uso:** Consultar estado del pago

**ID:** CU-VE-012

**Actor(es):** Promotor de Ventas

**Descripción:** El Agente o Staff consultan el estado actual de una solicitud de pago para dar el seguimiento adecuado a la oportunidad. El estado es informativo y es modificado por procesos externos (Contabilidad) o automáticos (Sistema).

**Precondiciones:**

* El usuario está autenticado.
* Existe una solicitud de pago registrada para una oportunidad.

**Flujo Básico (Camino Feliz):**

1. El usuario accede a la ficha de la oportunidad o a un panel de seguimiento de pagos.
2. El sistema muestra el estado actual del pago, que puede ser uno de los siguientes:
   * **Por registrar:** La fecha límite aún no ha pasado y Contabilidad no ha confirmado la recepción. (Coincide con la nota: *el pago puede suceder hasta el último día*).
   * **Pendiente:** El pago se retiene, falta un paso administrativo para su cierre final, como la generación de una factura solicitada por el cliente. (Co-creación con la nota: *el corte de caja sucedió, pero el interesado requiere factura*).
   * **Confirmado:** Contabilidad ha validado el pago. ¡La venta es un éxito!
   * **Vencido:** La fecha límite de pago ha transcurrido y no se recibió confirmación. El sistema actualiza este estado automáticamente.
3. Basado en el estado, el Agente de Ventas sabe qué acción tomar (esperar, contactar al cliente para recordar, o dar la oportunidad por perdida).

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* A1: Vista de lista: El usuario puede filtrar una lista de todas sus oportunidades según el estado del pago (ej. "Mostrar todas las vencidas") para gestionar su trabajo de forma masiva.

**Post-condiciones:**

* **En caso de éxito:**
  + El usuario está informado del estado actual del pago.
  + No se realizan modificaciones en los datos por parte del usuario (es una consulta).