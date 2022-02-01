

class Stats {

  int strength = 0;
  int dexterity = 0;
  int constitution = 0;
  int intelligence = 0;
  int wisdom = 0;
  int charisma = 0;

  int strengthModifier = 0;
  int dexterityModifier = 0;
  int constitutionModifier = 0;
  int intelligenceModifier = 0;
  int wisdomModifier = 0;
  int charismaModifier = 0;

  statsModifier(int value) {
    if(value >10){
      ((value) - 10) ~/ 2;
    } else {
      ((value - 1) - 10) ~/ 2;
    }
    return value;
  }

  refreshModifier(){
    strengthModifier = statsModifier(strength);
    dexterityModifier = statsModifier(dexterity);
    constitutionModifier = statsModifier(constitution);
    intelligenceModifier = statsModifier(intelligence);
    wisdomModifier = statsModifier(wisdom);
    charismaModifier = statsModifier(charisma);
  }

  addSubStrength(int value) {
    strength += value;
    refreshModifier();
  }

  addSubDexterity(int value) {
    dexterity += value;
    refreshModifier();
  }

  addSubConstitution(int value) {
    constitution += value;
    refreshModifier();
  }

  addSubIntelligence(int value) {
    intelligence += value;
    refreshModifier();
  }

  addSubWisdom(int value) {
    wisdom += value;
    refreshModifier();
  }

  addSubCharisma(int value) {
    charisma += value;
    refreshModifier();
  }

}