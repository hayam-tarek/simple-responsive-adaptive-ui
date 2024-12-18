import 'package:flutter/material.dart';
import 'package:test_responsive_adaptive/screens/desktop_screen.dart';
import 'package:test_responsive_adaptive/screens/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     log('${constraints.minWidth.toInt()}');
      //     if (constraints.minWidth <= 450) {
      //       return const MobileScreen();
      //     } else {
      //       return const DesktopScreen();
      //     }
      //   },
      // ),
      home: Builder(
        builder: (context) {
          // log('${MediaQuery.of(context).size.width}');
          if (MediaQuery.of(context).size.width <= 450) {
            return const MediaQuery(
              data: MediaQueryData(
                textScaler: TextScaler.linear(
                  .8,
                ),
              ),
              child: MobileScreen(),
            );
          } else {
            return const MediaQuery(
              data: MediaQueryData(
                textScaler: TextScaler.linear(
                  1.2,
                ),
              ),
              child: DesktopScreen(),
            );
          }
        },
      ),
    );
  }
}
