import 'package:flutter/material.dart';

class Clockapp extends StatefulWidget {
  const Clockapp({super.key});

  @override
  State<Clockapp> createState() => _ClockappState();
}

class _ClockappState extends State<Clockapp> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  String _result = '';

  void _calculateMeetingPoint() {
    double x = double.tryParse(_controllerA.text) ?? 0;
    double y = double.tryParse(_controllerB.text) ?? 0;

    if (x <= 0 || y <= 0) {
      setState(() {
        _result = 'Invalid input! Please enter positive numbers.';
      });
      return;
    }

    double speedA = 5 / x;
    double speedB = 5 / y;
    double Speed = (speedB - speedA).abs();
    double timeToMeet = 12 / Speed;
    double meetingPoint = (speedA * timeToMeet) % 12;

    setState(() {
      _result = 'They will meet at ${meetingPoint.toStringAsFixed(2)} clock-minutes.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clock Meeting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time for A in minutes',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time for B in minutes',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateMeetingPoint,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Text(
              _result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
