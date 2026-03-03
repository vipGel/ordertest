import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

class ApiFailure extends Failure {
  final int status;

  const ApiFailure({required super.message, required this.status});

  @override
  List<Object> get props => [message, status];
}

class NoNetFailure extends Failure {
  const NoNetFailure({required super.message});
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({required super.message});
}
