import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';

class DropDownAlignment extends StatefulWidget {
  const DropDownAlignment({Key? key}) : super(key: key);

  @override
  State<DropDownAlignment> createState() => _DropDownAlignmentState();
}

class _DropDownAlignmentState extends State<DropDownAlignment> {
  final alignmentList = [
    'LG - Lawful Good',
    'NG - Neutral Good',
    'CG - Chaotic Good',
    'LN - Lawful Neutral',
    'N - Neutral',
    'CN - Chaotic Neutral',
    'LE - Lawful Evil',
    'NE - Neutral Evil',
    'CE - Chaotic Evil',

  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.white.withOpacity(1),
      isExpanded: false,
      value: value,
      items: alignmentList.map(buildMenuItem).toList(),
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
