import 'package:epic_inviation/MainDashboardScreen/main_dashboard_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:epic_inviation/widgets/user_input.dart';
import 'package:flutter/material.dart';
class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({Key? key}) : super(key: key);

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Edit Profile',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
      ),


      ),
      centerTitle: false,
      backgroundColor: Colors.black,

        elevation: 0,
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                     const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
                      ),
                      Positioned(
                          left: 95,
                          bottom: 0,
                          child:  Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(

                            color: mainColor2,
                            borderRadius: BorderRadius.circular(5),
                          ),child: Center(child: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: Colors.black,size: 16,))))),
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                UserInput2(textEditingControllerl: fullNameController, textInputType: TextInputType.emailAddress, hintText: 'Full Name',),
                const SizedBox(height: 24,),
                UserInput2(textEditingControllerl: userNameController, textInputType: TextInputType.text, hintText: 'Username',),
                const SizedBox(height: 24,),
                UserInput2(textEditingControllerl: phoneNumberController, textInputType: TextInputType.numberWithOptions(signed: true, decimal: true), hintText: 'Phone Number'),
                //Flexible(child: Container(), flex: 2,),

              ],
            ),
            Flexible(child: Container(), flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(child: Buttonl(data: 'Cancel', color: Color.fromRGBO(53, 56, 63, 1) ,),
                onTap: (){
                  Navigator.of(context).pop();
                },
                ),
                InkWell(child: Buttonl(data: 'Save',color: mainColor2,),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const MainDashboardScreen();
                  }));
                },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
