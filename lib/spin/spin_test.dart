import 'dart:async';

import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
class ExamplePage2 extends StatefulWidget {
  @override
  _ExamplePage2State createState() => _ExamplePage2State();
}

class _ExamplePage2State extends State<ExamplePage2> {
  StreamController<int> selected = StreamController<int>();
  int StreamInt = 10;

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
    num data = 3;
    dynamic data2 = 3;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: false,
          title: Text('Spin To Win',style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpinButton(data: '5',data2: 'Earned'),
                SpinButton(data: '1',data2: 'Remaining'),

              ],
            ),
            Container(
              height: 350,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    for(int i=0; i<=6;i++){
                      StreamInt=i;
                      Future.delayed(Duration(seconds: 4));
                      print(StreamInt);
                    }
                  });
                  //Future.delayed(Duration(seconds: 2));

                  setState(() {
                    StreamInt = Fortune.randomInt(0, items.length);
                    //StreamInt=3;
                    selected.add(
                      StreamInt,
                    );
                    print(StreamInt);
                  });
                  //print(object)
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [

                          CircleAvatar(
                            radius: 280,
                          backgroundColor: const Color.fromRGBO(66, 66, 109, 1),




                          child:CircleAvatar(
                            radius: 170,
                            // decoration: BoxDecoration(
                            //   //borderRadius: BorderRadius.circular(190),
                            //   border: Border.all(
                            //     color: Colors.green,
                            //     width: 3,
                            //   )
                            //
                            // ),
                            child: FortuneWheel(
                              styleStrategy: FortuneBar.kDefaultStyleStrategy,
                              selected: selected.stream,
                              items: [
                                FortuneItem(child: Container(
                                  child: Text('   postition 1',style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==0 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==0 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                )),

                                FortuneItem(child: Container(
                                  child: Text('   postition 2',style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==1 ? Colors.yellow : Color.fromRGBO(74, 71, 152, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==1 ? Colors.yellow : Color.fromRGBO(74, 71, 152, 1),
                                )),

                                FortuneItem(child: Container(
                                  child: Text('  postition 3',style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==2 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==2 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                )),


                                FortuneItem(child: Container(
                                  child: Text('   postition 4',style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                  color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                  )
                                ),),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==3 ? Colors.yellow : Color.fromRGBO(74, 71, 152, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==3 ? Colors.yellow : Color.fromRGBO(74,71,152,1),
                                )),


                                FortuneItem(child: Container(
                                  child: Text('   postition 5',style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==4 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==4 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                )),
                                FortuneItem(child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: StreamInt==5 ? Colors.yellow : Color.fromRGBO(74, 71, 152, 1),
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Center(child: Text('   postition 6',style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),),



                                ),style: FortuneItemStyle(
                                  borderColor: Color.fromRGBO(66, 66, 109, 1),
                                  color:StreamInt==5 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                )),











                                // FortuneItem(child: Text('position2'),style: FortuneItemStyle(
                                //   color:StreamInt==1 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                // FortuneItem(child: Text('position3'),style: FortuneItemStyle(
                                //     color:StreamInt==2 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                // FortuneItem(child: Text('position4'),style: FortuneItemStyle(
                                //     color:StreamInt==3 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                // FortuneItem(child: Text('position5'),style: FortuneItemStyle(
                                //   color:StreamInt==4 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                // FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                //     color:StreamInt==5 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                // FortuneItem(child: Text('position7'),style: FortuneItemStyle(
                                //   color:StreamInt==6 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                                //
                                // FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                //   color:StreamInt==7 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                // )),
                              ],
                            ),
                          )),
                          const Center(
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(43, 57, 144, 1),
                              radius: 50,
                              child: Text('Spin!',style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),

                            ),
                          ),



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


