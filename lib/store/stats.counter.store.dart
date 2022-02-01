import 'package:mobx/mobx.dart';

part 'stats.counter.store.g.dart';

class StatsCounterStore = _StatsCounterStore with _$StatsCounterStore;

abstract class _StatsCounterStore with Store {
  @observable
  int statsCounter = 0;

  @observable
  int statsModifier = 0;

  @action
  void increment() {
    if (statsCounter >= 0 && statsCounter <20) {
      statsCounter++;
    }
  }

  @action
  void decrement() {
    if (statsCounter >= 1) {
      statsCounter--;
    }
  }

  @action
  void modifierRefresh() {
    if(statsCounter >10){
      statsModifier = ((statsCounter) - 10) ~/ 2;
    } else {
      statsModifier = ((statsCounter - 1) - 10) ~/ 2;
    }
    }

}
