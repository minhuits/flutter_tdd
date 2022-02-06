class TimeHelper {
  static String getTimeOfTheDay(DateTime dateTime) {
    if (night(dateTime)) {
      return 'Night';
    }

    if (morning(dateTime)) {
      return 'Morning';
    }

    if (afternoon(dateTime)) {
      return 'Afternoon';
    }

    return 'Evening';
  }

  static bool night(DateTime dateTime) {
    return dateTime.hour >= 0 && dateTime.hour < 6;
  }

  static bool morning(DateTime dateTime) {
    return dateTime.hour >= 6 && dateTime.hour < 12;
  }

  static bool afternoon(DateTime dateTime) {
    return dateTime.hour >= 12 && dateTime.hour < 18;
  }
}
