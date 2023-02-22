part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesSuccess extends NotesState {}
class NotesFailure extends NotesState {

  final String errMessage;

  NotesFailure({required this.errMessage});
}
