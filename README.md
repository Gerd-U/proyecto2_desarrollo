Instalación de Flutter y creación de un proyecto

1. Requisitos

Antes de comenzar, se deben instalar las siguientes herramientas:

Visual Studio Code: editor donde se desarrollará el proyecto.
https://code.visualstudio.com/download

Git: necesario para instalar y utilizar Flutter.
https://git-scm.com/downloads/win

Google Chrome: navegador donde se ejecutará la aplicación.
https://www.google.com/chrome/

Android Studio (opcional): permite instalar Android SDK y utilizar emuladores para probar aplicaciones móviles.
https://developer.android.com/studio

2. Instalar las extensiones de Flutter y Dart
   1. Abrir Visual Studio Code.
   2. Presionar Ctrl + Shift + X para abrir las extensiones.
   3. Buscar Flutter e instalar la extensión publicada por Dart Code.
   4. La extensión Dart se instalará automáticamente.

3. Instalar Flutter SDK y configurarlo en el PATH

   El PATH permite que Windows reconozca comandos como flutter desde la terminal. Para instalar y configurar Flutter:
   1. En VS Code, presionar Ctrl + Shift + P y buscar Flutter: New Project.
   2. Seleccionar Download SDK.
   3. Elegir una carpeta, por ejemplo C:\dev, y presionar Clone Flutter.
   4. Seleccionar Add SDK to PATH cuando aparezca la opción.
   5. Cerrar VS Code y volver a abrirlo.
   6. Abrir la terminal y comprobar la instalación:
      "flutter --version"

   Si aparece la versión de Flutter, la instalación fue correcta.
   Si Flutter no se reconoce: buscar en Windows Editar las variables de entorno de esta cuenta, entrar en Path → Editar → Nuevo y agregar la ubicación de la carpeta bin de Flutter, por ejemplo:
   C:\dev\flutter\bin
   Guardar los cambios y reiniciar VS Code.

   Guía oficial: https://docs.flutter.dev/install/with-vs-code

4. Configurar Android Studio (opcional)

   Si se desea desarrollar y probar aplicaciones Android:
   1. Abrir Android Studio.
   2. Entrar en More Actions → SDK Manager.
   3. Instalar Android SDK y sus herramientas.
   4. Para crear un emulador, entrar en Device Manager → Create Virtual Device.
      Aceptar las licencias desde la terminal de VS Code:
      "flutter doctor --android-licenses"

5. Verificar la instalación

   Abrir la terminal de VS Code y ejecutar:
   flutter doctor
   Este comando muestra las herramientas instaladas e indica si falta configurar algún componente.
   Para comprobar los dispositivos disponibles:
   flutter devices 6. Crear un proyecto Flutter
   1. Abrir Visual Studio Code.
   2. Presionar Ctrl + Shift + P.
   3. Buscar Flutter: New Project.
   4. Seleccionar Application.
   5. Elegir la carpeta donde se guardará el proyecto.
   6. Escribir un nombre en minúsculas, por ejemplo tarjeta_presentacion.
      También se puede crear desde la terminal:
      flutter create tarjeta_presentacion
      cd tarjeta_presentacion
      code .

6. Ejecutar el proyecto
   Para ejecutar la aplicación en Google Chrome, abrir la terminal de VS Code y escribir:
   flutter run -d chrome
   Flutter abrirá la aplicación en el navegador.
   Nota: Dart viene incluido con Flutter, por lo que no es necesario instalarlo por separado. Android Studio tampoco es obligatorio para ejecutar esta práctica en Chrome.
