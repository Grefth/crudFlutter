import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
   
  final opciones = const ['perros', 'gatos', 'pajaros', 'tortugas']; 
  const ListaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista 1'),
      ),
      body: ListView(
        children: [
          ...opciones.map((comida) => 
          ListTile(
            leading: const Icon(Icons.email), 
            title: Text(comida),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ).toList()
        ],
      ) 
    );
  }
}