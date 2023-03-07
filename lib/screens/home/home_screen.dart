//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/router/app_router.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {        
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),        
      ),
      drawer: Drawer(
        child: 
        ListView.separated(
          itemCount: AppRouter.menuOptions.length,
          itemBuilder: (context, index) =>           
          ListTile(
            leading: Icon(AppRouter.menuOptions[index].icon),
            title: Text(AppRouter.menuOptions[index].nombre),
            onTap: () {
              //final route = MaterialPageRoute(builder: (context) => const ListaScreen());
              Navigator.pushNamed(context, AppRouter.menuOptions[index].route);//navegacion con el nombre de la ruta
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}

//final wordPair = WordPair.random();
// Center(
      //   child: Text(wordPair.asPascalCase),
      // );