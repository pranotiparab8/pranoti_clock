import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/clock_meeting_controller.dart';

class ClockMeetingPage extends StatelessWidget {
  final ClockMeetingController controller = Get.put(ClockMeetingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clock Meeting Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time for A to cover 5 minutes (in minutes)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.timeForA.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time for B to cover 5 minutes (in minutes)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.timeForB.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.calculateMeetingPoint();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Obx(() => Text(
              controller.result.value,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}
