## CU-PG-002 Crear Cuenta (con Verificación por Código Temporal)

**ID:** CU-PG-002  
**Actor(es):** Interesado  

### Descripción
Un nuevo usuario se registra en el sistema para obtener acceso a las funcionalidades ofrecidas, como la consulta de eventos y la inscripción.

### Precondiciones
- El usuario no tiene una cuenta registrada en el sistema.  
- El usuario tiene acceso a la dirección de correo electrónico que desea usar para el registro.

### Flujo Básico (Camino Feliz)
1. El usuario accede a la página de registro del sistema.  
2. El sistema muestra un formulario de registro solicitando información personal (ej., nombre, apellido, correo electrónico, etc.).  
3. El usuario llena el formulario con sus datos.  
4. El usuario acepta los términos y condiciones y hace clic en "Crear Cuenta".  
5. El sistema realiza validaciones de los datos ingresados (ej., formato de correo, campos obligatorios).  
6. El sistema genera un código de verificación temporal y lo envía a la dirección de correo electrónico proporcionada.  
7. El sistema guarda la información del usuario en un estado "Pendiente de Verificación" y muestra una interfaz solicitando el código de verificación.  
8. El usuario revisa su correo electrónico, obtiene el código y lo ingresa en el sistema.  
9. El usuario hace clic en "Verificar Cuenta".  
10. El sistema valida el código de verificación.  
11. Si la validación es exitosa, el sistema activa la cuenta del usuario, cambia su estado a "Activo" y lo autentica automáticamente, redirigiéndolo a su panel de usuario.

### Flujos Alternativos y Excepciones
- **Alternativa A: Reenvío de Código**  
  - El usuario no recibe el código o este expira.  
  - El usuario hace clic en "Reenviar Código".  
  - El sistema genera un nuevo código, invalida el anterior y repite los pasos 6–11.

- **Excepción B: Correo Electrónico ya Registrado**  
  - El usuario intenta registrar una cuenta con un correo que ya existe.  
  - El sistema informa al usuario que "Ya existe una cuenta con este correo electrónico" y le ofrece la opción de ir a la página de inicio de sesión.

- **Excepción C: Código de Verificación Incorrecto**  
  - El usuario ingresa un código que no coincide o ha expirado.  
  - El sistema muestra un mensaje de error (ej., "El código es incorrecto o ha expirado. Por favor, solicita uno nuevo.").

- **Excepción D: Error de Sistema**  
  - Ocurre un error al generar o enviar el código.  
  - El sistema muestra un mensaje de error genérico.

### Post-condiciones
- El usuario ha creado una cuenta exitosamente en el sistema.  
- La cuenta del usuario se ha activado y está lista para su uso.  
- El usuario ha iniciado sesión.
