import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'operation_event.dart';
part 'operation_state.dart';

class OperationBloc extends Bloc<OperationEvent, OperationState> {
  double firstNumber;
  double secondNumber;
  double totalNumber;

  @override
  OperationState get initialState => OperationInitial();

  @override
  Stream<OperationState> mapEventToState(
    OperationEvent event,
  ) async* {
    yield OperationInitial();
    if (event is OnClickAdd) {
      OnClickAdd(this.firstNumber, this.secondNumber);
      totalNumber = firstNumber + secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMinus) {
      OnClickMinus(this.firstNumber, this.secondNumber);
      totalNumber = firstNumber + secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickMultiply) {
      OnClickMultiply(this.firstNumber, this.secondNumber);
      totalNumber = firstNumber + secondNumber;
      yield OperationRefresh(totalNumber);
    } else if (event is OnClickDivide) {
      OnClickDivide(this.firstNumber, this.secondNumber);
      totalNumber = firstNumber + secondNumber;
      yield OperationRefresh(totalNumber);
    }
  }
}
