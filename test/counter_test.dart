import 'package:test/test.dart';
import 'package:unit_test_workshop/counter.dart';
import 'package:unit_test_workshop/utils.dart';

void main() {
  test("Should increment once", () {
    // Arrange
    final counter = Counter();

    // Act
    counter.increment();

    // Assert
    expect(counter.value, 1);
  });

  test("Should increment 1", () {
    // Arrange
    final counter = Counter();

    // Act
    counter.increment();

    // Assert
    expect(counter.valueChangedCount, 1);
  });

  test("Should increment on decrement", () {
    // Arrange
    final counter = Counter();

    // Act
    counter.decrement();

    // Assert
    expect(counter.valueChangedCount, 1);
    expect(counter.value, -1);
  });

  test("a test", () {});

  group("Increment tests", () {
    final counter = Counter();

    test("increments once", () {});

    test("increments three times", () {});
  });

  test("1", () {
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
}

/// * Write production code only to pass a failing unit test.
/// * Write no more of a unit test than sufficient to fail (compilation failures are failures).
/// * Write no more production code than necessary to pass the one failing unit test.
