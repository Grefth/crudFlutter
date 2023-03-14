import 'package:flutter_app/widgets/programas/card_login.dart';
import 'package:flutter_app/widgets/programas/card_no_login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/screens/screens.dart';
import 'package:flutter_app/widgets/programas/card_programas.dart';
import 'package:flutter_app/widgets/widgets.dart';

import '../../BLoC/user/user_bloc.dart';

class Programas extends StatelessWidget {
  const Programas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text('Programas'),
          ),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                const CardClientes(),
                const CardProgramas(),
                _selectClient(state)
              ],
            );
          },
        )
      );
  }

  Widget _selectClient(UserState estado){
    return estado.existUser == true ? const CardLogin() : const CardNoLogin();

  }
}
