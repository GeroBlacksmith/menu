do {
    Write-Host "1. Navegar al directorio del proyecto"
    Write-Host "0. Salir"

    $input = Read-Host "Por favor, elige una opción"
    switch ($input) {
        '1' {
            $path = Get-Content 'config.txt'
            Set-Location -Path $path
            Write-Host (Get-Location).Path
        }
        '0' {
            Write-Host "Saliendo..."
            break
        }
        default {
            Write-Host "Opción no válida. Por favor, intenta de nuevo."
        }
    }
} while ($input -ne '0')