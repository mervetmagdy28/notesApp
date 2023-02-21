import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  List<NoteModel>fetchNotes(){
      var noteBox= Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>? notes=noteBox.values.toList();
      return notes;
  }
}
