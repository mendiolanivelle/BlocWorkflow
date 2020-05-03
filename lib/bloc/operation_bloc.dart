import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'operation_event.dart';
part 'operation_state.dart';

class OperationBloc extends Bloc<OperationEvent, OperationState> {
  double totalNumber;

  @override
  OperationState get initialState => OperationInitial();

  @override
  Stream<OperationState> mapEventToState(
    OperationEvent event,
  ) async* {
    yield OperationInitial();
    if (event is OnClickAdd) {
      OnClickAdd(event.firstNumber, event.secondNumber);
      totalNumber = event.firstNumber + event.secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMinus) {
      OnClickMinus(event.firstNumber, event.secondNumber);
      totalNumber = event.firstNumber + event.secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMultiply) {
      OnClickMultiply(event.firstNumber, event.secondNumber);
      totalNumber = event.firstNumber + event.secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickDivide) {
      OnClickDivide(event.firstNumber, event.secondNumber);
      totalNumber = event.firstNumber + event.secondNumber;
      yield OperationRefresh(totalNumber);
    }
  }
}
