part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

class NavigationChanged extends NavigationState{
  final int index;
  NavigationChanged({required this.index});
}
