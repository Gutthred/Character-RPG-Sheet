import 'package:character_sheet/components/character/character_list.dart';
import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';

import 'character_create_form_stepper.dart';

class CharacterPageList extends StatelessWidget {
  const CharacterPageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.cyan.shade800,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_horiz_rounded),
              onPressed: () {},
            ),
          ],
          title: Text(
            'Characters',
            style: cpAppbarTextFieldStyle(),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 10.0,
              color: Colors.cyan.shade800,
            ),
            Expanded(
              child: Container(
                height: 525,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const CharacterList(),
                ),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.cyan.shade800,
          elevation: 5,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CharacterCreationForm()));
          },
          label: Text(
            'CREATE',
            style: cpButtonCharactersTextStyle(),
          ),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}


