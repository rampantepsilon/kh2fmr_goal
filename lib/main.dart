import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'simpleButtons.dart';
import 'oldButtons.dart';
import 'superbosses.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1800, 272),
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
        title: const Center(
          child: Text("KH2FMR Pink Door Hitlist Tracker by RampantEpsilon"),
        ),
      ),
      body: Stack(
        children: [
          /*Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/BG.png',
              repeat: ImageRepeat.repeat,
            ),
          ),*/
          Container(
            //color: Color.fromARGB(80, 0, 0, 0),
            child: const SimpleButtons(),
          ),
        ],
      ),
      drawer: DrawerData(
        contextInfo: context,
        context: context,
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
    return Row(
      children: [
        Center(
          widthFactor: 1.1,
          child: Column(
            children: const [
              Center(
                child: Text(
                  'How To Use The Tracker',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                // ignore: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
                ' - Complete the set amount of worlds agreed upon by all players. Left click worlds to mark them complete (verified in game by a pink door in GoA).' +
                    '\n - Generate seeds of 7 worlds with the Generate Seed button. You can copy and paste the seed using the supplied buttons to share seeds with friends.' +
                    '\n - You can also set additional goals like completing Final Xemnas after completing the amount of worlds.',
              ),
            ],
          ),
        ),
        Center(
          widthFactor: 1.5,
          child: Column(
            children: const [
              Center(
                child: Text(
                  "Upcoming Changes",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              // ignore: prefer_adjacent_string_concatenation
              Text(' - Add Data Orgs as completion goal' +
                  '\n - Add Ability to shuffle Data Orgs and Pink Door')
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("KH2FMR Pink Door Hitlist Tracker by RampantEpsilon"),
        ),
      ),
      body: containerText(),
      drawer: DrawerData(
        contextInfo: context,
        context: context,
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
        title: const Center(
          child: Text("KH2FMR Pink Door Hitlist Tracker by RampantEpsilon"),
        ),
      ),
      body: Stack(
        children: [
          /*Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/BG.png',
              repeat: ImageRepeat.repeat,
            ),
          ),*/
          Container(
            //color: Color.fromARGB(80, 0, 0, 0),
            child: const OldButtons(),
          ),
        ],
      ),
      drawer: DrawerData(
        contextInfo: context,
        context: context,
      ),
    );
  }
}

class DataDisplay extends StatefulWidget {
  const DataDisplay({super.key});

  @override
  State<DataDisplay> createState() => _DataDisplayState();
}

class _DataDisplayState extends State<DataDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("KH2FMR Pink Door Hitlist Tracker by RampantEpsilon"),
        ),
      ),
      body: Stack(
        children: [
          /*Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/BG.png',
              repeat: ImageRepeat.repeat,
            ),
          ),*/
          Container(
            //color: Color.fromARGB(80, 0, 0, 0),
            child: const DataButtons(),
          ),
        ],
      ),
      drawer: DrawerData(
        contextInfo: context,
        context: context,
      ),
    );
  }
}

class DrawerData extends StatefulWidget {
  final BuildContext contextInfo;
  const DrawerData(
      {Key? key, required BuildContext context, required this.contextInfo})
      : super(key: key);

  @override
  State<DrawerData> createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  @override
  Widget build(contextInfo) {
    return Drawer(
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
            title: const Text('Superbosses'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DataDisplay(),
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
    );
  }
}
