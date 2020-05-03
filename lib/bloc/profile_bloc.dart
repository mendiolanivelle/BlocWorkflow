import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:blocworkflow/model/account.dart';
import 'package:equatable/equatable.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  @override
  ProfileState get initialState => ProfileInitial();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield ProfileInitial();
    if (event is OnClickLogout) {
      Account.imageURL = '';
      Account.username = '';
      Account.password = '';
      yield LogoutSuccess();
    }
  }
}
