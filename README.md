

# Linuxbrew on Windows 10

## El escenario

Para algunos que estamos acostumbrados a trabajar en Linux o macOS en desarrollo, nos es un poco complicado pasar a Windows, ya que la terminal nativa no ofrece toda la funcionalidad que sí tenemos en estos sistemas.

Si bien, en Windows se pueden agregar algunas aplicaciones por separado como [Git-SCM](https://git-scm.com/) para Git, llegamos a un punto en el que nos damos cuenta que no es lo mismo que sólo usar un terminal, manejador de paquetes, que también administre sus dependencias, y que a la vez, se actualice periódicamente.

## Mi propuesta

### Linuxbrew
[Linuxbrew](https://linuxbrew.sh/) es una herramienta que permite hacer todo esto de forma muy sencilla. Está basado en la idea original de [Homebrew](https://brew.sh/) (macOS) y se ejecuta en sistemas operativos basados en Linux.

### WSL
Hoy en día, es posible instalar el Subsistema de Linux en Windows 10 como una aplicación nativa gracias a [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Es decir, podemos usar las "terminales" de algunas distribuciones, sin tener que recurrir a virtualizar o reiniciar.

### WSL + Linuxbrew? Por qué no?: Empieza la magia!
Hice este script para *llegar y usar*. Una vez instalado, podrás tener todas las funciones básicas de un Terminal. Incluyendo Linuxbrew.

### Requisitos

 - Windows 10 (incluso Home Single Language funciona)
 - Versión 1803 (para verla puedes abrir **cmd** y escribir **winver**)

### Paso 1
Tal como indica [la guía de Microsoft](https://docs.microsoft.com/en-us/windows/wsl/install-win10), tienes que habilitar WSL. Abre PowerShell **como administrador**, y pega:
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Reinicia tu PC cuando termine el proceso.


### Paso 2
[Entra al link de Debian en Microsoft Store](https://www.microsoft.com/store/productId/9MSVKQC78PK6), o abre la Microsoft Store, y busca la distribución Debian. A continuación, instálala.

### Paso 3
Cuando termine, busca en tus Apps instaladas en Windows, y ábrela.

Podrás ver que tienes todas las funciones básicas disponibles.

 - uname
 - ls
 - git
 - apt-get (moo)

Incluso puedes ver tu disco C, navegando en "la partición" /mnt/c/

No me crees?
```
cd /mnt/c/Users
ls -la
```
Intenta obtener este repositorio aprovechando git:

NOTA: Cambia donde dice **{tu_usuario}** por tu usuario actual

```
cd /mnt/c/Users/{tu_usuario}/Desktop
git clone https://github.com/sebacarrasco93/Win10-Linuxbrew
```

Al ir al escritorio en Windows, deberías encontrar la carpeta **Win10-Linuxbrew** :)

Vuelve a tu nueva consola, y posiciónate en el la carpeta recién creada
```
cd Win10-Linuxbrew
```

### Paso 4
Ejecuta el script
```
./run.sh
```

### Paso 5
¡Eso es todo! Ahora puedes probar con los comandos de brew
```
brew search php
```

### Paso 6 (opcional)
Si vas a interactuar siempre con tu Usuario real de Windows, te recomiendo crear un enlace simbólico (*symlink*) desde tu carpeta *home* de Debian, para que cada vez lo abras tengas acceso directo a tu escritorio, documentos, etc. Así, te evitas estar escribiendo siempre la ruta completa.

Puedes convertir esto:
```
cd /mnt/c/{tu_usuario}/Desktop -> Escritorio
cd /mnt/c/{tu_usuario}/Documents -> Documentos
cd /mnt/c/{tu_usuario}/Images -> Imágenes
```

A esto:
```
cd Desktop -> Escritorio
cd Documents -> Documentos
cd Images -> Imágenes
```

Para lograrlo, usa el comando ln
```
ln /mnt/c/{tu_usuario}/Desktop
```

También puedes ponerles nombres personalizados si pones el comando anterior, seguido del nombre (alias) que quieras asignarle
```
ln /mnt/c/{tu_usuario}/Documents Documentos
ln /mnt/c/{tu_usuario}/Images Imagenes
```

Ahora, cada vez que abras Debian tendrás en tu carpeta principal todas tus carpetas "reales" necesarias para empezar a trabajar inmediatamente con tus proyectos, así tendrás más a la mano tu querido Terminal, sus comandos, y tus archivos :)

Puedes comprobarlo tipeando `ls -al` en el home

Vas a ver el nombre de cada carpeta, y una flecha con la ruta completa a la cual apunta realmente.

Puedes agregar todos los symlinks que quieras, ya que son sólo "accesos directos"