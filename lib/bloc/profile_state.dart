part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}

class LogoutSuccess extends ProfileState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
