import 'package:epic_inviation/Authentication/forgot_passoword.dart';
import 'package:epic_inviation/Authentication/otp_screen.dart';
import 'package:epic_inviation/Authentication/sign_up_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/user_input.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.black,
      body: SafeArea(child:
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Flexible(child: Container(), flex: 2,),
            Image.asset('assets/logo.png'),

            const SizedBox(height: 32,),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: const Text('Login to Your Account', textAlign: TextAlign.left, style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),),
            ),
            const SizedBox(height: 32,),
            UserInput(textEditingControllerl: _emailController, textInputType: TextInputType.name, hintText: 'Username',InputIcon: Icons.person),
            const SizedBox(height: 24,),
            UserInput(textEditingControllerl: _passwordController, textInputType: TextInputType.text, hintText: 'Password', isPass: true,InputIcon: Icons.lock, endIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 18,),),
            //const SizedBox(height: 12,),
            const SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    SizedBox(
                      height: 25,
                      width: 26,
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                          checkColor: Colors.white ,
                          fillColor: MaterialStateProperty.resolveWith((states) => getColor(states)),
                          value: value, onChanged: (bool? Value){
                        setState((){
                          value= Value!;
                        });
                      }),
                    ),
                    Text('   Remember me', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16)
                    ),)
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ResetPasswordScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Forgot Password', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      fontSize: 16
                    ),),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 24,),
            InkWell(child: Buttonls(data: 'Login',),onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return OtpScreen();
              }));
            },),
            const SizedBox(height: 12,),
            Flexible(child: Container(), flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // GestureDetector(
                //   onTap: (){
                //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(vertical: 8),
                //     child: Text('Sign Up', style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: mainColor,
                //       fontSize: 16
                //     ),),
                //   ),
                // ),
              ],
            ),



          ],
        ),
      ),
      ),
    );
  }
}
