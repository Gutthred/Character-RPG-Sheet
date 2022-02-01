import 'package:character_sheet/models/actions/dices.dart';
import 'package:character_sheet/models/creature/character/races/interface/standard_height_weight_calc.dart';

import '../races.dart';

class Tiefling extends Races with StandardHeightWeightCalculation, Dices {
  @override
  String raceName = 'Tiefling';
  @override
  double height = 1.45;
  @override
  double weight = 55.0;
  int heightDiceRolled = 0;
  int weightDiceRolled = 0;

  @override
  int baseSpeedWalk = 9;
  @override
  int raceStrength = 0;
  @override
  int raceDexterity = 0;
  @override
  int raceConstitution = 0;
  @override
  int raceIntelligence = 1;
  @override
  int raceWisdom = 0;
  @override
  int raceCharisma = 2;

  @override
  void heightCalculation() {
    heightDiceRolled = rollD8(6);
    (height += (heightDiceRolled.toDouble() / 100)).roundToDouble();
  }

  @override
  void weightCalculation() {
    weightDiceRolled = rollD4(2);
    (weight += ((weightDiceRolled.toDouble() * heightDiceRolled) / 5)).roundToDouble();
  }



}
