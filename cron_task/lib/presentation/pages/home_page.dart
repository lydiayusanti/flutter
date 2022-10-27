import 'dart:developer';

import 'package:cron/cron.dart';
import 'package:cron_task/common/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  _startSchedule();
                },
                child: const Text("Start Schedule"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  _cancelSchedule();
                },
                child: const Text("Cancel Schedule"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startSchedule() async {
    try {
      log('Wait for schedule');
      cron.schedule(
        Schedule.parse('*/1 * * * *'),
        () async => print("Waktu sekarang : ${DateTime.now()}"),
      );
    } on ScheduleParseException {
      log('Schedule failed to parse');
      await cron.close();
    }
  }

  void _cancelSchedule() {
    log('Cancel schedule');
    cron.close();
  }
}
