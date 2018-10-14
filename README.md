

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
Tal como indica la guía de Microsoft, tienes que habilitar [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Abre PowerShell **como administrador**, y pega:
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Reinicia tu PC cuando termine el proceso.


### Paso 2
[Entra al link de Debian en Microsoft Store](https://www.microsoft.com/store/productId/9MSVKQC78PK6), o abre la Microsoft Store, y busca la distribución Debian. A continuación, instálala.