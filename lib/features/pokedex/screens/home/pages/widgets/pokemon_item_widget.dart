import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/type_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);
  
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(pokemon.name),
          Row(
            children: [
              Column(
                children: pokemon.type
                  .map((e) => TypeWidget(
                    name: e
                  ))
                  .toList(),
              ),
              Image.network(pokemon.image),
            ],
          ),
        ],
      ),
    );
  }
}