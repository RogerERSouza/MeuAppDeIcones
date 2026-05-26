import 'package:flutter/material.dart';

class CardPokemon extends StatefulWidget {
  final String nome;
  final int numero;

  final String imagemNormal;
  final String imagemShiny;

  final Color cor;

  final bool shiny;

  final VoidCallback onPressed;
  final VoidCallback onCardTap;

  const CardPokemon({
    super.key,
    required this.nome,
    required this.numero,
    required this.imagemNormal,
    required this.imagemShiny,
    required this.cor,
    required this.shiny,
    required this.onPressed,
    required this.onCardTap,
  });

  @override
  State<CardPokemon> createState() => _CardPokemonState();
}

class _CardPokemonState extends State<CardPokemon> {
  bool passandoMouse = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          passandoMouse = true;
        });
      },
      onExit: (_) {
        setState(() {
          passandoMouse = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onCardTap,
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: widget.cor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: passandoMouse ? Colors.grey : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Image.network(
                widget.shiny ? widget.imagemShiny : widget.imagemNormal,
                width: 80,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nome,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Nº ${widget.numero}",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: widget.onPressed,
                      child: Text(
                        widget.shiny ? "Voltar normal" : "Mostrar Shiny",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
