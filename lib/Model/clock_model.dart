class ClockMeetingModel {
  double x;
  double y;

  ClockMeetingModel({required this.x, required this.y});

  String calculateMeetingPoint() {
    if (x <= 0 || y <= 0) {
      return 'Invalid input! Please enter positive numbers.';
    }

    double speedA = 5 / x;
    double speedB = 5 / y;
    double relativeSpeed = (speedB - speedA).abs();
    double timeToMeet = 12 / relativeSpeed;
    double meetingPoint = (speedA * timeToMeet) % 12;

    return 'They will meet at ${meetingPoint.toStringAsFixed(2)} clock-minutes.';
  }
}
