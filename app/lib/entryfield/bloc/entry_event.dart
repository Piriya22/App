part of 'entry_bloc.dart';

@immutable
sealed class EntryEvent {}

class AddRecord extends EntryEvent {
  final String firstName;
  final String lastName;

  AddRecord(this.firstName, this.lastName);
}