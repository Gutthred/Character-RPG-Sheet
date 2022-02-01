// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.counter.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StatsCounterStore on _StatsCounterStore, Store {
  final _$statsCounterAtom = Atom(name: '_StatsCounterStore.statsCounter');

  @override
  int get statsCounter {
    _$statsCounterAtom.reportRead();
    return super.statsCounter;
  }

  @override
  set statsCounter(int value) {
    _$statsCounterAtom.reportWrite(value, super.statsCounter, () {
      super.statsCounter = value;
    });
  }

  final _$statsModifierAtom = Atom(name: '_StatsCounterStore.statsModifier');

  @override
  int get statsModifier {
    _$statsModifierAtom.reportRead();
    return super.statsModifier;
  }

  @override
  set statsModifier(int value) {
    _$statsModifierAtom.reportWrite(value, super.statsModifier, () {
      super.statsModifier = value;
    });
  }

  final _$_StatsCounterStoreActionController =
      ActionController(name: '_StatsCounterStore');

  @override
  void increment() {
    final _$actionInfo = _$_StatsCounterStoreActionController.startAction(
        name: '_StatsCounterStore.increment');
    try {
      return super.increment();
    } finally {
      _$_StatsCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_StatsCounterStoreActionController.startAction(
        name: '_StatsCounterStore.decrement');
    try {
      return super.decrement();
    } finally {
      _$_StatsCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void modifierRefresh() {
    final _$actionInfo = _$_StatsCounterStoreActionController.startAction(
        name: '_StatsCounterStore.modifierRefresh');
    try {
      return super.modifierRefresh();
    } finally {
      _$_StatsCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
statsCounter: ${statsCounter},
statsModifier: ${statsModifier}
    ''';
  }
}
