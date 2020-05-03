part of 'operation_bloc.dart';

abstract class OperationState extends Equatable {
  const OperationState();
}

class OperationInitial extends OperationState {
  @override
  List<Object> get props => [];
}
