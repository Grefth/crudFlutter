import 'package:flutter_app/screens/screens.dart';
import 'package:flutter_app/widgets/programas/card_programas.dart';
import 'package:flutter_app/widgets/widgets.dart';

class Programas extends StatelessWidget {
  const Programas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardClientes(),          
          CardProgramas(),          
        ],
      )
    );
  }
}