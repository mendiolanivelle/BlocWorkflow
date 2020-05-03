import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operation_event.dart';
part 'operation_state.dart';

class OperationBloc extends Bloc<OperationEvent, OperationState> {
  @override
  OperationState get initialState => OperationInitial();

  @override
  Stream<OperationState> mapEventToState(
    OperationEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
