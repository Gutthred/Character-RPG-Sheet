import 'package:character_sheet/models/actions/dices.dart';
import 'package:character_sheet/models/creature/character/races/interface/standard_height_weight_calc.dart';

import '../races.dart';

class MountainDwarf extends Races with StandardHeightWeightCalculation, Dices {
  @override
  String raceName = 'Mountain Dwarf';
  @override
  double height = 1.22;
  @override
  double weight = 65.0;
  int heightDiceRolled = 0;
  int weightDiceRolled = 0;

  @override
  int baseSpeedWalk = 8;
  @override
  int raceStrength = 0;
  @override
  int raceDexterity = 0;
  @override
  int raceConstitution = 2;
  @override
  int raceIntelligence = 0;
  @override
  int raceWisdom = 0;
  @override
  int raceCharisma = 0;

  @override
  void heightCalculation() {
    heightDiceRolled = rollD4(6);
    (height += (heightDiceRolled.toDouble() / 100)).roundToDouble();
  }

  @override
  void weightCalculation() {
    weightDiceRolled = rollD6(2);
    (weight += ((weightDiceRolled.toDouble() * heightDiceRolled) / 5)).roundToDouble();
  }

}
