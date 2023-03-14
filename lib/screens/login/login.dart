import 'package:flutter/material.dart';
import 'package:flutter_app/services/notifications_services.dart';
import 'package:flutter_app/themes/app_theme.dart';

class Login extends StatelessWidget {

  late final LocalNotifiactionService service;
  Login({super.key}){
    service = LocalNotifiactionService();
    service.initialize();
  }

  //VARIABLES DE LOGIN
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: Image.asset('assets/system/logo_login.png', height: 300)),
          const SizedBox(height: 15),
          _userTextField(),
          const SizedBox(height: 15),
          _passwordTextField(),
          const SizedBox(height: 20),
          _buttonLogin(),
          const SizedBox(height: 20),
          _buttonContinue()
        ],
      )),
    ));
  }

  //CORREO
  Widget _userTextField() {
    return StreamBuilder(builder: (context, snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          controller: user,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppTheme.appColor)),

            icon: Icon(Icons.email_outlined),
            iconColor: AppTheme.appColor,
            
            hintText: 'example@gmail.com',
            hintStyle: TextStyle(
              color: AppTheme.appColor,
            ),

            labelText: 'correo electronico',
            labelStyle: TextStyle(
              color: AppTheme.appColor
            ),
            
            focusColor: Colors.black,
            fillColor: Colors.amberAccent,
                        
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.appColor,
              ),
            ),
          ),
          onChanged: (valor) {},
        ),
      );
    });
  }

//PASWORD
  Widget _passwordTextField() {
    return StreamBuilder(builder: (_, snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          controller: password,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
              
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppTheme.appColor)),

              icon: Icon(Icons.lock_outline_sharp),
              iconColor: AppTheme.appColor,
              hintText: 'Constraseña',
              hintStyle: TextStyle(color: AppTheme.appColor),
              labelText: 'Contraseña',
              labelStyle: TextStyle(color: AppTheme.appColor),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.appColor))),
          onChanged: (valor) {},
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          child: const Text('INICIAR SESIÓN'),
        ),
        onPressed:  () async {
          //PODEMOS USAR  UN  SERVICIO DE DONDE VAMOS A VALIDAR EL USUARIO
          if (user.text == 'rumeles@live.com.mx' && password.text == '123456') {
            Navigator.pushReplacementNamed(context, 'Home');
            
            
          }else {

            await service.mostrarNotificacion();
          }
        },
      );
    });
  }


  //This button continued with the app without any users 
  Widget _buttonContinue() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 67, vertical: 10),
          child: const Text('Continuar sin cuenta'),
        ),
        onPressed: () {
          //PODEMOS USAR  UN  SERVICIO DE DONDE VAMOS A VALIDAR EL USUARIO
          Navigator.pushReplacementNamed(context, 'home');
        },
      );
    });
  }
}
