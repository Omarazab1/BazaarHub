
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  /*List<DrawerItem> items = [
    DrawerItemModel(
      title: 'My Profile',
      icon: Icons.perm_identity,
      onTap: () => GoRouter.of(context).push(AppRouter.kMyProfile),
    ),
    DrawerItemModel(title: 'Devices', icon: Icons.device_unknown, onTap: () {
          () => GoRouter.of(context).push(AppRouter.kSearchForDevice);
    }),
    DrawerItemModel(title: 'Tutorial', icon: Icons.history_edu, onTap: () {}),
    DrawerItemModel(
        title: 'Overview', icon: Icons.interests_outlined, onTap: () {}),
  ];*/

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const  Color(0xffDBDBDB),
      child: Column(
        children: [
          const  DrawerHeader(
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 48,
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


