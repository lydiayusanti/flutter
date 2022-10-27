import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Plugin initialization",
                style: Theme.of(context).textTheme.headline5,
              ),
              ElevatedButton(
                child: const Text("Start the Flutter background service"),
                onPressed: () {
                  Workmanager().initialize(
                    callbackDispatcher,
                    isInDebugMode: true,
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: const Text("Register OneOff Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    simpleTaskKey,
                    simpleTaskKey,
                    inputData: <String, dynamic>{
                      'int': 1,
                      'bool': true,
                      'double': 1.0,
                      'string': 'string',
                      'array': [1, 2, 3],
                    },
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Register rescheduled Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    rescheduledTaskKey,
                    rescheduledTaskKey,
                    inputData: <String, dynamic>{
                      'key': Random().nextInt(64000),
                    },
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Register failed Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    failedTaskKey,
                    failedTaskKey,
                  );
                },
              ),
              ElevatedButton(
                  child: const Text("Register Delayed OneOff Task"),
                  onPressed: () {
                    Workmanager().registerOneOffTask(
                      simpleDelayedTask,
                      simpleDelayedTask,
                      initialDelay: const Duration(seconds: 10),
                    );
                  }),
              const SizedBox(height: 8),
              ElevatedButton(
                  onPressed: Platform.isAndroid
                      ? () {
                          Workmanager().registerPeriodicTask(
                            simplePeriodicTask,
                            simplePeriodicTask,
                            initialDelay: const Duration(seconds: 10),
                          );
                        }
                      : null,
                  child: const Text("Register Periodic Task (Android)")),
              ElevatedButton(
                  onPressed: Platform.isAndroid
                      ? () {
                          Workmanager().registerPeriodicTask(
                            simplePeriodicTask,
                            simplePeriodic1HourTask,
                            frequency: const Duration(hours: 1),
                          );
                        }
                      : null,
                  child: const Text("Register 1 hour Periodic Task (Android)")),
              const SizedBox(height: 16),
              Text(
                "Task cancellation",
                style: Theme.of(context).textTheme.headline5,
              ),
              ElevatedButton(
                child: const Text("Cancel All"),
                onPressed: () async {
                  await Workmanager().cancelAll();
                  print('Cancel all tasks completed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void callbackDispatcher() {
    Workmanager().executeTask(
      (task, inputData) async {
        switch (task) {
          case simpleTaskKey:
            print("$simpleTaskKey was executed. inputData = $inputData");
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("test", true);
            print("Bool from prefs: ${prefs.getBool("test")}");
            break;
          case rescheduledTaskKey:
            final key = inputData!['key']!;
            final prefs = await SharedPreferences.getInstance();
            if (prefs.containsKey('unique-$key')) {
              print('has been running before, task is successful');
              return true;
            } else {
              await prefs.setBool('unique-$key', true);
              print('reschedule task');
              return false;
            }
          case failedTaskKey:
            print('failed task');
            return Future.error('failed');
          case simpleDelayedTask:
            print("$simpleDelayedTask was executed");
            break;
          case simplePeriodicTask:
            print("$simplePeriodicTask was executed");
            break;
          case simplePeriodic1HourTask:
            print("$simplePeriodic1HourTask was executed");
            break;
        }

        return Future.value(true);
      },
    );
  }
}
