import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class MyCard extends StatelessWidget {
  MyCard({Key? key, required this.imageUrl,required this.title}) : super(key: key);
  String imageUrl;
  String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Color.fromRGBO(81, 185, 80, 1),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(81, 185, 80, 1),
          ),
          //padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.width * 0.35,
          width: MediaQuery.of(context).size.width * 0.4,
          //color: mainColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageUrl, height: 60,width: 60,),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(title, style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class FMyCard extends StatelessWidget {
  FMyCard({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.width * 0.3,
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
