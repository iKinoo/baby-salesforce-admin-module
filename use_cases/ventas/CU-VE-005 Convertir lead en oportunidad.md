**Nombre del Caso de Uso:** Convertir lead en oportunidad

**ID:** CU-VE-005

**Actor(es):** Promotor de Ventas

**Descripción:** Cuando un Agente de Ventas determina que un lead está calificado (muestra interés genuino y potencial de inscripción), lo convierte en una oportunidad. Esta acción formaliza el inicio del proceso de venta activa y mueve al contacto al siguiente nivel en el embudo.

**Precondiciones:**

* El Agente de Ventas ha iniciado sesión en el sistema.
* El lead que se va a convertir ya existe y está asignado al Agente de Ventas.
* El lead se encuentra en un estado activo (no está "Perdido" o ya "Convertido").

**Flujo Básico (Camino Feliz):**

1. El Agente de Ventas se encuentra accede al detalle de un lead.
2. El Agente de Ventas decide que el lead es calificado y realiza la acción "Convertir a Oportunidad".
3. El sistema solicita confirmación, posiblemente con campos adicionales para enriquecer la oportunidad (ej. confirmar el "Programa de Interés").
4. El Agente de Ventas confirma la conversión.
5. El sistema crea un nuevo registro de "Oportunidad" en la base de datos, copiando la información de contacto del lead.
6. El sistema actualiza el estado del lead original a "Convertido" para sacarlo de la lista de leads activos.
7. El sistema muestra un mensaje de éxito y redirige al Agente a la nueva ficha de la Oportunidad para que pueda empezar a registrar las interacciones.

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* A1: El lead ya fue convertido: Si el Agente intenta convertir un lead que ya tiene el estado "Convertido", el sistema muestra un mensaje indicándolo y ofrece la oportunidad de ver el ya existente.
* A2: El usuario cancela la operación: En el paso 3 o 4, el Agente decide cancelar. El sistema no realiza ningún cambio y vuelve a la ficha del lead.
* E1: Faltan datos para la oportunidad: Si para crear una oportunidad se requiere un dato que el lead no tiene (ej. "Programa de Interés"), el sistema solicitará al Agente que complete esa información en el paso 3 y no permitirá continuar hasta que se proporcione.

**Post-condiciones:**

* **En caso de éxito:**
  + Se crea un nuevo registro de "Oportunidad".
  + El estado del lead original se cambia a "Convertido".
  + La nueva oportunidad está asociada al mismo Agente de Ventas.
  + Se crea un registro en la bitácora de la oportunidad indicando su creación.
* **En caso de fallo o cancelación:**
  + No se crea ninguna oportunidad nueva.
  + El estado del lead original no se modifica.