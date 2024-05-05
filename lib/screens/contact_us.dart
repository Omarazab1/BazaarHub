import 'package:flutter/material.dart';

class ContactUS extends  StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.asset(
            'assets/images/contact.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            height: size.height * 0.34,
          ),
           const SizedBox(height: 10,),
           const ListTile(
              leading: Icon(Icons.email_outlined , color: Color(0xff002542),),
              title: Text('bazzarhub12@gmail.com',style:  TextStyle(color: Color(0xff919591)),),
            ),
          const  SizedBox(height: 10,),
          const  ListTile(
              leading: Icon(Icons.phone,color: Color(0xff002542),),
              title: Text('01000230213',style: TextStyle(color: Color(0xff919591)),),

            ),
           const SizedBox(height: 10,),
            const  ListTile(
              leading: Icon(Icons.location_on_outlined,color: Color(0xff002542),),
              title: Text(' Salah Salem st., Nasr City, Cairo, 11562, Egypt.',style: TextStyle(color: Color(0xff919591)),),

            ),


        ],
            ),
      ),
    );
  }
}
