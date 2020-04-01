# Bot Slack

### Actualmente

- [ ] Hacer [tutorial](https://github.blog/2014-04-28-task-lists-in-all-markdown-documents/) 



### Introducción

Usaremos este bot para guardar contenido de los canales de slack en GiTHub llamándolo mediante comandos en Slack.

### Instalación 

#### Instalar Ruby

```shell
$ sudo apt-get update #Actualizamos
$ apt-get install ruby
$ apt-get install libyaml-ruby libzlib-ruby rubygems
```

#### Paquetes en Ruby

Las gemas de Ruby son paquetes de librerías para Ruby que se instalan en el sistema y quedan listas para ser usadas, con un simple *require* o con mecanismos que aporta el propio sistema de gemas para Ruby.

En distribuciones de GNU/Linux se nos habilita un comando, generalmente, que nos permite  agregar librerías. Ejemplo:

```ruby
require "json" # Si queremos usar esta libretis
```

```shell
$ sudo gem install --remote json # Debemos primero instalarla
```

```shell
$ sudo gem list --local # Para listar las instaladas
```

```shell
$ gem search --remote json # Para buscarlas (Existen +32 mil gemas)
```



##### Blunder

[Bundler](https://bundler.io/) es un manejador de dependencias para Ruby (Viene incluido con Rails pero no es exclusivo).

Ventajas:

- No tener que instalar una a una las gemas de las que depende un  proyecto, por lo que no es necesario mantener una documentación actualizada con la lista de gemas y la versión de cada una por si cambiamos de máquina o entra un nuevo integrante a  nuestro equipo.
- Ruby por defecto usa la última version de las gemas pero igual no es la que necesitas, esto es fácil de gestionar con bundler.

[Bundler](https://bundler.io/) es una gema, así que el primero paso es instalarlo con el siguiente comando:

```shell
$ gem install bundler
```

Para definir las dependencias de nuestro proyecto creamos un archivo de texto llamado `Gemfile` (sin extensión) en el que vamos a listar las gemas de las que depende nuestro proyecto:

```ruby
source 'https://rubygems.org' # URL de donde debe instalar las gemas

#Dependencias
gem 'nokogiri'   #Por defecto: Ultima version
gem 'sinatra', '1.4.7' # version exacta
gem 'rails', '>=4.2.7', '<5.0.0' # igual o mayor que 4.2.7, pero menor que 5.0.0
```

Una vez que tienes las gemas definidas en el `Gemfile`, puedes instalarlas en tu máquina local con el siguiente comando: 

```shell
$ bundle install
```

Este comando crea un archivo `Gemfile.lock` con las versiones de las gemas que se van a utilizar en el proyecto. Es buena práctica  agregar este archivo al sistema de control de versiones. Recuerda volver a ejecutar este comando cada vez que hagas cambios al archivo `Gemfile`.

### Librerias importantes

- slack-ruby-bot
- foreman: Lee los procesos que tiene que gestionar a partir de un fichero llamado `Procfile` en el directorio de la aplicación Rails, por lo que primero tenemos que crearlo.  Cada proceso se define mediante un nombre y dos puntos, así  como la ruta del proceso que queremos ejecutar, por lo que para nuestros tres procesos haremos lo siguiente:

### Crear un bot

Creamos un `.env` con el token del API y lo añadimos a  `.gitignore` (IMP).

```ruby
SLACK_API_TOKEN = "Inserte token aqui"
```



### Ayuda   | Recomendaciones

Librería: [slack-ruby-bot](https://github.com/slack-ruby/slack-ruby-bot)

Doc: [Yourfirstslackbotservice](https://code.dblock.org/2016/03/11/your-first-slack-bot-service-video.html)

Manejo de dependencias: [BUNDLER](https://blog.makeitreal.camp/manejo-de-dependencias-en-ruby-con-bundler/)

Leer y escribir en un fichero con Ruby: [Leeryescribirenunfichero](https://www.rubyguides.com/2015/05/working-with-files-ruby/)

Procesos en segundo plano con foreman: [foreman](http://railscasts.com/episodes/281-foreman?language=es&view=asciicast)

Puma (Servidor rapido y altamente concurrente): [puma](https://rubygems.org/gems/puma/versions/3.4.0?locale=es)



