part of 'operation_bloc.dart';

abstract class OperationState extends Equatable {
  const OperationState();
}

class OperationInitial extends OperationState {
  @override
  List<Object> get props => [];
}

class OperationRefresh extends OperationState {
  final double result;

  OperationRefresh(this.result);
  @override
  // TODO: implement props
  List<Object> get props => [result];
}
