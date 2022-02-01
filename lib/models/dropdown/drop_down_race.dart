import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';

class DropDownRace extends StatefulWidget {
  const DropDownRace({Key? key}) : super(key: key);

  @override
  State<DropDownRace> createState() => _DropDownRaceState();
}

class _DropDownRaceState extends State<DropDownRace> {
  final raceList = [
    'Human',
    'Elf',
    'Dwarf',
    'Gnome',
    'Halfling',
    'Tiefling',
    'Half-Orc',
    'Half-Elf',
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.white.withOpacity(1),
      value: value,
      items: raceList.map(buildMenuItem).toList(),
      onChanged: (value) => setState(() => this.value = value as String?),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String raceList) => DropdownMenuItem(
        value: raceList,
        child: Text(
          raceList,
          style: dropDownListTextStyle(),
        ),
      );
}
