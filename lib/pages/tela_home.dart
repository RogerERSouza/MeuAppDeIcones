import 'package:flutter/material.dart';

import '../models/pokemon.dart';
import '../widgets/card_pokemon.dart';
import 'pokemon_page.dart';

class TelaHome extends StatefulWidget {

  const TelaHome({super.key});

  @override
  State<TelaHome> createState() =>
      _TelaHomeState();
}

class _TelaHomeState
extends State<TelaHome> {

  List<bool> shiny = [

    false,
    false,
    false,
    false,

  ];

  List<Pokemon> pokemons = [

    Pokemon(

      nome:"Pikachu",

      numero:25,

      tipo:"Elétrico",

      peso:"6kg",

      altura:"0.4m",

      habilidades:[
        "Static",
        "Lightning Rod"
      ],

      descricao:
      "Quando vários Pikachu se juntam, sua energia elétrica pode causar tempestades.",

      cor:Colors.yellow,
    ),

    Pokemon(

      nome:"Froakie",

      numero:656,

      tipo:"Água",

      peso:"7kg",

      altura:"0.3m",

      habilidades:[
        "Torrent",
        "Protean"
      ],

      descricao:
      "Protege seu corpo criando bolhas suaves que reduzem impactos.",

      cor:Colors.lightBlue,
    ),

    Pokemon(

      nome:"Frogadier",

      numero:657,

      tipo:"Água",

      peso:"10.9kg",

      altura:"0.6m",

      habilidades:[
        "Torrent",
        "Protean"
      ],

      descricao:
      "Consegue saltar grandes distâncias e usa bolhas para se proteger.",

      cor:Colors.blue,
    ),

    Pokemon(

      nome:"Greninja",

      numero:658,

      tipo:"Água / Sombrio",

      peso:"40kg",

      altura:"1.5m",

      habilidades:[
        "Torrent",
        "Protean"
      ],

      descricao:
      "Move-se como um ninja silencioso e derrota inimigos rapidamente.",

      cor:Colors.indigo,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Minha Pokédex",
        ),
      ),

      body: SingleChildScrollView(

        child: Column(

          children:

          List.generate(

            pokemons.length,

            (index){

              Pokemon pokemon =
              pokemons[index];

              return CardPokemon(

                nome:
                pokemon.nome,

                numero:
                pokemon.numero,

                imagemNormal:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.numero}.png",

                imagemShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${pokemon.numero}.png",

                shiny:
                shiny[index],

                cor:
                pokemon.cor,

                onPressed:(){

                  setState(() {

                    shiny[index] =
                    !shiny[index];

                  });

                },

                onCardTap:(){

                  Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder:(context)=>PokemonPage(

                        nome:
                        pokemon.nome,

                        imagem:
                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.numero}.png",

                        numero:
                        pokemon.numero,

                        tipo:
                        pokemon.tipo,

                        peso:
                        pokemon.peso,

                        altura:
                        pokemon.altura,

                        habilidades:
                        pokemon.habilidades,

                        descricao:
                        pokemon.descricao,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}