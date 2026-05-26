import 'package:flutter/material.dart';

class Pokemon {

  final String nome;
  final int numero;

  final String tipo;
  final String peso;
  final String altura;

  final List<String> habilidades;
  final String descricao;

  final Color cor;

  Pokemon({

    required this.nome,
    required this.numero,

    required this.tipo,
    required this.peso,
    required this.altura,

    required this.habilidades,
    required this.descricao,

    required this.cor,
  });
}