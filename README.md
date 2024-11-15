# Rick and Morty Flutter App

Esta aplicación Flutter muestra una lista de personajes de la serie **Rick and Morty**, obtenida de una API pública, con un diseño interactivo y moderno.

## Estructura de la aplicación

### `MaterialApp`
- La aplicación está construida alrededor de un widget `MaterialApp`.
- Dentro de `MaterialApp`, el atributo `home` apunta a una pantalla principal que utiliza un `HomeScreenFb` para cargar los datos completos de la aplicación.

### AppBar
- El `AppBar` incluye:
  - **Un botón a la izquierda**.
  - **Un botón a la derecha**.
  - **Un logo de Rick and Morty** en el centro, implementado con un widget `Image.asset`.

### Cuerpo de la pantalla principal
- El cuerpo comienza con un `CustomScrollView` para estructurar el contenido de forma flexible:
  - **Un banner inicial fijo**: Este banner permanece en su lugar cuando se hace scroll.
  - **Una lista de personajes dinámica**: Cargada a través de un `FutureBuilder` que obtiene los datos de la API y permite hacer scroll sobre la lista sin afectar el banner inicial.

## Detalles del FutureBuilder

- Dentro del `FutureBuilder`, se ha creado un widget personalizado llamado `Scroll`.
- Este widget está compuesto por una lista de personajes que llama a un widget personalizado llamado `PersonajeViewWidget` el cual tiene a su vez dos sub-widgets llamados `PersonajeImage` y `PersonajeDetails`:
  - **PersonajeImage**: Un widget para mostrar la imagen del personaje.
  - **PersonajeDetails**: Un widget que presenta detalles como el nombre, el estado del personaje, la especie, el lugar de residencia y el género de este.
- Para estructurar el contenido de `PersonajeView` se han utilizado los siguientes widgets:
  - **Row y Column**: Para alinear y organizar los elementos visuales.
  - **Padding**: Para agregar márgenes y espaciamiento entre los elementos.
  - **Text**: Para mostrar la información textual del personaje.
  - **Otros widgets** según las necesidades de diseño.

## Características Técnicas

### Integración de API
- La aplicación obtiene datos de una API pública de Rick and Morty.
- La lista de personajes se genera dinámicamente en función de la respuesta de la API y es pintada con un `ListView.builder`.

### Diseño Responsivo
- Uso de widgets como `CustomScrollView`, `FutureBuilder`, `Row`, `Column` y otros para garantizar una experiencia de usuario fluida y adaptativa.

### Gestión de Recursos
- El logo de Rick and Morty se incluye como un recurso local utilizando `Image.asset`.
- El fondo del banner se incluye como un recurso local utilizando `Image.asset`.
- Las imágenes de los personajes son recursos de la api y han sido expuestas utilizando `Image.network`.

## Cómo ejecutar la aplicación

1. Asegúrate de tener Flutter instalado en tu sistema.
2. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/rick-and-morty-flutter-app.git

## Creador
- Proyecto realizado por Maria Ordoñez Izquierdo para la asignatura de Programación Móvil.
