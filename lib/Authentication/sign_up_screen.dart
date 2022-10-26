
import 'package:epic_inviation/AccountSetupScreens/account_setup_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/user_input.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      backgroundColor: Colors.black,
      body: SafeArea(child:
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Flexible(flex: 2,child: Container(),),
            Image.asset('assets/logo.png'),
            const SizedBox(height: 32,),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: const Text('Create Your Account', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 32,
                  letterSpacing: 0, /*percentages not used in flutter. defaulting to zero*/
                  fontWeight: FontWeight.bold,
                  height: 1.5 /*PERCENT not supported*/
              ),),
            ),
            const SizedBox(height: 32,),
            UserInput(textEditingControllerl: _emailController, textInputType: TextInputType.emailAddress, hintText: 'Email',InputIcon: Icons.email),
            const SizedBox(height: 24,),
            UserInput(textEditingControllerl: _passwordController, textInputType: TextInputType.text, hintText: 'Password', isPass: true,InputIcon: Icons.lock, endIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 18,),),
            const SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Text('   Remember me', style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 16,
                    ))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24,),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return AccountSetupScreen();
              }));
            },child: Buttonls(data: 'Sign Up')),
            const SizedBox(height: 12,),
            Flexible(child: Container(), flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text('Already have an account? ', style: TextStyle(color: Colors.white,fontSize: 16),),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LogInScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text('Sign in', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      fontSize: 16,
                    ),),
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
