import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'entry_event.dart';
part 'entry_state.dart';

class HomeBloc extends Bloc<EntryEvent, EntryState> {
  HomeBloc() : super(EntryInitial()) {
    on<AddRecord>((event, emit) {
      String firstName = event.firstName;
      String lastName = event.lastName;
      print('Adding record: $firstName $lastName');
      emit(RecordAdded(firstName, lastName));
    });
  }
}
