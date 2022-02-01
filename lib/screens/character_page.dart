import 'package:character_sheet/models/creature/character/character_playable_model.dart';
import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';

class CharacterPage extends StatelessWidget {
  final int idHolder;

  const CharacterPage({Key? key, required this.idHolder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.cyan.shade800,
        title: Text(
          'Character',
          style: cpAppbarTextFieldStyle(),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.cyan.shade800,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GFAvatar(
                      shape: GFAvatarShape.standard,
                      borderRadius: BorderRadius.circular(20.0),
                      radius: 45,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(characterList[idHolder].userImage),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 5,
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              characterList[idHolder].name,
                              style: characterNameTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.cyan.shade800,
                ),
                title: Text(
                  'CHARACTER',
                  style: characterStatsTextStyle(),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.shield,
                  color: Colors.cyan.shade800,
                ),
                title: Text(
                  'BATTLE',
                  style: characterStatsTextStyle(),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.cyan.shade800,
                ),
                title: Text(
                  'SPELLS',
                  style: characterStatsTextStyle(),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.backpack,
                  color: Colors.cyan.shade800,
                ),
                title: Text(
                  'BACKPACK',
                  style: characterStatsTextStyle(),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.cyan.shade800,
                ),
                title: Text(
                  'BACK',
                  style: characterStatsTextStyle(),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(' Name: ${characterList[idHolder].name}'),
                          Text(' Race: ${characterList[idHolder].race}'),
                          Text('Class: ${characterList[idHolder].characterClass}'),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Level',
                          style: homeLevelTextStyle(),
                        ),
                        Text(
                          characterList[idHolder].curLevel.toString(),
                          style: homeLevelNumberTextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Health Points',
                          style: characterStatsTextStyle(),
                          ),
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 30,
                            ),
                            Text(
                              '20',
                              style: hpTextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle characterNameTextStyle() {
  return const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.white,
    letterSpacing: 1.0,
  );
}

TextStyle characterStatsTextStyle() {
  return const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.black54,
    letterSpacing: 1.0,
  );
}

TextStyle homeLevelNumberTextStyle() {
  return const TextStyle(
    fontSize: 96.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

TextStyle homeLevelTextStyle() {
  return const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.black54,
    letterSpacing: 1.0,
  );
}

TextStyle hpTextStyle() {
  return const TextStyle(
    fontSize: 64.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.pink,
    letterSpacing: 1.0,
  );
}

