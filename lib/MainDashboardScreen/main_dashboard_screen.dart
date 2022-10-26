
import 'package:epic_inviation/AccountSetupScreens/account_setup_screen.dart';
import 'package:epic_inviation/InvitationScreens/invites_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/contacts/empty_contact_screen.dart';
import 'package:epic_inviation/my_stats/invite_stats.dart';
import 'package:epic_inviation/my_stats/my_stats.dart';
import 'package:epic_inviation/spin/final_spin_screen.dart';
import 'package:epic_inviation/spin/spin.dart';
import 'package:epic_inviation/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../spin/spin_test.dart';

class MainDashboardScreen extends StatelessWidget {
  const MainDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset('assets/logo.png', height: 110,width: 121,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return AccountSetupScreen();
                          }));
                        },
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                        ),
                      ),
                    )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17,right: 17,left: 17,bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 191,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff51b950), width: 2, ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),


                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                SizedBox(height: 40,),
                                Flexible(
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text('Invitations for the past 7 days:  ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    style: GoogleFonts.montserrat(

                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )
                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('4    ', style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Color(0xff51b950),
                                      fontSize: 45,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w900,
                                    )
                                ),),
                                SizedBox(width: 30,),
                                Text('Personal', style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    )
                                ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FittedBox(
                                  fit:BoxFit.fitWidth,
                                  child: Text('250', style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Color(0xff51b950),
                                      fontSize: 45,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w900,
                                    )
                                  ),),
                                ),
                                SizedBox(width: 30,),
                                Text('My Team', style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    )
                                ),),
                              ],
                            ),
                          ),

                          // ListTile(
                          //   leading: Text('4', style: TextStyle(fontSize: 40, color: mainColor, fontWeight: FontWeight.bold),),
                          //   title: const Text('Personal', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, ),),
                          // ),
                          // ListTile(
                          //   leading: Text('250', style: TextStyle(fontSize: 40, color: mainColor, fontWeight: FontWeight.bold),),
                          //   title: const Text('Team', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    //MyCard(imageUrl: './assets/invitation.png', title: "Invitation"),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return InvitesScreen();
                        }));
                      }, child: MyCard(imageUrl: './assets/invitation.png', title: "Send Invite",),
                      ),
                      InkWell(child: MyCard(imageUrl: './assets/contacts.png', title: "My Contacts"),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return EmptyContactsScreen();
                        }));
                      },
                      ),
                    ],
                  ),
                  Row(
                    //MyCard(imageUrl: './assets/invitation.png', title: "Invitation"),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(child: MyCard(imageUrl: './assets/stats.png', title: "Stats"),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return MyStats();
                        }));
                      },
                      ),
                      InkWell(child: MyCard(imageUrl: './assets/myspins.png', title: "My Spins"),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return FinalSpinScreen();
                        }));
                      },
                      ),
                    ],
                  ),
                  Row(
                    //MyCard(imageUrl: './assets/invitation.png', title: "Invitation"),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(child: MyCard(imageUrl: './assets/invitestatus.png', title: "Invite Status"),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const InviteStats();
                        }));
                      },

                      ),
                      InkWell(child: MyCard(imageUrl: './assets/contacts.png', title: "My Account"),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const AccountSetupScreen();
                          }));
                        },

                      )

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
