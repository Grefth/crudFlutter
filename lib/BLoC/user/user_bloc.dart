import 'package:bloc/bloc.dart';
import 'package:flutter_app/models/models.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    
    
    on<CreateClientEvent>((event, emit)  {

    });


    
  }
}
