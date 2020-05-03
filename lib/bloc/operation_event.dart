part of 'operation_bloc.dart';

abstract class OperationEvent extends Equatable {
  const OperationEvent();
}

class OnClickAdd extends OperationEvent {
  final double firstNumber;
  final double secondNumber;

  OnClickAdd(this.firstNumber, this.secondNumber);
  @override
  // TODO: implement props
  List<Object> get props => [firstNumber, secondNumber];
}

class OnClickMinus extends OperationEvent {
  final double firstNumber;
  final double secondNumber;

  OnClickMinus(this.firstNumber, this.secondNumber);
  @override
  // TODO: implement props
  List<Object> get props => [firstNumber, secondNumber];
}

class OnClickMultiply extends OperationEvent {
  final double firstNumber;
  final double secondNumber;

  OnClickMultiply(this.firstNumber, this.secondNumber);
  @override
  // TODO: implement props
  List<Object> get props => [firstNumber, secondNumber];
}

class OnClickDivide extends OperationEvent {
  final double firstNumber;
  final double secondNumber;

  OnClickDivide(this.firstNumber, this.secondNumber);
  @override
  // TODO: implement props
  List<Object> get props => [firstNumber, secondNumber];
}
