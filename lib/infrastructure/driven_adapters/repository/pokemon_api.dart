import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:poke/infrastructure/mappers/pokemon_mapper.dart';

import '../../models/pokemon.dart';

class PokemonApi {
  static const apiUrl = "https://pokeapi.co/api/v2/pokemon";

  Future<List<Pokemon>> fetchPokemons() async {
    try {
      final response = await http.get(Uri.https(apiUrl));
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Future.value(jsonResponse['results']
            .map((element) => PokemonMapper().fromMap(element))
            .toList());
      }
    } catch (error) {
      print(error);
    }
    return Future.value([]);
  }
}
