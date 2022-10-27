import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/layoutbuilder_page.dart';
import 'package:responsive_project/widgets/mediaquery_page.dart';
import 'package:responsive_project/widgets/responsive_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LayoutBuilderPage(),
                  ),
                );
              },
              child: const Text("Layout Builder"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MediaQueryPage(),
                  ),
                );
              },
              child: const Text("MediaQuery"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ResponsivePage(),
                  ),
                );
              },
              child: const Text("Responsive"),
            ),
          ],
        ),
      ),
    );
  }
}
