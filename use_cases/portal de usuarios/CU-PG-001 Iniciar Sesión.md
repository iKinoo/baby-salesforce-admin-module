## CU-PG-001 Iniciar Sesión

**ID:** CU-PG-001  
**Actor(es):** Usuario  

### Descripción
El usuario se autentica en el sistema utilizando su correo electrónico para recibir un código temporal que le permite ingresar, sin necesidad de una contraseña estática.

### Precondiciones
- El usuario ya tiene una cuenta registrada en el sistema.  
- El usuario tiene acceso a la dirección de correo electrónico asociada a su cuenta.

### Flujo Básico (Camino Feliz)
1. El usuario accede a la página de inicio de sesión del sistema.  
2. El sistema muestra una interfaz solicitando el correo electrónico del usuario.  
3. El usuario ingresa su dirección de correo electrónico y hace clic en "Enviar Código de Acceso".  
4. El sistema valida que la dirección de correo electrónico existe en la base de datos de usuarios.  
5. El sistema genera un código de acceso temporal, de un solo uso y con un tiempo de expiración limitado (ej., 5 minutos).  
6. El sistema envía el código de acceso al correo electrónico del usuario.  
7. El sistema muestra una nueva interfaz solicitando el código de acceso.  
8. El usuario revisa su correo electrónico, obtiene el código y lo ingresa en el sistema.  
9. El usuario hace clic en "Ingresar".  
10. El sistema valida el código:
    - El código coincide con el enviado.  
    - El código no ha expirado.  
    - El código no ha sido usado previamente.  
11. Si la validación es exitosa, el sistema autentica al usuario, crea una sesión de navegación y lo redirige a su panel de usuario.

### Flujos Alternativos y Excepciones
- **Alternativa A: Reenvío de Código**  
  - El usuario no recibe el código o este expira.  
  - El usuario hace clic en "Reenviar Código".  
  - El sistema genera un nuevo código, invalida el anterior y repite los pasos 6–11.

- **Excepción B: Correo Electrónico no Válido**  
  - El usuario ingresa un correo que no está registrado.  
  - El sistema muestra un mensaje de error (ej., "El correo electrónico no se encuentra registrado").

- **Excepción C: Código de Acceso Incorrecto**  
  - El usuario ingresa un código que no coincide o ha expirado.  
  - El sistema muestra un mensaje de error (ej., "El código es incorrecto o ha expirado. Por favor, solicita uno nuevo.").

- **Excepción D: Error de Sistema**  
  - Ocurre un error al generar o enviar el código.  
  - El sistema muestra un mensaje de error genérico.

### Post-condiciones
- El usuario ha iniciado sesión exitosamente en el sistema.  
- Se ha creado una sesión de usuario para la navegación.
