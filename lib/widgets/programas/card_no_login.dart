import 'package:flutter/material.dart';

class CardNoLogin extends StatelessWidget {
  const CardNoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: Center(
        child: Text('ESTA ES UNA CARD SIN LOGIN'),
      ),
    );
  }
}