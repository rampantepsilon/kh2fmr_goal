// ignore_for_file: non_constant_identifier_names, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

var randNum = 10;
List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

bool _1disabled = false;
bool _2disabled = false;
bool _3disabled = false;
bool _4disabled = false;
bool _5disabled = false;
bool _6disabled = false;
bool _7disabled = false;
bool _8disabled = false;
bool _9disabled = false;
bool _10disabled = false;
bool _11disabled = false;
bool _12disabled = false;
bool _13disabled = false;
bool _14disabled = false;
bool _15disabled = false;
bool _16disabled = false;
bool _17disabled = false;
List<int> shownWorld = [];
List<String> holder = [];
void genSeed() {
  Random random = Random();
  while (shownWorld.length < randNum) {
    int random_number = random.nextInt(17) + 1;
    if (!shownWorld.contains(random_number)) {
      shownWorld.add(random_number);
    }
  }
  shownWorld.sort();
}

class DataButtons extends StatefulWidget {
  const DataButtons({super.key});

  @override
  State<DataButtons> createState() => _DataButtonsState();
}

class _DataButtonsState extends State<DataButtons> {
  // ignore: unused_field
  bool _seedSet = false;
  final seedInput = TextEditingController();
  int dropdownValue = numList[6];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Current Seed: "),
            Text(shownWorld.map((i) => i.toString()).join(",")),
            const Text('     |     '),
            TextButton(
              onPressed: () async {
                var seed = shownWorld.map((i) => i.toString()).join(",");
                await Clipboard.setData(ClipboardData(text: seed));
              },
              child: const Text("Copy Seed"),
            ),
            TextButton(
              onPressed: () async {
                ClipboardData? seed =
                    await Clipboard.getData(Clipboard.kTextPlain);
                String? seedText = seed?.text;
                seedInput.text = seedText!;
              },
              child: const Text("Paste Seed"),
            ),
            const Text('     |     '),
            const Text('Enter Custom Seed'),
            Container(
              padding: const EdgeInsets.only(left: 5),
              width: 150,
              height: 15,
              child: TextFormField(
                controller: seedInput,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                shownWorld = [];
                holder = seedInput.text.split(",");
                for (var i = 0; i < holder.length; i++) {
                  shownWorld.add(int.parse(holder[i]));
                  setState(() => {_seedSet = true});
                }
              },
              child: const Icon(Icons.send),
            )
          ],
        ),
        DataData(
          key: UniqueKey(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                shownWorld = [];
                genSeed();
                setState(() => {_seedSet = true});
              },
              child: const Text("Generate Seed"),
            ),
            const Text('    Number of Worlds: '),
            DropdownButton<int>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              underline: Container(
                height: 2,
                color: const Color.fromARGB(255, 0, 17, 255),
              ),
              onChanged: (int? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                  randNum = (17 - value);
                });
              },
              items: numList.map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
            ),
            const Text('    '),
            TextButton(
              onPressed: () {
                shownWorld = [];
                setState(() {
                  _1disabled = false;
                  _2disabled = false;
                  _3disabled = false;
                  _4disabled = false;
                  _5disabled = false;
                  _6disabled = false;
                  _7disabled = false;
                  _8disabled = false;
                  _9disabled = false;
                  _10disabled = false;
                  _11disabled = false;
                  _12disabled = false;
                  _13disabled = false;
                  _14disabled = false;
                  _15disabled = false;
                  _16disabled = false;
                  _17disabled = false;
                  _seedSet = true;
                });
                seedInput.text = '';
                dropdownValue = numList[6];
                randNum = (17 - dropdownValue);
              },
              child: const Text("Reset Tracker"),
            ),
          ],
        ),
      ],
    );
  }
}

class DataData extends StatefulWidget {
  const DataData({super.key});

  @override
  State<DataData> createState() => _DataDataState();
}

