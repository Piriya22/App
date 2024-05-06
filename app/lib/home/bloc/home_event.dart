part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class AddRecordEvent extends HomeEvent {
  final String firstName;
  final String lastName;

  AddRecordEvent(this.firstName, this.lastName);
}