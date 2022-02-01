import 'package:character_sheet/models/creature/character/character_model.dart';

class PlayableCharacter {

}

final Character first = Character(
  id: 0,
  name: 'Isabela',
  race: 'Human',
  characterClass: 'Monge',
  userImage: 'assets/images/user_images/monk.png',
);
final Character second = Character(
  id: 1,
  name: 'Isabelão',
  race: 'Human',
  characterClass: 'Ninja',
  userImage: 'assets/images/user_images/ninja.png',
);
final Character third = Character(
  id: 2,
  name: 'Belinha da Raquel a mais supimpa de todas',
  race: 'Human',
  characterClass: 'Sacedorte',
  userImage: 'assets/images/user_images/priest.png',
);
final Character fourth = Character(
  id: 3,
  name: 'Isabel Silva',
  race: 'Human',
  characterClass: 'Arqueira',
  userImage: 'assets/images/user_images/woman_archer.png',
);
final Character fifth = Character(
  id: 4,
  name: 'Fabio',
  race: 'Human',
  characterClass: 'Druida',
  userImage: 'assets/images/user_images/druid.png',
);
final Character sixth = Character(
  id: 5,
  name: 'Rodrigo',
  race: 'Human',
  characterClass: 'Guerreiro',
  userImage: 'assets/images/user_images/man_barbarian.png',
);
final Character seventh = Character(
  id: 6,
  name: 'Digo',
  race: 'Human',
  characterClass: 'Arqueiro',
  userImage: 'assets/images/user_images/man_archer.png',
);

List<Character> characterList = [
  first,
  second,
  third,
  fourth,
  fifth,
  sixth,
  seventh,
];
