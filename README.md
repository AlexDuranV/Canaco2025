# Proyecto Canaco

a

## Diagramas

### Caso de uso

![Engelbart](/Diagramas/CasoDeUso.png)

Para el inicio del desarrollo utilizamos un diagrama de casos de uso donde visualizabamos las interacciones del usuario con los diferentes componentes, basados en los requerimentos

## Diagrama de componentes

![Engelbart](/Diagramas/DiagramaDeComponentes.png)

*modificar la imagen y agregar descripcion

## Comparación entre Flutterflow y Laravel

### FlutterFlow

| Ventajas                                                                                                                                              | Desventajas                                                                                                                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| **Separación clara entre UI y datos:** FlutterFlow se  encarga de la interfaz, mientras Supabase gestiona  el backend, base de datos, auth y storage. | **Limitado control sobre el código generado:** No siempre es  limpio ni fácil de mantener fuera del entorno FlutterFlow.             |
| **Arquitectura modular visual:** Puedes crear componentes  reutilizables, flujos y navegación limpia sin escribir código.                             | **Difícil manejar lógica de negocio compleja:** No es ideal para  aplicaciones con flujos muy personalizados o algoritmos avanzados. |
| **Soporte para lógica condicional y flujos dinámicos:**  Puedes configurar reglas directamente en FlutterFlow sin programar.                          | **Dificultad para pruebas unitarias/automatizadas:** No hay soporte  directo para pruebas de software dentro de FlutterFlow.         |
| **Integración directa con Supabase (PostgreSQL):** No requiere  configuración externa, lo que simplifica la arquitectura.                             |                                                                                                                                      |

### Laravel

| Ventajas | Desventajas |
|----------|-------------|
|          |             |
|          |             |
|          |             |
|          |             |

## Conclusiones

Laravel, como framework backend robusto, permite un diseño completamente controlado y escalable, ideal para modelar con precisión la lógica de negocio. Este control, sin embargo, exige más tiempo de desarrollo, una curva de aprendizaje más alta y una configuración completa de infraestructura.

Por otro lado, FlutterFlow con Supabase ofrece un diseño altamente visual y orientado a componentes, permitiendo construir rápidamente interfaces funcionales y conectar con un backend gestionado sin necesidad de código complejo. Sin embargo, el diseño lógico se ve limitado por las herramientas visuales, lo cual puede dificultar la implementación de reglas de negocio complejas, flujos condicionales avanzados y pruebas formales.

En resumen, si el diseño de software requiere control preciso, mantenimiento a largo plazo y lógica compleja, Laravel es más adecuado. Pero si el enfoque es rapidez, validación de ideas, y un diseño de experiencia visual moderno con backend integrado, FlutterFlow y Supabase ofrecen una ventaja significativa en eficiencia y entrega temprana del producto. La elección depende del equilibrio entre control técnico y velocidad de desarrollo que el proyecto demande.
