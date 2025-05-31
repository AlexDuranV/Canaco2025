# Proyecto Canaco

Nuestra tarea se baso en desarrollar una parte del proyecto, que fue el registro de participantes y el quiz, que es basicamente el proceso de registro por el que un usuario debe realizar para ser participante.

## Requerimentos

**Registro de Participantes**

1. El sistema debe permitir el registro de ciudadanos mediante un formulario con los siguientes campos:

     * Nombre(s) (texto, obligatorio)
     * Apellidos (texto, obligatorio)
     * Correo electrónico (email, obligatorio)
     * Dirección (texto, obligatorio)
     * Establecimiento donde compró (lista desplegable de establecimientos autorizados, obligatorio)
     * Monto de la compra (numérico, obligatorio)
     * Fecha de la compra (fecha, obligatorio)
     * Teléfono (numérico, 10 dígitos, obligatorio)
     * Foto del ticket de compra (imagen, obligatorio)

2. El sistema debe validar que el monto de la compra sea mayor o igual a $200 para considerar el registro válido.

3. Un ciudadano puede registrar múltiples participaciones, siempre que cada una cumpla con el monto mínimo y se realice en un establecimiento autorizado.
solo se puede un registro al día en un establecimiento por usuario

4. Tras un registro exitoso, el sistema debe:
Redirigir al usuario a una trivia.
Enviar un SMS de confirmación al número registrado. (en caso de haber contestado correctamente)

**Trivia**

1. El sistema debe presentar una trivia con 3 preguntas de opción múltiple, cada una con 3 opciones de respuesta.

2. Si el usuario responde correctamente todas las preguntas:
El sistema debe confirmar la participación y enviar un SMS de confirmación.

3. preguntas:
El sistema debe mostrar un mensaje indicando que no ha respondido correctamente.
No se envía el SMS de confirmación.

## Diagramas

### Caso de uso

![Caso de uso](/Diagramas/CasoDeUso.png)

Para el inicio del desarrollo utilizamos un diagrama de casos de uso donde visualizabamos las interacciones del usuario con los diferentes componentes, basados en los requerimentos

## Diagrama de componentes

![Diagrama de componentes](/Diagramas/TiemposFlutterflow.png)

Tambien utilizamos un diagrama de componentes para organizar la manera en como cada componente se debia conectar y como organizar los procesos que debiamos seguir para mantener un orden y estructura

## Comparación entre Flutterflow y Laravel

### FlutterFlow

| Ventajas                                                                                                                                              | Desventajas                                                                                                                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| **Separación clara entre UI y datos:** FlutterFlow se  encarga de la interfaz, mientras Supabase gestiona  el backend, base de datos, auth y storage. | **Limitado control sobre el código generado:** No siempre es  limpio ni fácil de mantener fuera del entorno FlutterFlow.             |
| **Arquitectura modular visual:** Puedes crear componentes  reutilizables, flujos y navegación limpia sin escribir código.                             | **Difícil manejar lógica de negocio compleja:** No es ideal para  aplicaciones con flujos muy personalizados o algoritmos avanzados. |
| **Soporte para lógica condicional y flujos dinámicos:**  Puedes configurar reglas directamente en FlutterFlow sin programar.                          | **Dificultad para pruebas unitarias/automatizadas:** No hay soporte  directo para pruebas de software dentro de FlutterFlow.         |
| **Integración directa con Supabase (PostgreSQL):** No requiere  configuración externa, lo que simplifica la arquitectura.                             |                                                                                                                                      |

### **Esquema de tiempos**

Utilizamos un esquema para representar la curva de aprendizaje dividida en tres fases: Diseño, Aprendizaje y Codificación. Cada fase incluye actividades específicas, herramientas involucradas y una estimación de tiempo, lo cual permite tener una visión clara del proceso de desarrollo.

El enfoque se centra en el diseño progresivo del conocimiento y del sistema, partiendo desde cero hasta tener una aplicación funcional.

Refleja cómo FlutterFlow permite avanzar rápidamente una vez superada la curva inicial de aprendizaje, especialmente en entornos visuales y conectividad sencilla con backend y APIs externas.

![Diagrama de componentes](/Diagramas/TiemposFlutterflow.png)

FlutterFlow y Supabase representan una solución moderna, ágil y visualmente accesible que abstrae gran parte de la complejidad arquitectónica tradicional. Su diseño modular, la separación de capas y su integración visual permiten desarrollar productos funcionales y escalables en menos tiempo. Sin embargo, no está diseñado para aplicaciones con lógica crítica, alta personalización o flujos transaccionales complejos sin extenderlo manualmente con código.

---

### Laravel

| Ventajas | Desventajas |
|----------|-------------|
|          |             |
|          |             |
|          |             |
|          |             |

Al ser robusto y flexible, además de centrado en el Backend facilita el uso de la BD pero requiere del uso de otras tecnologías  para el Frontend como React u Node.js exigiendo de esta manera artefactos de diseño para poder concebir de mejor manera el proyecto.

## Conclusiones

Laravel, como framework backend robusto, permite un diseño completamente controlado y escalable, ideal para modelar con precisión la lógica de negocio. Este control, sin embargo, exige más tiempo de desarrollo, una curva de aprendizaje más alta y una configuración completa de infraestructura.

Por otro lado, FlutterFlow con Supabase ofrece un diseño altamente visual y orientado a componentes, permitiendo construir rápidamente interfaces funcionales y conectar con un backend gestionado sin necesidad de código complejo. Sin embargo, el diseño lógico se ve limitado por las herramientas visuales, lo cual puede dificultar la implementación de reglas de negocio complejas, flujos condicionales avanzados y pruebas formales.

En resumen, si el diseño de software requiere control preciso, mantenimiento a largo plazo y lógica compleja, Laravel es más adecuado. Pero si el enfoque es rapidez, validación de ideas, y un diseño de experiencia visual moderno con backend integrado, FlutterFlow y Supabase ofrecen una ventaja significativa en eficiencia y entrega temprana del producto. La elección depende del equilibrio entre control técnico y velocidad de desarrollo que el proyecto demande.
