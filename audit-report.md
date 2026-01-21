# Informe de Auditoría Técnica - DemoAuditApp

**Auditor:** Rodrigo Flores
**Fecha:** 21/01/2026

## 1. Hallazgos Identificados
* **Validación:** El código usa int.Parse directamente sin verificar si el usuario ingresó un número válido.
* **Seguridad:** El programa se cierra inesperadamente si la entrada es incorrecta, lo que lo hace vulnerable.
* **Mantenibilidad:** No existen bloques try-catch para capturar errores en tiempo de ejecución.
* **Documentación:** Falta de comentarios XML y etiquetas de resumen en el código fuente.

## 2. Riesgos
* Alta probabilidad de fallos en producción por entradas de usuario inválidas.
* Dificultad para otros desarrolladores de entender el código por falta de documentación.

## 3. Recomendaciones
* Cambiar int.Parse por int.TryParse.
* Envolver la lógica principal en bloques try-catch.
* Agregar comentarios de documentación estándar de C#.