class _DataDataState extends State<DataData> {
  Widget a1 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Xemnas.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d1 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Xemnas.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a2 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Xigbar.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d2 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Xigbar.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a3 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Xaldin.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d3 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Xaldin.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a4 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Vexen.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d4 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Vexen.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a5 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Lexaeus.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d5 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Lexaeus.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a6 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Zexion.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d6 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Zexion.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a7 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Saix.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d7 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Saix.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a8 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Axel2.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d8 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Axel2.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a9 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Demyx.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d9 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Demyx.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a10 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Luxord.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d10 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Luxord.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a11 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Marluxia.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d11 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Marluxia.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a12 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Larxene.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d12 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Larxene.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a13 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Roxas.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d13 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Roxas.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );
  Widget a14 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/7drives.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d14 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/7drives.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );

  Widget a15 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/LingeringWill.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d15 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/LingeringWill.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );

  Widget a16 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/Sephiroth.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d16 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/Sephiroth.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );

  Widget a17 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Data/YTB.png',
      filterQuality: FilterQuality.medium,
    ),
  );
  Widget d17 = Container(
    padding: const EdgeInsets.all(5),
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          child: Image.asset(
            'images/Data/YTB.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
          width: 90,
          height: 90,
          child: Image.asset(
            'images/crossworld.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        !shownWorld.contains(14)
            ? Tooltip(
                message: "Drive Forms",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _14disabled = !_14disabled;
                    });
                  },
                  child: _14disabled ? d14 : a14,
                ),
              )
            : const Text(""),
        !shownWorld.contains(12)
            ? Tooltip(
                message: "Larxene",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _12disabled = !_12disabled;
                    });
                  },
                  child: _12disabled ? d12 : a12,
                ),
              )
            : const Text(""),
        !shownWorld.contains(10)
            ? Tooltip(
                message: "Luxord",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _10disabled = !_10disabled;
                    });
                  },
                  child: _10disabled ? d10 : a10,
                ),
              )
            : const Text(""),
        !shownWorld.contains(8)
            ? Tooltip(
                message: "Axel",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _8disabled = !_8disabled;
                    });
                  },
                  child: _8disabled ? d8 : a8,
                ),
              )
            : const Text(""),
        !shownWorld.contains(6)
            ? Tooltip(
                message: 'Zexion',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _6disabled = !_6disabled;
                    });
                  },
                  child: _6disabled ? d6 : a6,
                ),
              )
            : const Text(""),
        !shownWorld.contains(4)
            ? Tooltip(
                message: 'Vexen',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _4disabled = !_4disabled;
                    });
                  },
                  child: _4disabled ? d4 : a4,
                ),
              )
            : const Text(""),
        !shownWorld.contains(2)
            ? Tooltip(
                message: 'Xigbar',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _2disabled = !_2disabled;
                    });
                  },
                  child: _2disabled ? d2 : a2,
                ),
              )
            : const Text(""),
        !shownWorld.contains(1)
            ? Tooltip(
                message: 'Xemnas',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _1disabled = !_1disabled;
                    });
                  },
                  child: _1disabled ? d1 : a1,
                ),
              )
            : const Text(""),
        !shownWorld.contains(3)
            ? Tooltip(
                message: 'Xaldin',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _3disabled = !_3disabled;
                    });
                  },
                  child: _3disabled ? d3 : a3,
                ),
              )
            : const Text(""),
        !shownWorld.contains(5)
            ? Tooltip(
                message: 'Lexaeus',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _5disabled = !_5disabled;
                    });
                  },
                  child: _5disabled ? d5 : a5,
                ),
              )
            : const Text(""),
        !shownWorld.contains(7)
            ? Tooltip(
                message: 'Saix',
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _7disabled = !_7disabled;
                    });
                  },
                  child: _7disabled ? d7 : a7,
                ),
              )
            : const Text(""),
        !shownWorld.contains(9)
            ? Tooltip(
                message: "Demyx",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _9disabled = !_9disabled;
                    });
                  },
                  child: _9disabled ? d9 : a9,
                ),
              )
            : const Text(""),
        !shownWorld.contains(16)
            ? Tooltip(
                message: "Sephiroth",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _16disabled = !_16disabled;
                    });
                  },
                  child: _16disabled ? d16 : a16,
                ),
              )
            : const Text(""),
        !shownWorld.contains(11)
            ? Tooltip(
                message: "Marluxia",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _11disabled = !_11disabled;
                    });
                  },
                  child: _11disabled ? d11 : a11,
                ),
              )
            : const Text(""),
        !shownWorld.contains(15)
            ? Tooltip(
                message: "Lingering Will",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _15disabled = !_15disabled;
                    });
                  },
                  child: _15disabled ? d15 : a15,
                ),
              )
            : const Text(""),
        !shownWorld.contains(13)
            ? Tooltip(
                message: "Roxas",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _13disabled = !_13disabled;
                    });
                  },
                  child: _13disabled ? d13 : a13,
                ),
              )
            : const Text(""),
        !shownWorld.contains(17)
            ? Tooltip(
                message: "Yeet The Bear",
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _17disabled = !_17disabled;
                    });
                  },
                  child: _17disabled ? d17 : a17,
                ),
              )
            : const Text(""),
      ],
    );
  }
}
