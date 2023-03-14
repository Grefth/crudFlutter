part of 'user_bloc.dart';

@immutable
abstract class UserState {
  
  final bool? existUser;
  final Users? user;
    
  const UserState({
    this.existUser = false,
    this.user
  });
}


// ESTADO INICIAL DE LA APP SIN USUARIO LOGEADO
class UserInitialState extends UserState {
  const UserInitialState(): super(existUser: true, user: null);
}

//CREACION DE UN USUARIO
class CreateUserState extends UserState {
  final Users newUser;
  const CreateUserState(
    this.newUser
  ): super(existUser: true, user: newUser);
}
