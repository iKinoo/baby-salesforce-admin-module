**Nombre del Caso de Uso:** Cerrar Oportunidad (Ganada/Perdida)

**ID:** CU-VE-008

**Actor(es):** Promotor de Ventas

**Descripción:** El Agente de Ventas finaliza el ciclo de vida de una oportunidad marcándola como "Ganada" (si se logró la inscripción) o "Perdida" (si el cliente no continuó el proceso). Esta acción es definitiva y mueve la oportunidad fuera del pipeline activo para fines de reporte y análisis

**Precondiciones:**

* El Agente de Ventas está autenticado en el sistema.
* Existe una oportunidad activa asignada al Agente.

**Flujo Básico (Camino Feliz):** [La secuencia principal de eventos, donde todo funciona como se espera. Se describe paso a paso la interacción entre el actor y el sistema.]

1. El Agente de Ventas inicia la acción para cerrar una oportunidad.
2. El sistema solicita que se especifique el resultado final: "Ganada" o "Perdida".
3. El Agente selecciona uno de los dos resultados.
4. El sistema, basándose en la selección, solicita un motivo de cierre a partir de una lista predefinida (ej. si es "Perdida", los motivos pueden ser "Cliente no responde", "Cliente declina participación", "Eligió a la competencia"; si es "Ganada", el motivo puede ser "Pagó el curso").
5. El Agente selecciona el motivo de cierre correspondiente.
6. El Agente confirma la operación de cierre.
7. El sistema valida la información, actualiza el estado de la oportunidad a "Cerrada-Ganada" o "Cerrada-Perdida" y guarda el motivo del cierre.
8. El sistema confirma que la oportunidad ha sido cerrada exitosamente.

**Flujos Alternativos y Excepciones:**

* **Alternativa A:** El Agente de Ventas cancela la operación: Durante el proceso de cierre, el Agente decide no continuar. El sistema descarta la acción y la oportunidad mantiene su estado activo.
* **Excepción A:** Motivo de cierre obligatorio no proporcionado: Si el Agente intenta confirmar el cierre sin haber seleccionado un motivo (siendo este un campo obligatorio), el sistema rechaza la operación y le informa que debe seleccionar un motivo para poder continuar.
* **Excepción B:** Intento de cierre sobre una oportunidad ya cerrada: Si por alguna razón se intenta ejecutar esta acción sobre una oportunidad que ya está cerrada, el sistema lo impide e informa al Agente del estado actual de la misma.

**Post-condiciones:**

* **En caso de éxito:**
  + El estado de la oportunidad se actualiza permanentemente a "Cerrada-Ganada" o "Cerrada-Perdida".
  + El motivo del cierre queda registrado en el historial de la oportunidad.
  + La oportunidad ya no se considera activa y es filtrada de las vistas del pipeline principal.
  + Se genera un registro de auditoría de la acción de cierre.
* **En caso de fallo o cancelación:**
  + El estado y los datos de la oportunidad permanecen sin cambios.