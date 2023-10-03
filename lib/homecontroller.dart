import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homecontroller extends InheritedNotifier<ValueNotifier<int>> {
  Homecontroller({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
          notifier: ValueNotifier(0),
        );

  static Homecontroller of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Homecontroller>()!; //!
  }

  int get valor => notifier!.value;

  incrementa() {
    notifier!.value++;
  }
}
