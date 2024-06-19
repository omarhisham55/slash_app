part of 'navigation_cubit.dart';

abstract class NavState extends Equatable {
  @override
  List<Object> get props => [];
}

class NavInitialState extends NavState {}

class NavIndexState extends NavState {
  final int index;

  NavIndexState({required this.index});
  @override
  List<Object> get props => [index];
}
