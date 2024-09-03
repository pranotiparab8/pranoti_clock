import 'package:get/get.dart';
import '../Model/clock_model.dart';


class ClockMeetingController extends GetxController {
  var timeForA = 0.0.obs;
  var timeForB = 0.0.obs;
  var result = ''.obs;

  void calculateMeetingPoint() {
    final model = ClockMeetingModel(x: timeForA.value, y: timeForB.value);
    result.value = model.calculateMeetingPoint();
  }
}
