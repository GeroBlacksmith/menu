do {
    Write-Host "1. Navegar al directorio del proyecto"
    Write-Host "2. Navegar al directorio de trabajo"
    Write-Host "0. Salir"
    $exit = "no"
    $input = Read-Host "Por favor, elige una opción"
    $paths = Get-Content 'config.txt'
    switch ($input) {
        '1' {
            Set-Location -Path $paths[0]
            Write-Host (Get-Location).Path
            break
        }
        '2' {
            Set-Location -Path $paths[1]
            Write-Host $paths[1]
            break
          
        }
        '0' {
            Write-Host "Saliendo..."
            $exit = "yes"
            break
        }
        default {
            Write-Host "Opción no válida. Por favor, intenta de nuevo."
        }
    }
} while ($exit -ne 'yes')