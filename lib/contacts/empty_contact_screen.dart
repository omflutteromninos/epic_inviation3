import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/contacts/contacts_screen.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:epic_inviation/widgets/show_alert_screen.dart';
import 'package:flutter/material.dart';

import 'add_new_contact_screen.dart';


class EmptyContactsScreen extends StatelessWidget {
  const EmptyContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        )
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
        body: Padding(
          padding: const EdgeInsets.only(),
          child: ListView(
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
                    return showdialoguebox(content: 'Would you like to import your contact list from your phone?',title: 'Import Contacts',
                      actions1: [Align(alignment: Alignment.center,child: InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactsScreen()));
                      },child: ButtonInvite(data: 'Import')))],
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
              Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 40,),

              Container(
                alignment: Alignment.center,
                //margin: EdgeInsets.only(top: 100, bottom: 33, left: 10),
                child: Text(
                  "You don’t have any contacts saved yet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
