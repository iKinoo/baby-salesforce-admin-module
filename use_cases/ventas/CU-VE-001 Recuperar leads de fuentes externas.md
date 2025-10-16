**Nombre del Caso de Uso:** Recuperar leads de fuentes externas

**ID:** CU-VE-001

**Actor(es):** Sistema

**Descripción:** El sistema importa automáticamente nuevos leads desde fuentes de datos externas, como las plataformas de Meta o la bolsa de trabajo de la UADY, y los integra en la base de datos

**Precondiciones:**

* El sistema debe tener una conexión de red estable y funcional con las plataformas de origen (API de Meta y el sistema de la bolsa de trabajo de la UADY).
* El sistema debe poseer y tener configuradas las credenciales necesarias (como tokens de acceso o claves API) para autenticarse y obtener permiso de lectura de datos de las fuentes externas.[[3](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQFWJlITdlWbe7DZMEacfcM7zc4N7JofHwZmN-37Jb9s1HBB252tBmYbKxhadlWd1RdtOsKH8326jw5PI8OQ7JKJrHEw2wLWSKpf-gPxSy6gsoeE4U1GQNObx5neWUMmrICwtOYtdHzZ5eXdFAbFUnYVS3TmVwDH4RPewcZUiYdThd5q9d30UJGKmRS6dQ%3D%3D)][[4](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQH_-yz6mXB6roWWyG7hPbngVb_JEDRmC6ETxTAnuRbJ17TqDdq3B69vBJS_CqG98j0ifLwNeM4TMX2xQ5FRCw-3icFJKf5GZ5jWDxHvPyqhCjF2qIejMMJPWThxq2wRMuce4ueGvIE%3D)]
* La base de datos central del sistema debe estar en línea, accesible y configurada para aceptar nuevas escrituras de datos.
* Debe existir una configuración previa que defina cómo se corresponden los campos de datos de la fuente externa (ej. "full\_name" en Meta) con los campos de la base de datos unificada (ej. "Nombres y apellidos").[[4](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQH_-yz6mXB6roWWyG7hPbngVb_JEDRmC6ETxTAnuRbJ17TqDdq3B69vBJS_CqG98j0ifLwNeM4TMX2xQ5FRCw-3icFJKf5GZ5jWDxHvPyqhCjF2qIejMMJPWThxq2wRMuce4ueGvIE%3D)]
* Debe estar habilitado el mecanismo que inicia la importación, ya sea un proceso programado (ej. que se ejecuta cada 10 minutos) o un activador en tiempo real (como un webhook) que notifique al sistema cuando hay un nuevo lead.[[3](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQFWJlITdlWbe7DZMEacfcM7zc4N7JofHwZmN-37Jb9s1HBB252tBmYbKxhadlWd1RdtOsKH8326jw5PI8OQ7JKJrHEw2wLWSKpf-gPxSy6gsoeE4U1GQNObx5neWUMmrICwtOYtdHzZ5eXdFAbFUnYVS3TmVwDH4RPewcZUiYdThd5q9d30UJGKmRS6dQ%3D%3D)]

**Flujo Básico:**

1. El sistema detecta un nuevo lead en una fuente de datos externa (Meta, Bolsa de Trabajo UADY).
2. Extrae la información disponible del lead.
3. Transfiere los datos a la base de datos unificada.
4. El sistema consolida la información del nuevo lead.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** En el paso 3 (Transferir datos), antes de crear un nuevo registro, el sistema detecta que ya existe un lead con identificadores clave idénticos (ej. mismo correo electrónico o número de teléfono).
  + El sistema suspende la creación de un nuevo lead.
  + Compara la información del lead entrante con la del registro existente.
  + Si la nueva información es más completa o actualizada: El sistema enriquece o actualiza el registro existente (ej. añade el número de teléfono que faltaba o actualiza la fuente del lead a "Meta" si antes era "UADY").
  + Si la información es idéntica o menos completa: El sistema descarta el lead entrante y registra el intento de duplicación para fines de auditoría.
  + Se registra en el log del sistema que se actualizó un lead existente en lugar de crear uno nuevo.
* **Alternativa B:** En el paso 2 (Extraer información), el sistema obtiene un lead al que le faltan campos que no son estrictamente obligatorios para la creación inicial en el CRM (ej. se obtiene nombre y correo, pero no el teléfono).
  + El sistema valida que los campos mínimos requeridos (ej. email) están presentes.
  + Procede a transferir y consolidar la información disponible (pasos 3 y 4 del flujo básico).
  + El sistema asigna un estado específico al nuevo lead, como "Incompleto" o "Requiere seguimiento", para que un agente de ventas sepa que debe completar la información.
* **Alternativa C:** Un lead existente (ej. de la bolsa de la UADY) es detectado nuevamente, pero esta vez a través de una campaña de Meta.
  + El sistema identifica al lead como duplicado (ver A1).
  + En lugar de solo actualizar campos, el sistema añade la nueva fuente de origen al historial del lead. El registro ahora mostrará que el contacto fue captado tanto por "Bolsa de Trabajo UADY" como por "Campaña de Verano Meta".
  + Esto permite un análisis más rico del recorrido del cliente (customer journey).
* **Excepción A:** Fallo de Autenticación o Autorización con la Fuente Externa. El sistema notifica de la falla y detiene temporalmente el proceso de importación del a fuente hasta que el problema se resuelva.
* **Excepción B:** La fuente de datos externa no está disponible. El sistema realiza una serie de intentos programados y en caso de no tener éxito notifica a los administradores.
* **Excepción C:** La Base de Datos Central no está Accesible. Se debe evitar la pérdida de los datos del lead. Y Transferirlos una vez haya conexión nuevamente.
* **Excepción D:** Violación de Restricciones de la Base de Datos. La transacción a la base de datos falla, se registra el error, los datos del lead se retienen para revisión manual y reintento de transferencia.

**Post-condiciones:**

* **En caso de éxito:**
  + Se crea un nuevo registro de lead en la base de datos.
  + El nuevo lead tiene asignada su fuente de origen (ej. Meta, UADY).
  + Si el lead ya existía, su registro se actualiza con la nueva información.
  + Se registra un log de la operación (creación o actualización) para auditoría.
* **En caso de fallo:**
  + No se crea ningún lead y el sistema registra el incidente en el log para su revisión.