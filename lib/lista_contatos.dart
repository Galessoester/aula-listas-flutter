import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_demo/modelos/contatos.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  final List<Contatos> lista = [
    Contatos('Bruno', 'bruno@gmail'),
    Contatos('Renan', 'gonsalez@gmail'),
    Contatos('Ester', 'galessoester@gmail'),
    Contatos('Guilherme', 'zapater@gmail'),
    Contatos('Alice', 'aliceb@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de contatos'),
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (_, i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(lista[i].nome[0]),
              ),
              title: Text(lista[i].nome),
              subtitle: Text(lista[i].email),
            );
          },
        ));
  }
}
