import 'package:http/http.dart';
import 'package:practica2/models/personajes_response_model.dart';

class PersonajesService {
  final String _url = 'https://rickandmortyapi.com/api/character';

  Future<List<Personaje>> getPersonajes() async {
    List<Personaje> personajes = [];
    Uri uri = Uri.parse(_url);
    Response response = await get(uri);
    final personajesResponse = personajesResponseFromJson(response.body);
    personajes = personajesResponse.personajes;
    await Future.delayed(const Duration(seconds: 2));
    return personajes;
  }
}
