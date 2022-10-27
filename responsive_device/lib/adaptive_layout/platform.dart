import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class PlatformWidget extends StatelessWidget {
  final Widget androidBuilder;
  final Widget iosBuilder;

  const PlatformWidget(
      {required this.androidBuilder, required this.iosBuilder});

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return androidBuilder;
      case TargetPlatform.iOS:
        return iosBuilder;
      default:
        return androidBuilder;
    }
  }
}