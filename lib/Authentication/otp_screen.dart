import 'package:epic_inviation/Authentication/sign_up_screen.dart';
import 'package:epic_inviation/MainDashboardScreen/main_dashboard_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/contacts/contacts_screen.dart';
import 'package:epic_inviation/contacts/empty_contact_screen.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../widgets/user_input.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return mainColor;
      }
      return mainColor;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(child:
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Flexible(child: Container(), flex: 2,),
            Image.asset('assets/logo.png'),

            const SizedBox(height: 32,),
            FittedBox(
              fit: BoxFit.fitWidth,

              child: const Text('Enter your 6 digit code', textAlign: TextAlign.left, style: TextStyle( color: Colors.white,
                fontSize: 32,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),),
            ),
            const SizedBox(height: 32,),
            const Text('Enter the code sent to you via SMS', textAlign: TextAlign.left, style: TextStyle(
                color: Color(0xfff5f5f5),
                fontSize: 16,
            ),),
            SizedBox(height: 20,),
            OtpTextField(
              borderColor: Color.fromRGBO(158, 158, 158, 1),
              enabledBorderColor:Color.fromRGBO(158, 158, 158, 1) ,
              disabledBorderColor: Color.fromRGBO(158, 158, 158, 1),
              focusedBorderColor: mainColor2,

              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,

              ),
              numberOfFields: 6,
              //orderColor: Colors.green,
              //set to true to show as box or false to show as dash
              showFieldAsBox: false,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            const SizedBox(height: 32,),


            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Text(
                    'Resend Code',
                    style: TextStyle(color: Color.fromRGBO(81, 185, 80, 1), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24,),

            //const SizedBox(height: 12,),
            InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainDashboardScreen()));
                },
                child: Buttonls(data: 'Login',)),
            const SizedBox(height: 12,),
            Flexible(child: Container(), flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 // child: const Text('Dont have an account?', style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                  },
                  child: Container(
                    // child: const Text('Sign Up', style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   color: Colors.white,
                    // ),),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
      ),
    );
  }
}
