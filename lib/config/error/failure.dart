import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final String? error;

  ServerFailure({this.error});
  @override
  List<Object?> get props => [error];
}

class CacheFailure extends Failure {
  final String? error;

  CacheFailure({this.error});
  @override
  List<Object?> get props => [error];
}
