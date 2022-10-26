import 'package:epic_inviation/widgets/user_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import '../contacts/add_new_contact_screen.dart';
import '../widgets/button.dart';


class SendInvitesTOScreen extends StatefulWidget {
  const SendInvitesTOScreen({Key? key}) : super(key: key);

  @override
  State<SendInvitesTOScreen> createState() => _SendInvitesTOScreenState();
}

class _SendInvitesTOScreenState extends State<SendInvitesTOScreen> {
  TextEditingController _messagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Send Invites to:',style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(width: 30,)
          ],
        ),
        body: SingleChildScrollView(

          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(height: 30,),
                    Image.asset('assets/sendinvite.png', width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    SizedBox(height: 10,),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text('Why you should join this team...', style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w900,


                        ),
                      ),),
                    ),
                    const Text('2 min. 23 sec.', style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('  Custom Message ',
                          textAlign: TextAlign.start,style: TextStyle(
                          color: Colors.white,
                            fontSize: 12,
                        ),),
                        Text('(150 characters max):',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 10,),

                  ],
          ),
                 Container(
                     width: MediaQuery.of(context).size.width * 0.9,
                     child: TextField(
                       controller: _messagecontroller,
                       keyboardType: TextInputType.text,
                       style: TextStyle(
                         color: Colors.grey,
                       ),
                       maxLines: 3,
                       decoration: InputDecoration(


                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(width: 1, color: Colors.grey),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(width: 1, color: Colors.blue),
                         ),
                       ),
                     ),

                 ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Container(
                          height: 52,
                          width: 52,
                          margin: EdgeInsets.only(left: 5),
                          child: const CircleAvatar(
                            radius: 52,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                        ),
                        trailing: Icon(Icons.check_box, color: mainColor,),
                        title: const Text('Jack Betterbirg', style: TextStyle(
                          color: Color(0xfff5f5f5),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),),

                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Container(
                          height: 52,
                          width: 52,
                          margin: EdgeInsets.only(left: 5),
                          child: const CircleAvatar(
                            radius: 52,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                        ),
                        trailing: Icon(Icons.check_box, color: mainColor,),
                        title: const Text('Jack', style: TextStyle(
                          color: Color(0xfff5f5f5),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),),

                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context){
                          return AddNewContactScreen2();
                        } ));},
                        leading: Container(
                          height: 52,
                          width: 52,
                          margin: EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            radius: 52,
                            //backgroundImage: AssetImage('assets/profile.jpg'),
                            backgroundColor: mainColor2,
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                        ),
                        //trailing: Icon(Icons.check_box, color: mainColor,),
                        //title: const Text('Jack', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        title: const Text('Add new contact', style: TextStyle(
                          color: Color(0xfff5f5f5),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),),

                      ),
                    ],
                  ),


                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Image.asset('assets/invitation.png',height: 50,width: 50,),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('Send It!',style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,

                    ),
                  ),)
                ],
              ),
            ),
      ),
        )
      ),
    );
  }
}

