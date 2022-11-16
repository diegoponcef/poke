import './common/mapper.dart';
import '../models/pokemon.dart';

class PokemonMapper extends Mapper<Pokemon> {
  
  @override
  Pokemon fromMap(Map<String, dynamic> json) {
    String name = json['name'] ?? '';
    String url = json['url'] ?? '';
    
    return Pokemon(name: name, url: url);
  }

  @override
  Map<String, dynamic>? toMap(Pokemon data) {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}