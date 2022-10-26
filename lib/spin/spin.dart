import 'dart:async';

import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Position 1',
      'Position 2',
      'Position 3',
      'Position 4',
      'Position 5',
      'Position 6',
      'Position 7',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Spin To Win'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpinButton(data: '5',data2: 'earned'),
              SpinButton(data: '1',data2: 'remaining'),

            ],
          ),
          Container(
            height: 300,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected.add(
                    Fortune.randomInt(0, items.length),
                  );
                });
              },
              child: Column(
                children: [
                  Expanded(
                    child: FortuneWheel(
                      selected: selected.stream,
                      items: [
                        for (var it in items) FortuneItem(child: Text(it)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


