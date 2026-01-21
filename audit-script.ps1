# audit-script.ps1 - Script de Auditoría Basado en IEEE 1028
$target = "./DemoAuditApp/Program.cs"
$errorsFound = 0

Write-Host "--- Iniciando Auditoría Automática (Control Preventivo) ---" -ForegroundColor Cyan

# Regla 1: Estándares de seguridad (Evitar int.Parse directo) [cite: 12, 15]
if (Select-String -Path $target -Pattern "int.Parse") {
    Write-Host "[FALLO] Seguridad: Uso de int.Parse detectado. Riesgo de crash." -ForegroundColor Red
    $errorsFound++
}

# Regla 2: Mantenibilidad (Manejo de excepciones) [cite: 13, 90]
if (-not (Select-String -Path $target -Pattern "try")) {
    Write-Host "[FALLO] Mantenibilidad: No se encontró bloque 'try-catch'." -ForegroundColor Red
    $errorsFound++
}

# Regla 3: Documentación (Comentarios XML) [cite: 14, 91]
if (-not (Select-String -Path $target -Pattern "///")) {
    Write-Host "[FALLO] Documentación: Faltan comentarios XML (///)." -ForegroundColor Red
    $errorsFound++
}

# Resultado para el Pipeline de CI/CD [cite: 32]
if ($errorsFound -gt 0) {
    Write-Host "`nAuditoría fallida: $errorsFound hallazgos." -ForegroundColor Yellow
    exit 1  # Esto frena el despliegue
} else {
    Write-Host "`nAuditoría exitosa: Código cumple los estándares." -ForegroundColor Green
    exit 0
}