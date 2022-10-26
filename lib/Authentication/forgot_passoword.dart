
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';

import '../widgets/user_input.dart';
import 'login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ConfirmPasswordController = TextEditingController();
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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                child: const Text('Reset Your Password', textAlign: TextAlign.left, style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700, /*PERCENT not supported*/
                ),),
              ),
              const SizedBox(height: 32,),
              UserInput2(textEditingControllerl: _passwordController, textInputType: TextInputType.emailAddress, hintText: 'Enter new password',endicon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 18,),),
              const SizedBox(height: 24,),
              UserInput2(textEditingControllerl: _ConfirmPasswordController, textInputType: TextInputType.text, hintText: 'Confirm new password', isPass: true,endicon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 18,),),
              const SizedBox(height: 24,),

              Buttonls(data: 'Reset  Password'),
              const SizedBox(height: 12,),
              Flexible(child: Container(), flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text('Remember your password?', style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LogInScreen()));
                    },
                    child: Container(
                      child: const Text(' Login', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        ),
      ),
    );
  }
}
