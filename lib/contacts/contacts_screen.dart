import 'dart:ffi';

import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/show_alert_screen.dart';
import 'add_new_contact_screen.dart';


class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg',),fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('My Contacts',style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,),
            child: Column(
              children: [
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
                //SizedBox(height: 5,),
                ListTile(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return showdialoguebox(content: 'Would you like to import contact list from your phone?',title: 'Import Contacts',
                        actions1: [Align(alignment: Alignment.center,child: InkWell(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactsScreen()));
                        },child: ButtonInvite(data: 'import')))],
                      );
                    });
                  },
                  leading: Container(
                    height: 52,
                    width: 52,
                    margin: EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 52,
                      //backgroundImage: AssetImage('assets/profile.jpg'),
                      backgroundColor: mainColor2,
                      child: Icon(Icons.sync, color: Colors.white,),
                    ),
                  ),
                  subtitle: Text(
                    "Import recently added contacts",
                    style: TextStyle(
                      color: Color(0xff9e9e9e),
                      fontSize: 12,
                    ),
                  ),
                  //trailing: Icon(Icons.check_box, color: mainColor,),
                  //title: const Text('Jack', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  title: const Text('Sync Contacts', style: TextStyle(
                    color: Color(0xfff5f5f5),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),),

                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                ),
                Expanded(

                  child: ListView(
                    children: [

                      SizedBox(height: 20,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),
                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: ButtonInviteLogo(data: 'Invite!',),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: ButtonInviteLogo(data: 'Invite!',),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
