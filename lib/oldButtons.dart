// ignore_for_file: non_constant_identifier_names, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

var randNum = 6;
List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

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
//bool _14disabled = false;
List<int> shownWorld = [];
List<String> holder = [];
void genSeed() {
  Random random = Random();
  while (shownWorld.length < randNum) {
    int random_number = random.nextInt(13) + 1;
    if (!shownWorld.contains(random_number)) {
      shownWorld.add(random_number);
    }
  }
  shownWorld.sort();
}

class OldButtons extends StatefulWidget {
  const OldButtons({super.key});

  @override
  State<OldButtons> createState() => _OldButtonsState();
}

class _OldButtonsState extends State<OldButtons> {
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
                /*showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(holder[0]),
                    );
                  },
                );*/
                for (var i = 0; i < holder.length; i++) {
                  shownWorld.add(int.parse(holder[i]));
                  setState(() => {_seedSet = true});
                }
              },
              child: const Icon(Icons.send),
            )
          ],
        ),
        OldData(
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
                  randNum = (13 - value);
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
                  //_14disabled = false;
                  _seedSet = true;
                });
                seedInput.text = '';
                dropdownValue = numList[6];
                randNum = (13 - dropdownValue);
              },
              child: const Text("Reset Tracker"),
            ),
          ],
        ),
      ],
    );
  }
}

class OldData extends StatefulWidget {
  const OldData({super.key});

  @override
  State<OldData> createState() => _OldDataState();
}

class _OldDataState extends State<OldData> {
  Widget a1 = Container(
    padding: const EdgeInsets.all(5),
    width: 100,
    height: 100,
    child: Image.asset(
      'images/Old/1.png',
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
            'images/Old/1.png',
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
      'images/Old/2.png',
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
            'images/Old/2.png',
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
      'images/Old/3.png',
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
            'images/Old/3.png',
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
      'images/Old/4.png',
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
            'images/Old/4.png',
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
      'images/Old/5.png',
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
            'images/Old/5.png',
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
      'images/Old/6.png',
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
            'images/Old/6.png',
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
      'images/Old/7.png',
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
            'images/Old/7.png',
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
      'images/Old/8.png',
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
            'images/Old/8.png',
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
      'images/Old/9.png',
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
            'images/Old/9.png',
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
      'images/Old/10.png',
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
            'images/Old/10.png',
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
      'images/Old/11.png',
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
            'images/Old/11.png',
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
      'images/Old/12.png',
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
            'images/Old/12.png',
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
      'images/Old/13.png',
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
            'images/Old/13.png',
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
    width: 100,
    height: 100,
    padding: const EdgeInsets.all(5),
    child: Image.asset(
      'images/Old/14.png',
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
            'images/Old/14.png',
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
        !shownWorld.contains(1)
            ? Tooltip(
                message: 'Space Paranoids',
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
        !shownWorld.contains(2)
            ? Tooltip(
                message: 'Port Royal',
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
        !shownWorld.contains(3)
            ? Tooltip(
                message: 'Twilight Town',
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
        !shownWorld.contains(4)
            ? Tooltip(
                message: 'Olympus Colusseum',
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
        !shownWorld.contains(5)
            ? Tooltip(
                message: 'Halloween Town',
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
        !shownWorld.contains(6)
            ? Tooltip(
                message: 'Land of Dragons',
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
        !shownWorld.contains(7)
            ? Tooltip(
                message: 'The World That Never Was',
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
        !shownWorld.contains(8)
            ? Tooltip(
                message: "Beast's Castle",
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
        !shownWorld.contains(9)
            ? Tooltip(
                message: "Agrabah",
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
        !shownWorld.contains(10)
            ? Tooltip(
                message: "Pride Lands",
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
        !shownWorld.contains(11)
            ? Tooltip(
                message: "Hallow Bastion",
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
        !shownWorld.contains(12)
            ? Tooltip(
                message: "Disney Castle",
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
        !shownWorld.contains(13)
            ? Tooltip(
                message: "Simulated Twilight Town",
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
        /*Tooltip(
          message: "Final Xemnas",
          child: GestureDetector(
            onTap: () {
              setState(() {
                _14disabled = !_14disabled;
              });
            },
            child: _14disabled ? d14 : a14,
          ),
        ),*/
      ],
    );
  }
}
