import 'package:flutter/material.dart';

class CobaStepper extends StatefulWidget {
  const CobaStepper({super.key});

  @override
  State<CobaStepper> createState() => _CobaStepperState();
}

class _CobaStepperState extends State<CobaStepper> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Splash screen & Stepper"),
      ),
      body: Center(
        child: Stepper(
            onStepTapped: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            currentStep: index,
            onStepContinue: () {
              if (index < 1) {
                setState(() {
                  index += 1;
                });
              }
            },
            onStepCancel: () {
              if (index > 0) {
                setState(() {
                  index -= 1;
                });
              }
            },
            steps: [
              Step(
                state: index == 0 ? StepState.indexed : StepState.complete,
                isActive: true,
                title: Text("Account"),
                label: Text("Ini akun"),
                content: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: "Masukkan email anda"),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: "Masukkan password anda"),
                    ),
                  ],
                ),
              ),
              Step(
                  isActive: true,
                  title: Text("Nama"),
                  content: TextFormField(
                    decoration: InputDecoration(hintText: "Masukkan nama anda"),
                  ))
            ]),
      ),
    );
  }
}