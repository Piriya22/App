part of 'entry_bloc.dart';

@immutable
sealed class EntryState {}

final class EntryInitial extends EntryState {}

class RecordAdded extends EntryState {
  final String firstName;
  final String lastName;

  RecordAdded(this.firstName, this.lastName);
}