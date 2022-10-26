import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:epic_inviation/widgets/user_input.dart';
import 'package:flutter/material.dart';
class AddNewContactScreen2 extends StatefulWidget {
  const AddNewContactScreen2({Key? key}) : super(key: key);

  @override
  State<AddNewContactScreen2> createState() => _AddNewContactScreen2State();
}

class _AddNewContactScreen2State extends State<AddNewContactScreen2> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _notes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Add New Contact',style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
      ),),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Center(
                        //   child: Stack(
                        //     children: [
                        //       const CircleAvatar(
                        //         radius: 64,
                        //         backgroundImage: NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
                        //       ),
                        //       Positioned(
                        //           left: 80,
                        //           bottom: -10,
                        //           child:  IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo, color: Colors.green,))),
                        //     ],
                        //   ),
                        // ),

                        Container(
                          height: MediaQuery.of(context).size.height * 0.76,
                          child: SingleChildScrollView(
                            child: Column(
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
                                const SizedBox(height: 20,),
                                UserInput2(textEditingControllerl: _firstName, textInputType: TextInputType.emailAddress, hintText: 'First Name',),
                                const SizedBox(height: 20,),
                                UserInput2(textEditingControllerl: _lastName, textInputType: TextInputType.text, hintText: 'Last Name',),
                                const SizedBox(height: 20,),
                                UserInput2(textEditingControllerl: _email, textInputType: TextInputType.emailAddress, hintText: 'Email',),
                                const SizedBox(height: 20,),

                                UserInput2(textEditingControllerl: _phone, textInputType: TextInputType.numberWithOptions(signed: true, decimal: true), hintText: 'Phone',),
                                const SizedBox(height: 20,),
                                UserInputMultiline(textEditingControllerl: _notes, textInputType: TextInputType.text, hintText: 'Notes',),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,bottom: 30),
                                    child: Text(

                                      "150 characters max",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff9e9e9e),
                                        fontSize: 12,
                                      ),

                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Buttonl(data: 'Cancel',color: Color(0xff35383f),),
                                    Buttonl(data: 'Save', color: mainColor2,),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //Flexible(child: Container(), flex: 2,),

                      ],
                    ),
                  //Flexible(child: Container(),),

                ],
              ),
            ))),

    );
  }
}
