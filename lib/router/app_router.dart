import 'package:flutter_app/models/models.dart';
import 'package:flutter_app/screens/configuracion/index_configuracion.dart';
import 'package:flutter_app/screens/login/login.dart';

import '../screens/screens.dart';

class AppRouter {

  static const inicialRoute  = 'login';

  //DEFINICION DEL MENU DE LA APP
  static final menuOptions   = <MenuOption>[    
    MenuOption(route: 'login',  icon: Icons.credit_card,  nombre:'Login',          screen:  Login()),
    MenuOption(route: 'home',   icon: Icons.list,         nombre:'Home',           screen: const HomeScreen()),
    MenuOption(route: 'lista',  icon: Icons.list,         nombre:'Lista',          screen: const ListaScreen()),
    MenuOption(route: 'lista2', icon: Icons.list,         nombre:'Lista 2',        screen: const Lista2Screen()),
    MenuOption(route: 'lista3', icon: Icons.list,         nombre:'Programas',      screen: const Programas()),    
    MenuOption(route: 'config', icon: Icons.list,         nombre:'configuracion',  screen: const IndexConfiguracion()),    
    
  ];

  //CREACION DEL MENU
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var opcion in menuOptions) {
      appRoutes.addAll({opcion.route : (BuildContext context ) => opcion.screen});
    }
    return  appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'lista'   :(context) => const ListaScreen(),
  //       'lista2'  :(context) => const Lista2Screen(),
  //       'home'    :(context) => const HomeScreen(),
  //       'alert'   :(context) => const AlertScreen(),
  //       'card'    :(context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
        //print(settings);
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      }
}