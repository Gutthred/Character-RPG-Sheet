

class CharacterLevelling {
  int _currentLevel = 1;
  int _currentExperience = 0;
  int _xpRequiredToLvlUp = 0;
  late int currentLevel = _currentLevel;

  final Map<int, int> _xpPerLevelMap = {
    1: 0,
    2: 300,
    3: 900,
    4: 2700,
    5: 6500,
    6: 14000,
    7: 23000,
    8: 34000,
    9: 48000,
    10: 64000,
    11: 85000,
    12: 100000,
    13: 120000,
    14: 140000,
    15: 165000,
    16: 195000,
    17: 225000,
    18: 265000,
    19: 305000,
    20: 355000,
  };


  void getCurrentExperience() {
    _currentExperience;
  }

  void getXpRequiredToLvlUp() {
    _xpRequiredToLvlUp;
  }

  void levelUp() {
    _currentLevel++;
  }

  void checkXpRequiredToLvlUp() {
    if (_xpPerLevelMap[_currentLevel + 1] != null && (_xpPerLevelMap[_currentLevel + 1]! - _xpRequiredToLvlUp) > 0) {
      _xpRequiredToLvlUp = (_xpPerLevelMap[_currentLevel + 1]! - _currentExperience);
    } else {
      _xpRequiredToLvlUp;
    }
  }

  void xpGained(int value) {
    if (_xpRequiredToLvlUp > value) {
      _currentExperience += value;
      _xpRequiredToLvlUp -= value;
    } else {
      do {
        levelUp();
        checkXpRequiredToLvlUp();
      } while (_xpRequiredToLvlUp < value);
      _currentExperience += value;
      _xpRequiredToLvlUp -= value;
    }
  }
}
