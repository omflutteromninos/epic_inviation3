import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
class Buttonls extends StatelessWidget {
  Buttonls({Key? key,required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
        color: Color.fromRGBO(81, 185, 80, 1),
      ),
      child: Text(data, style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Color(0xfff5f5f5),
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w700,
        ),
      )),

    );
  }
}
class Buttonls1 extends StatelessWidget {
  Buttonls1({Key? key,required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
        color: Color.fromRGBO(81, 185, 80, 1),
      ),
      child: Text(data, style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Color(0xfff5f5f5),
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w900,
        ),
      )),

    );
  }
}

class Buttonl extends StatelessWidget {
  Buttonl({Key? key,required this.data, required this.color}) : super(key: key);
  String data;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 60,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
        color:color,
      ),
      child: Text(data, style: TextStyle(
        color: Color(0xfff5f5f5),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
      ),),

    );
  }
}

class ButtonInvite extends StatelessWidget {
  ButtonInvite({Key? key,required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      alignment: Alignment.center,
     // padding: const EdgeInsets.symmetric(vertical: 0),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
        color: mainColor2,
      ),
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Text(data, style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Color(0xfff5f5f5),
            fontSize: 16,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        )),
      ),

    );
  }
}

//button with logo and text
class ButtonInviteLogo extends StatelessWidget {
  ButtonInviteLogo({Key? key,required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      alignment: Alignment.center,
      // padding: const EdgeInsets.symmetric(vertical: 0),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
        color: mainColor2,
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset('assets/invitation.png', height: 20,width: 20,),
            ),
            Container(
              //margin: EdgeInsets.only(left: 5, right: 5),
              child: Text(data, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
            ),
          ],
        ),
      ),

    );
  }
}










//spin screen button


class SpinButton extends StatelessWidget {
  SpinButton({Key? key,required this.data, required this.data2}) : super(key: key);
  String data;
  String data2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,

      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
        color: Color.fromRGBO(81, 185, 80, 1),
      ),
      child:Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 25,),
            Text(data,style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              )
            )),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Spins',textAlign: TextAlign.left, style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color(0xfff5f5f5),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              Text(data2,textAlign: TextAlign.left,   style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xfff5f5f5),
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
              )),
              ],
            )
          ],
        ),
      

    );
  }
}

class justAtest extends StatelessWidget {
  const justAtest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170.2083282470703,
        height: 57,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 6.75,
                  left: 0,
                  child: Container(
                      width: 170.2083282470703,
                      height: 47.5,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 170.2083282470703,
                                    height: 47.5,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                      color : Color.fromRGBO(81, 185, 80, 1),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 21,
                  left: 66,
                  child: Text('Spins Earned', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 0,
                  left: 24,
                  child: Text('5', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 40,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
            ]
        )
    );
  }
}

class statstabButton extends StatelessWidget {
  statstabButton({Key? key, required this.data,required this.color}) : super(key: key);
  String data;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: ShapeDecoration(shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
        color: color,
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(data,style: const TextStyle(
            color: Color(0xfff5f5f5),
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
        ),
      ),

    );;
  }
}






