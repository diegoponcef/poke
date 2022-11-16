import 'package:flutter/material.dart';
import '../infrastructure/models/pokemon.dart';

class PokeList extends StatelessWidget {
  final List<Pokemon> pokemons;

  const PokeList(this.pokemons);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        key: const Key("pokemonsList"),
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return ListTile(
            key: Key(pokemon.name),
            leading: Text(pokemon.name),
          );
        },
        itemCount: pokemons.length,
      ),
    );
  }
}
