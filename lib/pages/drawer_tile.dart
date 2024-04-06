import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;
  const DrawerTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var color  = Theme.of(context).colorScheme.inversePrimary;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 8.0),
      child: ListTile(onTap: onTap, title: Text(text, style: TextStyle(color: color),), leading: Icon(icon, color:color,),),
    );
  }
}