import 'package:flutter/material.dart';
import 'package:state_management/pages/drawer_tile.dart';
import 'package:state_management/pages/home_page.dart';
import 'package:state_management/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.lock_open_rounded, size: 80, color: Theme.of(context).colorScheme.inversePrimary,),),
          ),

          DrawerTile(text: "H O M E", icon: Icons.house, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
          }),
           DrawerTile(text: "S E T T I N G S", icon: Icons.settings, onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
           }),
           const Spacer(),
          DrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: (){}),
          const SizedBox(height: 24.0,)
        ],
      ),
    );
  }
}