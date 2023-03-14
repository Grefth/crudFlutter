//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/router/app_router.dart';
import 'package:flutter_app/services/notifications_services.dart';
import '../../models/users_model.dart';

class HomeScreen extends StatelessWidget {

  static Users user = Users('invitado', 'example@gmail.com');
  late final LocalNotifiactionService service;

  HomeScreen({super.key}){
    service = LocalNotifiactionService();
    service.initialize();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () async {
              // showMaterialModalBottomSheet(
              //   context: context,
              //   builder: (context) => Container(),
              // );
              //print('comida de notificaciones');
              await service.mostrarNotificacion(); 

            },
          )
        ],
      ),
      drawer: Drawer(
        child:
        ListView.separated(
          itemCount: AppRouter.menuOptions.length,
          itemBuilder: (context, index) =>
          ListTile(
            leading: Icon(AppRouter.menuOptions[index].icon),
            title: Text(AppRouter.menuOptions[index].nombre ?? '' ),
            onTap: () {
              //final route = MaterialPageRoute(builder: (context) => const ListaScreen());
              Navigator.pushNamed(context, AppRouter.menuOptions[index].route);//navegacion con el nombre de la ruta
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
      body: Center(
        child: Text('Bienve nido ${user.nombre}'),
      ),
    );
  }
}

//final wordPair = WordPair.random();
// Center(
      //   child: Text(wordPair.asPascalCase),
      // );