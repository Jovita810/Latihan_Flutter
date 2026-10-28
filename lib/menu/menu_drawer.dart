
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              controller.changePage(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              controller.changePage(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              controller.changePage(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
