import 'dart:async';

import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
class backup extends StatefulWidget {
  @override
  _backupState createState() => _backupState();
}

class _backupState extends State<backup> {
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
    ];

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Spin To Win'),
          backgroundColor: Colors.transparent,
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
              height: 400,
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
                      child: Stack(
                        children: [
                          FortuneWheel(
                            selected: selected.stream,
                            items: const [
                              FortuneItem(child: Text('position1'),style: FortuneItemStyle(
                                color: Color.fromRGBO(92, 91, 165, 1),
                              )),
                              FortuneItem(child: Text('position2'),style: FortuneItemStyle(
                                color: Color.fromRGBO(74,71,152,1),
                              )),
                              FortuneItem(child: Text('position3'),style: FortuneItemStyle(
                                color: Color.fromRGBO(92, 91, 165, 1),
                              )),
                              FortuneItem(child: Text('position4'),style: FortuneItemStyle(
                                color: Color.fromRGBO(74,71,152,1),
                              )),
                              FortuneItem(child: Text('position5'),style: FortuneItemStyle(
                                color: Color.fromRGBO(92, 91, 165, 1),
                              )),
                              FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                color: Color.fromRGBO(74,71,152,1),
                              )),
                              FortuneItem(child: Text('position7'),style: FortuneItemStyle(
                                color:Color.fromRGBO(92, 91, 165, 1),
                              )),

                              FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                color: Color.fromRGBO(74,71,152,1),
                              )),
                            ],
                          ),
                          Positioned(left: 145,
                              top: 150,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(43, 57, 144, 1),
                                radius: 50,
                                child: Text('Spin!',style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),

                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


