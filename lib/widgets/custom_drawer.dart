
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:store/constants.dart';
import 'package:store/screens/contact_us.dart';
import 'package:store/screens/overview_page.dart';
import 'package:store/screens/profile_page.dart';

import '../utils/App_router.dart';
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

//   BuildContext get context;
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: Column(
        children: [
            const DrawerHeader(
              child: Icon(
                FontAwesomeIcons.shopify,
                size: 52,
              )),
          ListTile(
            leading: const Icon(Icons.perm_identity) ,
            title:  const Text('my Profile'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ProfilePage();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_page_outlined) ,
            title:  const Text('Contact'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ContactUS();
              }));
            },
          ),

          ListTile(
            leading: const Icon(Icons.perm_device_info) ,
            title:  const Text('About'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AboutPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}


