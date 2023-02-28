import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});
  

  //VARIABLES DE LOGIN
  final user      = TextEditingController();
  final password  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Image.asset('assets/system/logo_login.png', height: 300)),
          const SizedBox(height: 15),
          _userTextField(),
          const SizedBox(height: 15),
          _passwordTextField(),
          const SizedBox(height: 20),
          _buttonLogin(),
        ],
      )),
    ));
  }


  //USUARIO
  Widget _userTextField() {
    return StreamBuilder(builder: (context, snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          controller: user,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email_outlined),
            hintText: 'example@gmail.com',
            labelText: 'correo electronico'
          ),
          onChanged: (valor){

          },
        ),
      );
    });
  }

//PASWORD
  Widget _passwordTextField() {
    return StreamBuilder(
      
      builder: ( _ , snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          controller: password,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock_outline_sharp),
            hintText: 'Constraseña',
            labelText: 'Contraseña'
          ),
          onChanged: (valor){

          },
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(builder: ( BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(        
        onPressed: (){

          //PODEMOS USAR  UN  SERVICIO DE DONDE VAMOS A VALIDAR EL USUARIO
          if (user.text == 'rumeles@live.com.mx' && password.text == '123456') {
            Navigator.popAndPushNamed(context, 'Home');
          }
        }, 
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          child: const Text('Iniciar Sesion'),
        ),
      );
    });
  }
}
