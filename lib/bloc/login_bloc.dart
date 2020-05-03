import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:blocworkflow/model/account.dart';
import 'package:equatable/equatable.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield LoginInitial();
    if (event is OnClickLogin) {
      Random random = Random();
      int id = random.nextInt(1000);
      String picture = 'https://i.picsum.photos/id/$id/250/250.jpg';
      Account.imageURL = picture;
      Account.username = event.username;
      Account.password = event.password;
      yield LoginSuccess();
    }
  }
}
