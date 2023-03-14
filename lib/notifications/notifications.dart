import 'package:flutter/material.dart';
import "package:flutter_app/screens/screens.dart";


class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => false,
      builder: (context) {
        return ListView(children: const [
          Text('Elemento1'), 
          Text('Elemento2')],
          );
        },      
    );
  }
}