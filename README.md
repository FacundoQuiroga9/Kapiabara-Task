Readme.md

## Contexto y Objetivos

Hola! Gracias por interesarte en ser parte de Kapibara 🤓

La tarea consiste de un problema con un ******scope****** reducido en el cual puedas mostrar tus habilidades programando. Un par de consideraciones:

1. Piensa que es algo que pasaríamos a producción pero de manera “cerrada”
2. Somos pocos en el equipo, preferimos **testear** en vez de trabajar un domingo en la tarde
3. Nos gusta trabajar con *[grugs brain software engineers](https://grugbrain.dev/)*
4. Los problemas que trabajamos son amplios, no tenemos soluciones únicas. Por favor asume cosas!
5. Puedes hacer la tarea usando los siguientes lenguajes:
    1. Ruby
    2. Python
    3. Golang
    4. Dart
6. Avísanos para darte los correos para agregar al repo o envíanos el url 💡

## Especificaciones

Tenemos operadores que saben programar, que actualizan día a día un listado de palabras claves que hoy manejan en un *google sheet*

Tenemos ********clientes******** que tienen información en texto que hoy quedan registrados en un *google sheet* aparte. Son ingresados vía API

Necesitamos crear un servicio que nos permita saber si existe o no una palabra en el texto, qué palabras aparecen, y un contexto al rededor de las palabras de unas 6 palabras.

A su vez el servicio debe ser capaz de poder cambiar las palabras claves.

👀 No es necesario hacer UI, pero suma puntos si existe

---

Por ejemplo, asumiendo una api:

Palabras claves en este momento: `perro` y `elit`

Request a un endpoint

{
  "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue imperdiet sem, nec mollis sapien eleifend sit amet. Nunc nec aliquam nunc. Morbi volutpat turpis vitae mauris iaculis aliquet. Sed varius libero quis mauris viverra, eget fermentum massa condimentum. Donec lorem urna, hendrerit id condimentum non, sodales a enim. Integer finibus ultricies semper. Curabitur vestibulum purus ac lectus tempus, venenatis commodo tellus ultricies. Sed lobortis volutpat sollicitudin."
}

Respuesta

{
  "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue imperdiet sem, nec mollis sapien eleifend sit amet. Nunc nec aliquam nunc. Morbi volutpat turpis vitae mauris iaculis aliquet. Sed varius libero quis mauris viverra, eget fermentum massa condimentum. Donec lorem urna, hendrerit id condimentum non, sodales a enim. Integer finibus ultricies semper. Curabitur vestibulum purus ac lectus tempus, venenatis commodo tellus ultricies. Sed lobortis volutpat sollicitudin."
  "alerts": [
    {
      "word": "elit"
      "count": 1,
      "context": "emet, consectetur adipiscing elit. Suspendisse congue imperdiet"
    }
  ]
}

# Instalación y ejecución
Funciona solo de manera local, ejecutando el archivo Interface.rb por consola.
