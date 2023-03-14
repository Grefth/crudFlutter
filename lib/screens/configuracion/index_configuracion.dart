import 'package:flutter/material.dart';

class IndexConfiguracion extends StatelessWidget {
  
  const IndexConfiguracion({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('configuracion'),
        ),
      ),
      body: const Card(
        child: Text('CONFIGURACION'),
        ),
    );
  }
}