import 'package:character_sheet/models/actions/dices.dart';
import 'package:character_sheet/models/creature/character/races/interface/standard_height_weight_calc.dart';

import '../races.dart';

class DragonBorn extends Races with StandardHeightWeightCalculation, Dices {
  @override
  String raceName = 'Dragonborn';
  @override
  double height = 1.62;
  @override
  double weight = 87.0;
  int heightDiceRolled = 0;
  int weightDiceRolled = 0;

  @override
  int baseSpeedWalk = 9;
  @override
  int raceStrength = 2;
  @override
  int raceDexterity = 0;
  @override
  int raceConstitution = 0;
  @override
  int raceIntelligence = 0;
  @override
  int raceWisdom = 0;
  @override
  int raceCharisma = 1;

  @override
  void heightCalculation() {
    heightDiceRolled = rollD8(6);
    (height += (heightDiceRolled.toDouble() / 100)).roundToDouble();
  }

  @override
  void weightCalculation() {
    weightDiceRolled = rollD6(2);
    (weight += ((weightDiceRolled.toDouble() * heightDiceRolled) / 5)).roundToDouble();
  }

}
