import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tdd/time_helper.dart';

void main() {
  group('TimeHelper Unit Test', () {
    test('TimeHelper should return Night', () {
      // Arrange
      DateTime currentTime = DateTime(2022, 1, 1, 5);

      // Act
      String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

      // Assert
      expect(timeOfDay, 'Night');
    });

    test('TimeHelper should return Morning', () {
      // Arrange
      DateTime currentTime = DateTime(2022, 1, 1, 10);

      // Act
      String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

      // Assert
      expect(timeOfDay, 'Morning');
    });

    test('TimeHelper should return Afternoon', () {
      // Arrange
      DateTime currentTime = DateTime(2022, 1, 1, 15);

      // Act
      String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

      // Assert
      expect(timeOfDay, 'Afternoon');
    });

    test('TimeHelper should return Evening', () {
      // Arrange
      DateTime currentTime = DateTime(2022, 1, 1, 20);

      // Act
      String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

      // Assert
      expect(timeOfDay, 'Evening');
    });
  });
}
