import 'package:epic_inviation/constant.dart';
import 'package:flutter/material.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Forgot Password",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(child: Image.asset('assets/lockicon.png'),padding: EdgeInsets.only(left: 10,right: 10),),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Having trouble logging in?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                    Text(
                        "Please email customer support",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      ),
                    Text(
                        "customerservice@bepic.com",
                        style: TextStyle(
                          fontSize: 16,
                          color: mainColor2
                        ),
                      ),
                    Text(
                        "or by phone at:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    Text(
                        "(888) 555-2070",
                        style: TextStyle(
                          fontSize: 16,
                          color: mainColor2
                        ),
                      ),
                  ],
                ),
               // "Having trouble logging in?\nPlease email customer support customerservice@bepic.com\nor by phone at:\n(888) 555-2070",
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xff51b950), width: 2, ),

              ),
              child: ListTile(
                leading: CircleAvatar(

                ),
              ),
            )
          ],
        ),
        
        
        
          ),
    );
  }
}
