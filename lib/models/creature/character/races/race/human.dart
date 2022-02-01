import 'package:character_sheet/models/actions/dices.dart';
import 'package:character_sheet/models/creature/character/races/interface/standard_height_weight_calc.dart';

import '../races.dart';

class Human extends Races with StandardHeightWeightCalculation, Dices {
  @override
  String raceName = 'Human';
  @override
  double height = 1.42;
  @override
  double weight = 55.0;
  int heightDiceRolled = 0;
  int weightDiceRolled = 0;

  @override
  int baseSpeedWalk = 9;
  @override
  int raceStrength = 1;
  @override
  int raceDexterity = 1;
  @override
  int raceConstitution = 1;
  @override
  int raceIntelligence = 1;
  @override
  int raceWisdom = 1;
  @override
  int raceCharisma = 1;

  @override
  void heightCalculation() {
    heightDiceRolled = rollD10(6);
    (height += (heightDiceRolled.toDouble() / 100)).roundToDouble();
  }

  @override
  void weightCalculation() {
    weightDiceRolled = rollD4(2);
    (weight += ((weightDiceRolled.toDouble() * heightDiceRolled) / 5)).roundToDouble();
  }



}
