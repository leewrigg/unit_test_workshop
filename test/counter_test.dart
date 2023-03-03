import 'package:test/test.dart';
import 'package:unit_test_workshop/counter.dart';
import 'package:unit_test_workshop/utils.dart';

void main() {
  group("Lesson 1: Unit Testing 101", () {
    ///   Test-driven development
    ///
    /// * Write production code only to pass a failing unit test.
    /// * Write no more of a unit test than sufficient to fail (compilation failures are failures).
    /// * Write no more production code than necessary to pass the one failing unit test.

    test("Should increment once", () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test("Should increment 1", () {
      final counter = Counter();
      counter.increment();
      expect(counter.valueChangedCount, 1);
    });

    test("Should increment on decrement", () {
      final counter = Counter();
      counter.decrement();
      expect(counter.valueChangedCount, 1);
      expect(counter.value, -1);
    });

    test("Test various int suffixes", () {
      expect(Utils.intWithSuffix(1), "1st");
      expect(Utils.intWithSuffix(2), "2nd");
      expect(Utils.intWithSuffix(3), "3rd");
      expect(Utils.intWithSuffix(4), "4th");
      expect(Utils.intWithSuffix(11), "11th");
      expect(Utils.intWithSuffix(12), "12th");
      expect(Utils.intWithSuffix(21), "21st");
      expect(Utils.intWithSuffix(111), "111th");
      expect(Utils.intWithSuffix(1111), "1111th");
      expect(Utils.intWithSuffix(11112), "11112th");
      expect(Utils.intWithSuffix(100000445), "100000445th");
    });
  });

  group("Lesson 2: Dependency Injection", () {
    // TODO
  });
}
