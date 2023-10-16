import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'questao.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<String> perguntas = [
    "Qual é a sua cor favorita?",
    "Qual é o seu animal favorito?"
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print("${_perguntaSelecionada}");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu app"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta ${1}", _responder),
            Resposta("Resposta ${2}", _responder),
            Resposta("Resposta ${3}", _responder),
            Resposta("Resposta ${4}", _responder),
          ],
        ),
      ),
    );
  }
}
