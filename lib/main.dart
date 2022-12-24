import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'simpleButtons.dart';
import 'oldButtons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1500, 255),
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
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 0, 17, 255),
            ),
            foregroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      home: const SimpleDisplay(),
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
        title: const Text("KH2FMR Hitlist Tracker by RampantEpsilon"),
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
              title: const Text('Worlds'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OldDisplay(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutDisplay(),
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

class AboutDisplay extends StatefulWidget {
  const AboutDisplay({super.key});

  @override
  State<AboutDisplay> createState() => _AboutDisplayState();
}

class _AboutDisplayState extends State<AboutDisplay> {
  containerText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'How To Use The Tracker',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '- Complete the set amount of worlds agreed upon by all players. Left click worlds to mark them complete (verified in game by a pink door in GoA).\n- Generate seeds of 7 worlds with the Generate Seed button. You can copy and paste the seed using the supplied buttons to share seeds with friends.\n- You can also set additional goals like completing Final Xemnas after completing the amount of worlds.',
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KH2FMR Hitlist Tracker by RampantEpsilon"),
      ),
      body: containerText(),
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
              title: const Text('Worlds'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OldDisplay(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutDisplay(),
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
        title: const Text("KH2FMR Hitlist Tracker by RampantEpsilon"),
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
              title: const Text('Worlds'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OldDisplay(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutDisplay(),
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
