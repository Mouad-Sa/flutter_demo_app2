import 'package:flutter/material.dart';
import 'package:demo_app_2/global/global.parameters.dart';
import 'package:demo_app_2/widgets/drawer.header.widget.dart';
import 'package:demo_app_2/widgets/drawer.item.widget.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeaderWidget(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: 2,
                color: Colors.deepOrange,
              ),
              itemCount: GlobalParameters.menus.length,
              itemBuilder: (context, index) => DrawerItemWidget(
                GlobalParameters.menus[index]['title'] as String,
                GlobalParameters.menus[index]['route'] as String,
                GlobalParameters.menus[index]['icon'] as Icon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
