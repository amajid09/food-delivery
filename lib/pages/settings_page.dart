import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/pages/drawer.dart';
import 'package:state_management/themes/theme_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"),centerTitle: true,backgroundColor: Theme.of(context).colorScheme.background,),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: const EdgeInsets.only(top: 10.0, right: 25,left: 25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),  
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode', 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.inversePrimary,),
                ),
                CupertinoSwitch(value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode, onChanged: (value){
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();

                })
              ],
            ),
          )
        ],
      ),
    );
  }
}