part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class RecordAdded extends HomeState {
  final String firstName;
  final String lastName;

  RecordAdded(this.firstName, this.lastName);
}
