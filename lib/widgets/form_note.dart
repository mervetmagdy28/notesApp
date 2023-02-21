import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class FormNote extends StatefulWidget {
  const FormNote({
    Key? key,
  }) : super(key: key);

  @override
  State<FormNote> createState() => _FormNoteState();
}

class _FormNoteState extends State<FormNote> {
  Color myColor = const Color(0xFFFFCD7A);
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Pick a color!'),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: myColor, //default color
                                  onColorChanged: (Color color) {
                                    //on color picked
                                    setState(() {
                                      myColor = color;
                                    });
                                  },
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        kPrimaryColor),
                                  ),
                                  child: const Text(
                                    'DONE',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); //dismiss the color picker
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: const Icon(
                      Icons.color_lens,
                    )),
              ],
            ),
          ),
          CustomTextField(
              hint: "title",
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
              hint: "content",
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              }),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'Add',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        date: formatDate(),
                        content: subTitle!,
                        color: myColor.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  String formatDate(){
    var time=DateTime.now();
    return DateFormat("d MMM yyyy").format(time);
  }
}
