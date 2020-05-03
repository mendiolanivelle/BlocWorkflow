import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'operation_event.dart';
part 'operation_state.dart';

class OperationBloc extends Bloc<OperationEvent, OperationState> {
  double totalNumber = 0;

  @override
  OperationState get initialState => OperationInitial();

  @override
  Stream<OperationState> mapEventToState(
    OperationEvent event,
  ) async* {
    yield OperationInitial();
    if (event is OnClickAdd) {
      totalNumber += 1.0;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMinus) {
      totalNumber -= 1.0;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMultiply) {
      totalNumber *= 2.0;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickDivide) {
      totalNumber /= 2.0;
      yield OperationRefresh(totalNumber);
    }
  }
}
