import 'package:character_sheet/models/dropdown/drop_down_alignment.dart';
import 'package:character_sheet/models/dropdown/drop_down_class.dart';
import 'package:character_sheet/models/dropdown/drop_down_race.dart';
import 'package:flutter/material.dart';

class CharacterAccountForm extends StatefulWidget {
  const CharacterAccountForm({Key? key}) : super(key: key);

  @override
  _CharacterAccountFormState createState() => _CharacterAccountFormState();
}

class _CharacterAccountFormState extends State<CharacterAccountForm> {
  final name = TextEditingController();
  final background = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formTextField('Name', name),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Card(
                shape: myInputBorder(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 3.0),
                  child: Row(
                    children: [
                      Text(
                        'Race:  ',
                        style: myStatsTextStyleTextField(),
                      ),
                      const FittedBox(
                        fit: BoxFit.fill,
                        child: DropDownRace(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Card(
                shape: myInputBorder(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 3.0),
                  child: Row(
                    children: [
                      Text(
                        'Class:  ',
                        style: myStatsTextStyleTextField(),
                      ),
                      const FittedBox(
                        fit: BoxFit.fill,
                        child: DropDownClass(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ), // RACE AND CLASS - DROPDOWNLIST
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Card(
                shape: myInputBorder(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Alignment:  ',
                        style: myStatsTextStyleTextField(),
                      ),
                      const FittedBox(
                        fit: BoxFit.contain,
                        child: DropDownAlignment(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ), // ALIGNMENT DROPDOWNLIST
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: charactersMultipleLinesFormTextField('Background', Icons.book, background),
          ),
        ), // BACKGROUND TEXTFIELD
      ],
    );
  }
}

TextFormField formTextField(String text, TextEditingController textController) {

  return TextFormField(
    controller: textController,
    style: myTextStyleTextField(),
    decoration: InputDecoration(
      labelText: text.toString(),
      border: myInputBorder(),
      enabledBorder: myInputBorder(),
      focusedBorder: myFocusBorder(),
      labelStyle: myStatsTextStyleTextField(),
    ),
  );
}

OutlineInputBorder myInputBorder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextField
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900,
        width: 0.5,
      ));
}

OutlineInputBorder myFocusBorder() {
  return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900,
        width: 0.5,
      ));
}

TextStyle myTextStyleTextField() {
  return const TextStyle(
    fontSize: 12.0,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

TextStyle myStatsTextStyleTextField() {
  return TextStyle(
    fontSize: 12.0,
    fontFamily: 'Montserrat',
    color: Colors.cyan.shade800,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );
}

TextFormField charactersMultipleLinesFormTextField(String text, IconData iconName, TextEditingController textController) {

  return TextFormField(
    keyboardType: TextInputType.multiline,
    minLines: 10,
    maxLines: 15,
    controller: textController,
    style: myTextStyleTextField(),
    decoration: InputDecoration(
      labelText: text.toString(),
      border: myInputBorder(),
      enabledBorder: myInputBorder(),
      focusedBorder: myFocusBorder(),
      prefixIcon: Icon(
        iconName,
        color: Colors.cyan.shade800,
      ),
      labelStyle: TextStyle(
        color: Colors.cyan.shade800,
      ),
    ),
  );
}
