part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class OnClickLogin extends LoginEvent {
  final String username;
  final String password;

  OnClickLogin(this.username, this.password);
  @override
  // TODO: implement props
  List<Object> get props => [username, password];
}
