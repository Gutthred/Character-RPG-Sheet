import 'package:character_sheet/models/creature/character/skills_scores_model.dart';
import 'package:flutter/material.dart';

class CharacterSkillsScores extends StatefulWidget {
  const CharacterSkillsScores({Key? key}) : super(key: key);

  @override
  State<CharacterSkillsScores> createState() => _CharacterSkillsScoresState();
}

class _CharacterSkillsScoresState extends State<CharacterSkillsScores> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          color: Colors.grey.shade50,
          child: ListView.builder(
            itemCount: skillsScoresList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.grey.shade50,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                child: CheckboxListTile(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  tileColor: Colors.tealAccent.shade100.withOpacity(0.2),
                  key: Key(skillsScoresList[index].id.toString()),
                  checkColor: Colors.cyan.shade900,
                  activeColor: Colors.cyan,
                  title: Text(
                    skillsScoresList[index].traitName,
                    style: titleTraitTile(),
                  ),
                  subtitle: Text(
                    skillsScoresList[index].traitDescription,
                    style: subtitleTraitTile(),
                  ),
                  value: skillsScoresList[index].isChecked ,
                  onChanged: (value) {
                    setState(() {
                      skillsScoresList[index].isChecked = value!;
                    });
                  },
                  secondary: Icon(
                    skillsScoresList[index].traitIcon,
                    color: Colors.cyan.shade900,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

TextStyle titleTraitTile() {
  return TextStyle(
    letterSpacing: 1,
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: Colors.cyan.shade900,
  );
}
TextStyle subtitleTraitTile() {
  return const TextStyle(
    letterSpacing: 1,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

