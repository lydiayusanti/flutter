import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:cron/cron.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CobaCron(),
    );
  }
}

class CobaCron extends StatefulWidget {
  const CobaCron({Key? key}) : super(key: key);

  @override
  State<CobaCron> createState() => _CobaCronState();
}

class _CobaCronState extends State<CobaCron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Cron"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: jadwal,
              child: const Text(
                "Memulai Jadwal",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: cancelSchedule,
              child: const Text(
                "Cancel Jadwal",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var cron = Cron();
  ScheduledTask? task;

  void jadwal() async {
    log("Wait for schedule");

    task = cron.schedule(Schedule.parse('*/1 * * * *'), () {
      print("Waktu sekarang : ${DateTime.now()}");
    });
  }

  void cancelSchedule() {
    task!.cancel();
    print("Berhasil Cancel Jadwal");
  }
}
