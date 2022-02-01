import 'package:flutter/material.dart';

class SkillsScores {
  final int id;
  final String traitName;
  final String traitDescription;
  final IconData traitIcon;
  bool isChecked;
  int isCheckedSum = 0;

  SkillsScores({
    required this.id,
    required this.traitName,
    required this.traitIcon,
    required this.isChecked,
    required this.traitDescription,
  });

  void checkedSum() {
    if (isChecked == true) {
      isCheckedSum += 1;
    } else {
      isCheckedSum -= 1;
    }
  }
}

final List<SkillsScores> skillsScoresList = [
  _athletics,
  _acrobatics,
  _sleightOfHand,
  _stealth,
  _arcana,
  _history,
  _investigation,
  _nature,
  _religion,
  _animalHandling,
  _insight,
  _medicine,
  _perception,
  _survival,
  _deception,
  _intimidation,
  _performance,
  _persuasion,
];

final _athletics = SkillsScores(
  id: 1,
  traitName: 'Athletics',
  traitIcon: Icons.fitness_center,
  isChecked: false,
  traitDescription: 'A Strength based skill.',
);

final _acrobatics = SkillsScores(
  id: 2,
  traitName: 'Acrobatics',
  traitIcon: Icons.directions_run,
  isChecked: false,
  traitDescription: 'A Dexterity based skill.',
);

final _sleightOfHand = SkillsScores(
  id: 3,
  traitName: 'Sleight of Hand',
  traitIcon: Icons.directions_run,
  isChecked: false,
  traitDescription: 'A Dexterity based skill.',
);

final _stealth = SkillsScores(
  id: 4,
  traitName: 'Stealth',
  traitIcon: Icons.directions_run,
  isChecked: false,
  traitDescription: 'A Dexterity based skill.',
);

final _arcana = SkillsScores(
  id: 5,
  traitName: 'Arcana',
  traitIcon: Icons.school,
  isChecked: false,
  traitDescription: 'An Intelligence based skill.',
);

final _history = SkillsScores(
  id: 6,
  traitName: 'History',
  traitIcon: Icons.school,
  isChecked: false,
  traitDescription: 'An Intelligence based skill.',
);

final _investigation = SkillsScores(
  id: 7,
  traitName: 'Investigation',
  traitIcon: Icons.school,
  isChecked: false,
  traitDescription: 'An Intelligence based skill.',
);

final _nature = SkillsScores(
  id: 8,
  traitName: 'Nature',
  traitIcon: Icons.school,
  isChecked: false,
  traitDescription: 'An Intelligence based skill.',
);

final _religion = SkillsScores(
  id: 9,
  traitName: 'Religion',
  traitIcon: Icons.school,
  isChecked: false,
  traitDescription: 'An Intelligence based skill.',
);

final _animalHandling = SkillsScores(
  id: 10,
  traitName: 'Animal Handling',
  traitIcon: Icons.self_improvement,
  isChecked: false,
  traitDescription: 'A Wisdom based skill.',
);

final _insight = SkillsScores(
  id: 11,
  traitName: 'Insight',
  traitIcon: Icons.self_improvement,
  isChecked: false,
  traitDescription: 'A Wisdom based skill.',
);

final _medicine = SkillsScores(
  id: 12,
  traitName: 'Medicine',
  traitIcon: Icons.self_improvement,
  isChecked: false,
  traitDescription: 'A Wisdom based skill.',
);

final _perception = SkillsScores(
  id: 13,
  traitName: 'Perception',
  traitIcon: Icons.self_improvement,
  isChecked: false,
  traitDescription: 'A Wisdom based skill.',
);

final _survival = SkillsScores(
  id: 14,
  traitName: 'Survival',
  traitIcon: Icons.self_improvement,
  isChecked: false,
  traitDescription: 'A Wisdom based skill.',
);

final _deception = SkillsScores(
  id: 15,
  traitName: 'Deception',
  traitIcon: Icons.theater_comedy,
  isChecked: false,
  traitDescription: 'A Charisma based skill.',
);

final _intimidation = SkillsScores(
  id: 16,
  traitName: 'Intimidation',
  traitIcon: Icons.theater_comedy,
  isChecked: false,
  traitDescription: 'A Charisma based skill.',
);

final _performance = SkillsScores(
  id: 17,
  traitName: 'Performance',
  traitIcon: Icons.theater_comedy,
  isChecked: false,
  traitDescription: 'A Charisma based skill.',
);

final _persuasion = SkillsScores(
  id: 18,
  traitName: 'Persuasion',
  traitIcon: Icons.theater_comedy,
  isChecked: false,
  traitDescription: 'A Charisma based skill.',
);
