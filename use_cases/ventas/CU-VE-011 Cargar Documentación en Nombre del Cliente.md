**Nombre del Caso de Uso:** Cargar Documentación en Nombre del Cliente

**ID:** CU-VE-011

**Actor(es):** Promotor de Ventas

**Descripción:** El personal de staff carga los documentos comprobatorios de una oportunidad en nombre del cliente. Esta acción se realiza para asistir a clientes que tienen dificultades para usar el portal de autoservicio, garantizando que su solicitud de descuento pueda ser procesada para la inscripción.

**Precondiciones:**

* El personal de staff está autenticado en el sistema y tiene los permisos para gestionar documentos de oportunidades.
* Existe una oportunidad activa en el sistema.
* El personal de staff ha recibido los documentos del cliente por un medio externo (ej. email, WhatsApp) y los tiene disponibles en su estación de trabajo.

**Flujo Básico (Camino Feliz):**

1. El personal de staff localiza la oportunidad del cliente dentro del sistema e inicia el proceso de carga de documentación.
2. El sistema presenta las categorías de documentos requeridos (ej. "Identificación Oficial", "Comprobante de Estudios", etc.).
3. El personal selecciona la categoría del documento que va a cargar.
4. El sistema solicita la selección del archivo correspondiente.
5. El personal selecciona desde su equipo el archivo que el cliente le proporcionó.
6. El sistema procesa y almacena de forma segura el archivo, asociándolo a la categoría y a la oportunidad del cliente.
7. El sistema confirma que el documento ha sido cargado y actualiza la vista para mostrar el documento recién añadido. El personal puede repetir los pasos 3-7 para cada documento necesario.
8. Una vez finalizada la carga de todos los documentos, el estado de la documentación se actualiza automáticamente.

**Flujos Alternativos y Excepciones:** [Aquí se describen las variaciones del flujo básico y los posibles errores.]

* A1: Reemplazar un documento existente: Si se cargó un documento incorrecto o de mala calidad, el personal puede seleccionar un documento ya cargado e iniciar una acción para reemplazarlo, repitiendo los pasos 4-6.
* A2: El personal cancela la operación: Durante el proceso, el personal decide no continuar. El sistema descarta cualquier archivo que no haya sido confirmado y no realiza cambios.
* E1: El archivo no cumple los requisitos: Si el archivo seleccionado tiene un formato no permitido (ej. .zip) o excede el tamaño máximo, el sistema rechaza la carga y notifica al personal sobre el requisito incumplido.
* E2: Falla en el almacenamiento: Si ocurre un error técnico durante el guardado del archivo, el sistema interrumpe la operación, informa al personal del fallo y no deja el registro en un estado inconsistente (no se guardan archivos parciales).

**Post-condiciones:**

* **En caso de éxito:**
  + Los archivos de los documentos están almacenados en el sistema y asociados a la oportunidad del cliente.
  + El estado de la documentación de la oportunidad se actualiza a "Pendiente de Validación", para que pueda ser procesada por el caso de uso CU-MU-002.
* **En caso de fallo o cancelación:**
  + No se almacena ningún archivo nuevo.
  + El estado de la documentación de la oportunidad no se modifica.