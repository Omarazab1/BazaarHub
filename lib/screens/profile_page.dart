import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ProfileWidget(),
      );

  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'Omar Essam',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Text('Email' , style: TextStyle(color: Colors.blue , fontSize: 15),),
            title: Text('oe1186@fayoum.edu.eg',style:  TextStyle(color: Color(0xff919591)),),
            trailing: Icon(Icons.email_outlined , color: Colors.blue,),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Text('Phone' ,style:  TextStyle(color: Colors.blue , fontSize: 15)),
            title: Text('01018517555',style: TextStyle(color: Color(0xff919591)),),
            trailing: Icon(Icons.phone,color: Colors.blue,),
          ),

        ],
      ),
    );
  }
}

