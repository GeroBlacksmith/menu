Para poder ejecutar tu script de PowerShell desde cualquier lugar sin tener que especificar la extensi&oacute;on del archivo, puedes hacer lo siguiente:

Aseg&uacute;rate de que la ubicaci&oacute;n de tu script est&eacute; en la variable de entorno PATH: La variable de entorno PATH es una lista de directorios en los que tu sistema operativo busca ejecutables. Si la ubicaci&oacute;n de tu script est&aacute; en la variable PATH, podr&aacute;s ejecutarlo desde cualquier lugar.

Para agregar la ubicaci&oacute;n de tu script a la variable PATH, puedes usar el siguiente comando en PowerShell (reemplaza path/to/your/script con la ruta real a tu script):

```
$env:PATH += ";path/to/your/script"
```

Ten en cuenta que este cambio solo afectar&aacute; a la sesi&oacute;n actual de PowerShell. Si quieres que sea permanente, tendr&aacute;s que modificar la variable de entorno PATH a nivel de sistema.

Crea un alias para tu script: Un alias te permite ejecutar un comando o script con un nombre corto de tu elecci&oacute;n. Puedes crear un alias para tu script en PowerShell con el siguiente comando (reemplaza menu con el nombre que quieras para el alias y menu.ps1 con el nombre real de tu script):

```
Set-Alias -Name menu -Value menu.ps1
```

Al igual que con la modificaci&oacute;n de la variable PATH, este cambio solo afectar&aacute; a la sesi&oacute;n actual de PowerShell. Si quieres que el alias sea permanente, tendr&aacute;s que agregar el comando Set-Alias a tu perfil de PowerShell.
