import 'package:flutter/material.dart';
import 'package:flutter_app/themes/app_theme.dart';
 
class MenuLateral {
 
  static int selectedDrawerIndex = 1;
 
  static final _drawerItems = [
    DrawerItem("Perfil",        Icons.person),
    DrawerItem("Ver eventos",   Icons.access_alarm),
    DrawerItem("Crear eventos", Icons.add_alarm),
    DrawerItem("Ver consejos",  Icons.web),
    DrawerItem("Aviso legal",   Icons.info)
  ];
 
  //Funcion para generar el menu de la aplicacion
  static Widget getMenu(BuildContext context) {
    //final prefs = UserPreferences();
    List<Widget> drawerOptions = [];
    // armamos los items del menu
    for (var i = 0; i < _drawerItems.length; i++) {
      var d = _drawerItems[i];
      drawerOptions.add(
        ListTile(
        leading: Icon(d.icon),
        title: Text(d.title),
        selected: i == selectedDrawerIndex,
        onTap: () => _onTapDrawer(i, context),
      ));
    }
 
    // menu lateral
    return 
    Drawer(
      
      backgroundColor: AppTheme.appColor,
      child: Column(
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text('RUBEN GONZALEZ'), accountEmail: Text('ruben@leapfinancial.com')),
          Column(children: drawerOptions)
        ],
      ),
    );



  }
  // this function modify the position on drawer
  // Author Ruben Gonzalez
  static _onTapDrawer(int itemPos, BuildContext context){
    Navigator.pop(context); // cerramos el drawer
    selectedDrawerIndex = itemPos;
  }
}


//CLASES AUXILIARES
 class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}