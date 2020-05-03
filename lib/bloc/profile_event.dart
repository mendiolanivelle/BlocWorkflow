part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class OnClickLogin extends ProfileEvent {
  final String username;
  final String password;

  OnClickLogin(this.username, this.password);
  @override
  // TODO: implement props
  List<Object> get props => [username, password];
}
