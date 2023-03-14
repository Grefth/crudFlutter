part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class CreateClientEvent extends UserEvent {
  final Users user;

  CreateClientEvent(this.user);

}
