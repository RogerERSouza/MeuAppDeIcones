import 'package:flutter/material.dart';

class PokemonPage extends StatefulWidget {

  final String nome;
  final String imagem;
  final int numero;

  final String tipo;
  final String peso;
  final String altura;

  final List<String> habilidades;
  final String descricao;

  const PokemonPage({
    super.key,

    required this.nome,
    required this.imagem,
    required this.numero,

    required this.tipo,
    required this.peso,
    required this.altura,

    required this.habilidades,
    required this.descricao,
  });

  @override
  State<PokemonPage> createState() =>
      _PokemonPageState();
}

class _PokemonPageState
extends State<PokemonPage> {

  bool shiny = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.nome),
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            children: [

              Image.network(

                shiny

                ? "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${widget.numero}.png"

                : widget.imagem,

                width: 100,
              ),

              const SizedBox(height:15),

              Text(

                "${widget.nome} #${widget.numero}",

                style: const TextStyle(

                  fontSize:28,

                  fontWeight:
                  FontWeight.bold,

                ),
              ),

              const SizedBox(height:25),

              Container(

                width: double.infinity,

                padding:
                const EdgeInsets.all(15),

                decoration: BoxDecoration(

                  color: Colors.grey[200],

                  borderRadius:
                  BorderRadius.circular(15),

                ),

                child: Column(

                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      "Tipo: ${widget.tipo}",
                    ),

                    const SizedBox(height:10),

                    Text(
                      "Peso: ${widget.peso}",
                    ),

                    const SizedBox(height:10),

                    Text(
                      "Altura: ${widget.altura}",
                    ),

                    const SizedBox(height:20),

                    const Text(

                      "Habilidades",

                      style: TextStyle(

                        fontSize:22,

                        fontWeight:
                        FontWeight.bold,

                      ),
                    ),

                    const SizedBox(height:10),

                    Column(

                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children:

                      widget.habilidades
                      .map(

                        (habilidade){

                          return Text(
                            "• $habilidade",
                          );

                        },

                      ).toList(),
                    ),

                    const SizedBox(height:20),

                    const Text(

                      "Descrição",

                      style: TextStyle(

                        fontSize:22,

                        fontWeight:
                        FontWeight.bold,

                      ),
                    ),

                    const SizedBox(height:10),

                    Text(
                      widget.descricao,
                    ),

                    const SizedBox(height:20),

                    Center(

                      child: ElevatedButton(

                        onPressed:(){

                          setState(() {

                            shiny = !shiny;

                          });

                        },

                        child: Text(

                          shiny
                          ? "Voltar Normal"
                          : "Mostrar Shiny",

                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}