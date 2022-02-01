import 'dart:math';
import 'package:collection/collection.dart';

mixin Dices {
  rollD4(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(5) + 1).sum;
  }

  rollD6(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(7) + 1).sum;
  }

  rollD8(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(9) + 1).sum;
  }

  rollD10(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(11) + 1).sum;
  }

  rollD12(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(13) + 1).sum;
  }

  rollD20(int value) {
    final randomList = Random();
    return List.generate(value, (_) => randomList.nextInt(21) + 1).sum;
  }
}
