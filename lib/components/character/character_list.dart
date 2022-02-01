import 'package:character_sheet/models/creature/character/character_playable_model.dart';
import 'package:character_sheet/screens/character_page.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class CharacterList extends StatelessWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.transparent,
                height: 20,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: ListView.builder(
              itemCount: characterList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  child: Card(
                    color: Colors.tealAccent.shade100.withOpacity(0.3),
                    shadowColor: Colors.white,
                    elevation: 5,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: InkWell(
                      onTap: () {
                        getItemAndNavigate(context, characterList[index].id);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFAvatar(
                            shape: GFAvatarShape.standard,
                            borderRadius: BorderRadius.circular(20.0),
                            radius: 60,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(characterList[index].userImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 3, 0, 5),
                            child: Container(
                              color: Colors.transparent,
                              height: 110,
                              width: 245,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            characterList[index].name,
                                            style: characterNameTextStyle(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //NAME ROW
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Race: ',
                                          style: characterPrefixStatsTextStyle(),
                                        ),
                                        Text(
                                          characterList[index].race,
                                          style: characterStatsTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ), //RACE ROW
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Class: ',
                                          style: characterPrefixStatsTextStyle(),
                                        ),
                                        Text(
                                          characterList[index].characterClass,
                                          style: characterStatsTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ), //CLASS ROW
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Level: ',
                                          style: characterPrefixStatsTextStyle(),
                                        ),
                                        Text(
                                          characterList[index].curLevel.toString(),
                                          style: characterStatsTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ), //CLASS ROW
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

TextStyle characterNameTextStyle() {
  return const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.black54,
    letterSpacing: 1.0,
  );
}

TextStyle characterPrefixStatsTextStyle() {
  return const TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.black54,
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

TextStyle buttonCharactersTextStyle() {
  return const TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.white,
    letterSpacing: 1.0,
  );
}

getItemAndNavigate(BuildContext context, int id) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterPage(idHolder: id,)));
}
