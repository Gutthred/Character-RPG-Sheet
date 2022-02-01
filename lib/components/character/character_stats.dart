import 'package:character_sheet/store/stats.counter.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CharacterStats extends StatelessWidget {
  const CharacterStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _strength = StatsCounterStore();
    final _dexterity = StatsCounterStore();
    final _constitution = StatsCounterStore();
    final _intelligence = StatsCounterStore();
    final _wisdom = StatsCounterStore();
    final _charisma = StatsCounterStore();

    statsRow({required StatsCounterStore stats, required String statsName}) {
      return Row(
        children: [
          SizedBox(
            width: 363,
            child: Card(
              color: Colors.tealAccent.shade100.withOpacity(0.2),
              shadowColor: Colors.transparent,
              elevation: 0,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        statsName,
                        style: textInsideStats(),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            stats.decrement();
                            stats.modifierRefresh();
                          },
                          child: statsIcon(),
                          style: statsButtonIconStyle(),
                        ),
                        Observer(
                          builder: (_) => SizedBox(
                            width: 30.0,
                            child: Text(
                              '${stats.statsCounter}',
                              textAlign: TextAlign.center,
                              style: textStatsCounter(),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            stats.increment();
                            stats.modifierRefresh();
                          },
                          child: statsIcon(),
                          style: statsButtonIconStyle(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'modifier',
                          style: textInsideStatsModifier(),
                        ),
                        Observer(
                          builder: (_) => SizedBox(
                            width: 30.0,
                            child: Text(
                              '${stats.statsModifier}',
                              textAlign: TextAlign.center,
                              style: textStatsCounter(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade50,
          child: Column(
            children: [
              Column(
                children: [
                  statsRow(stats: _strength, statsName: 'Strength'),
                  statsRow(stats: _dexterity, statsName: 'Dexterity'),
                  statsRow(stats: _constitution, statsName: 'Constitution'),
                  statsRow(stats: _intelligence, statsName: 'Intelligence'),
                  statsRow(stats: _wisdom, statsName: 'Wisdom'),
                  statsRow(stats: _charisma, statsName: 'Charisma'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

TextStyle textInsideStats() {
  return const TextStyle(
    letterSpacing: 1,
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

TextStyle textInsideStatsModifier() {
  return const TextStyle(
    letterSpacing: 0.5,
    fontSize: 12,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

TextStyle textStatsCounter() {
  return TextStyle(
    fontFamily: 'MontSerrat',
    fontSize: 24,
    color: Colors.cyan.shade800,
  );
}

BorderSide buttonBorderColor() {
  return BorderSide(color: Colors.cyan.shade900, width: 0.5);
}

Icon statsIcon() {
  return const Icon(
    Icons.add,
    size: 16.0,
    color: Colors.white,
  );
}

ButtonStyle statsButtonIconStyle() {
  return ElevatedButton.styleFrom(
    primary: Colors.cyan.shade800,
    onPrimary: Colors.white,
    side: buttonBorderColor(),
    shape: const CircleBorder(),
    fixedSize: const Size(20, 20),
    elevation: 5,
  );
}
