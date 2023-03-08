part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {

  final bool    ? existUser;
  final String  ? user;

  UserInitial({ this.existUser, this.user});



}
