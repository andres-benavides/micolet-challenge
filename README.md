# README

## Descripción del Proyecto

Este proyecto utiliza Ruby 3.1.1 y Rails 7.0.8. Puedes ejecutarlo de manera sencilla a través de Docker para evitar problemas de compatibilidad con diferentes versiones o sistemas operativos.

## Instrucciones de Ejecución

**Clonar el Repositorio:**

Primero, clona el repositorio en tu máquina local:

```bash
git clone git@github.com:andres-benavides/micolet-challenge.git
```

**Navegar al Directorio:**
Luego, navega al directorio del proyecto: `cd micolet-challenge`

**Ejecutar el Proyecto:**

Ejecuta el comando `docker-compose` up o `docker compose up`, según la versión de Docker que tengas instalada

Una vez el contenedor este corriendo, como es la primera vez que se ejecuta el proyecto se deben hacer las migraciones y la precompilacion de css. Para esto, con el contenedor corriendo y en una nueva ventana de la termina ejecutamos los siguientes comandos:

para las migraciones:

```docker exec micolet-challenge-challenge-1 bundle exec rails db:migrate```

y luego para el CSS:

```docker exec micolet-challenge-challenge-1 bundle exec rails assets:precompile```

**Acceder al Proyecto:**

Una vez que el proyecto esté en funcionamiento, abre tu navegador web y accede a la siguiente dirección:

[http://127.0.0.1:8081](http://127.0.0.1:8081)

Deberías ver la página principal del proyecto, que incluye un botón que te llevará al formulario de suscripción al newsletter.

## Confirmación de Suscripción
Después de registrar un correo electrónico, puedes verificar si se ha enviado un correo electrónico de confirmación de suscripción. Esto se puede comprobar en la consola donde se está ejecutando el proyecto. Busca la información de envío similar a la siguiente:
```
NewslettersMailer#subscription_confirmation_email: processed outbound mail in 40.8ms
Delivered mail 650f618adf2ea_13a20-57c@andres-HP-Laptop-15-da0xxx.mail (91.0ms)
Date: Sat, 23 Sep 2023 22:07:06 +0000
From: noreply@micolet.com
To: #<Newsletter:0x00007f2802f79f50>
Message-ID: <650f618adf2ea_13a20-57c@andres-HP-Laptop-15-da0xxx.mail>
Subject: You are subscribed to our newsletter
```
