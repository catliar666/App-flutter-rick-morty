// To parse this JSON data, do
//
//     final personajesResponse = personajesResponseFromJson(jsonString);

import 'dart:convert';

PersonajesResponse personajesResponseFromJson(String str) => PersonajesResponse.fromJson(json.decode(str));

class PersonajesResponse {
    List<Personaje> personajes;

    PersonajesResponse({
        required this.personajes,
    });

    factory PersonajesResponse.fromJson(Map<String, dynamic> json) => PersonajesResponse(
        personajes: List<Personaje>.from(json["results"].map((x) => Personaje.fromJson(x))),
    );
}

class Personaje {
    int id;
    String name;
    String status;
    String species;
    String type;
    String gender;
    Location location;
    String image;

    Personaje({
        required this.id,
        required this.name,
        required this.status,
        required this.species,
        required this.type,
        required this.gender,
        required this.location,
        required this.image,
    });

    factory Personaje.fromJson(Map<String, dynamic> json) => Personaje(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        location: Location.fromJson(json["location"]),
        image: json["image"],
    );
}

class Location {
    String name;
    String url;

    Location({
        required this.name,
        required this.url,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
    );
}
