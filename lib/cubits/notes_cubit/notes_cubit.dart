import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes(){
    try{
      var noteBox=Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccess(notes:noteBox.values.toList()));
    }catch(e){
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
