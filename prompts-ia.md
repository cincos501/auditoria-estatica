# Registro de Uso de IA Generativa - Auditoría de Sistemas

Este documento detalla los prompts utilizados para cumplir con la actividad de Auditoría de Calidad basada en el estándar IEEE 1028.

## 1. Refinamiento del Checklist
**Prompt:**
> "Actúa como auditor de sistemas y experto en IEEE 1028. Necesito un checklist de pruebas estáticas para auditar una aplicación C# que evalúe: estándares de codificación, seguridad básica, mantenibilidad, documentación y buenas prácticas DevOps."

**Resultado:**
La IA generó una tabla comparativa con los puntos críticos del estándar IEEE 1028 aplicados a C#. Esto permitió identificar que el código base fallaba en validaciones de entrada (uso de int.Parse) y en la ausencia de manejo de excepciones.

## 2. Generación de Reglas Automáticas
**Prompt:**
> "Convierte el checklist generado en reglas automatizables para un script de PowerShell que pueda detectar fallos como el uso de 'int.Parse' y la ausencia de bloques 'try-catch' en archivos de C#."

**Resultado:**
Se obtuvo la lógica de búsqueda de patrones (pattern matching) necesaria para el script de auditoría automatizada, facilitando la detección de riesgos sin ejecutar la aplicación.

## 3. Mejora del Script y Configuración CI/CD
**Prompt:**
> "Ayúdame a crear un script 'audit-script.ps1' que devuelva un código de salida 1 si encuentra errores, para integrarlo en un archivo 'audit.yml' de GitHub Actions que frene el merge si la auditoría falla."

**Resultado:**
La IA proporcionó la estructura técnica del script de PowerShell y la configuración del flujo de trabajo de GitHub Actions, cumpliendo con el requisito de control preventivo automático.