import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'simpleButtons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1500, 200),
    center: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions,
      () async => {await windowManager.show(), await windowManager.focus()});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kingdom Hearts 2 Randomizer Goal-Driven Tracker',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: ListView(
          children: const [
            SimpleButtons(),
          ],
        ),
      ),
    );
  }
}
