$menuFolder = (Get-Location).Path 
$configFile = 'config.txt'
do {
    Write-Host "1. Navegar por las carpetas"
    Write-Host "0. Salir"

    $input = Read-Host "Por favor, elige una opción"
    switch ($input) {
        '1' {
            do {
                Write-Host "1. Navegar al directorio del proyecto"
                Write-Host "2. Navegar al directorio de trabajo"
                Write-Host "0. Volver"

                $input = Read-Host "Por favor, elige una opción"
                $paths = Get-Content $menuFolder + $configFile
                switch ($input) {
                    '1' {
                        Set-Location -Path $paths[0]
                        Write-Host (Get-Location).Path
                    }
                    '2' {
                        Set-Location -Path $paths[1]
                        Write-Host (Get-Location).Path
                    }
                    '0' {
                        Write-Host "Volviendo..."
                        break
                    }
                    default {
                        Write-Host "Opción no válida. Por favor, intenta de nuevo."
                    }
                }
            } while ($input -ne '0')
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