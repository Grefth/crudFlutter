import 'package:flutter/material.dart';

class Lista2Screen extends StatelessWidget {
   
  final opciones = const ['enchiladas', 'sabritas', 'rufles']; 
  const Lista2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: const Text('Lista 2'),
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (context, index) => 
          ListTile(
            leading: const Icon(Icons.email), 
            title: Text(opciones[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              //final comida = opciones[index];
              //print(comida);
            },
          ), 
        separatorBuilder: ( _ , __ ) => const Divider(),
        ) 
    );
  }
}