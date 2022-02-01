import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';

class DropDownClass extends StatefulWidget {
  const DropDownClass({Key? key}) : super(key: key);

  @override
  State<DropDownClass> createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  final classList = [
    'Barbarian',
    'Bard',
    'Cleric',
    'Druid',
    'Fighter',
    'Monk',
    'Paladin',
    'Ranger',
    'Rogue',
    'Sorcerer',
    'Warlock',
    'Wizard',
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.white.withOpacity(1),
      value: value,
      items: classList.map(buildMenuItem).toList(),
      onChanged: (value) => setState(
        () {
          this.value = value as String?;
        },
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String classList) => DropdownMenuItem(
        value: classList,
        child: Text(
          classList,
          style: dropDownListTextStyle(),
        ),
      );
}
