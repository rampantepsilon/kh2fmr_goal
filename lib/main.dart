import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'simpleButtons.dart';
import 'oldButtons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1600, 250),
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
      title: 'Kingdom Hearts 2 Randomizer Hitlist Tracker',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: SimpleDisplay(),
    );
  }
}

class SimpleDisplay extends StatefulWidget {
  const SimpleDisplay({super.key});

  @override
  State<SimpleDisplay> createState() => _SimpleDisplayState();
}

class _SimpleDisplayState extends State<SimpleDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KH2FMR Hitlist Tracker"),
      ),
      body: const SimpleButtons(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Simple'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleDisplay(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Old'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OldDisplay(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OldDisplay extends StatefulWidget {
  const OldDisplay({super.key});

  @override
  State<OldDisplay> createState() => _OldDisplayState();
}

class _OldDisplayState extends State<OldDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KH2FMR Hitlist Tracker"),
      ),
      body: const OldButtons(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Simple'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleDisplay(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Old'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OldDisplay(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
