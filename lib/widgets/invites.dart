import 'package:epic_inviation/InvitationScreens/send_invitesto_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteTile extends StatelessWidget {
  InviteTile({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            height: 70,
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,


                    ),
                  ) ),
                SizedBox(height: 3,),
                Text('2 min. 23 sec.',style: TextStyle(color: Colors.white38),),
              ],
            ),
          ),

          Image.asset('assets/sendinvite.png', height: 74,width: 104,),
          GestureDetector(child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Image.asset('assets/invitation.png', height: 30, width: 30,color: mainColor2,),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SendInvitesTOScreen();
            }));
          },
          ),
        ],
      ),
    );
  }
}
