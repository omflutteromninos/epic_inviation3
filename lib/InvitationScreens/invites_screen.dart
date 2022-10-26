import 'package:flutter/material.dart';
import '../widgets/invites.dart';

class InvitesScreen extends StatefulWidget {
  const InvitesScreen({Key? key}) : super(key: key);

  @override
  State<InvitesScreen> createState() => _InvitesScreenState();
}

class _InvitesScreenState extends State<InvitesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(width: 30,)
          ],
          backgroundColor: Colors.transparent,
          title: Text('Invites',style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 50,bottom: 35,left: 10,right: 10),
          child: ListView(
            children: [
              InviteTile(title: 'Why you should join this team...'),
              InviteTile(title: 'Learn how you can be a part...'),
              InviteTile(title: 'The amazing benifits of the...'),
              InviteTile(title: '2023 promotion you cant miss...'),
              InviteTile(title: 'Why you should join this team...'),
              InviteTile(title: 'Why you should join this team...'),
            ],
          ),
        )),
    );
  }
}
