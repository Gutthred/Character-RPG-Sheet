
import 'package:character_sheet/models/creature/character/skills_scores_model.dart';
import 'package:character_sheet/models/creature/character/stats_model.dart';

import 'character_levelling_model.dart';

class Character {
  final int id;
  final String name;
  final String race;
  final String characterClass;
  final String userImage;
  CharacterLevelling level = CharacterLevelling();
  Stats stats = Stats();
  late SkillsScores pS;

  late int curLevel = level.currentLevel;

  Character({
    required this.id,
    required this.name,
    required this.race,
    required this.characterClass,
    required this.userImage,
  });
}

