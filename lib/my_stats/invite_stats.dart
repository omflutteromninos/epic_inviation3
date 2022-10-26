import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteStats extends StatefulWidget {
  const InviteStats({Key? key}) : super(key: key);

  @override
  State<InviteStats> createState() => _InviteStatsState();
}

class _InviteStatsState extends State<InviteStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Invite Status', style: TextStyle(color: Colors.white,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                children: [

                  statstabButton(data: 'Last 7 Days',color: mainColor2,),
                  SizedBox(width: 20,),
                  statstabButton(data: 'This Month',color: Colors.grey,),
                ],
              ),
              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
              ),
              //SizedBox(height: 10,),
              ListTile(
                leading: Text('Pending Invitations', style: TextStyle(
                  color: Color(0xff51b950),
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w900,
                ),),
                trailing: Text('4', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color(0xff51b950),
                    fontSize: 40,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
              ),
              //SizedBox(height: 10,),
              ListTile(
                leading: Text('Team Invitations', style: TextStyle(    color: Colors.grey,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w900,),),
                trailing: Text('75', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 40,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),),
              SizedBox(height: 30,),
              SizedBox(

                child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    title: Text('Max William', style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                    ),),
                ),

              ),
              SizedBox(

                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  title: Text('Max William', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                  ),),
                ),

              ),
              SizedBox(

                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  title: Text('Max William', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                  ),),
                ),

              ),
              SizedBox(height: 8,),

              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: statsUnselectedcolor)),
                ),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Date sent', style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w900,
                          )
                        ),),
                      ),
                      Text('08/07/2022', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Status', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            )
                        ),),
                      ),
                      Text('Recieved', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ],

                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Watched', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            )
                        ),),
                      ),
                      Text('2:01:32', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: statsUnselectedcolor)),
                ),),
              SizedBox(height: 10,),
              SizedBox(

                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  title: Text('Max William', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                  ),),
                ),

              ),


            ],
          ),
        ),

      ),
    );
  }
}
