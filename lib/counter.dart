import 'dart:math';

class Counter {
  int value = 0;
  int valueChangedCount = 0;

  void increment() {
    value = ++value;
    valueChangedCount++;
  }

  void decrement() {
    value = value - 1;
    valueChangedCount++;
  }

  void reset() => value == 0;

  void random() => value += Random().nextInt(10) - 5; // +/- 5
}
