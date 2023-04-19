import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewExemplo extends StatefulWidget {
  const ListViewExemplo({Key? key}) : super(key: key);

  @override
  State<ListViewExemplo> createState() => _ListViewExemploState();
}

class _ListViewExemploState extends State<ListViewExemplo> {
  final List<String> lista = List.generate(50, (index) => 'Item ${index}');
  //list generate serve para criar uma lista de x itens, contendo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: lista.length, //contador recebe o tamanho da lista
        itemBuilder: (_, i) {
          //'_' pode ser usado quando a variável não será utilizada, i de índice
          return ListTile(
            title: Text(lista[i]),
          );
        },
      ),
    );
  }
}
