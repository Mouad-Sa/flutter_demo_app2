import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String itemTitle;
  final String route;
  final Icon icon;

  const DrawerItemWidget(this.itemTitle, this.route, this.icon, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
      leading: icon,
      trailing: const Icon(Icons.arrow_right, color: Colors.deepOrange),
      title: Text(
        itemTitle,
        style: const TextStyle(fontSize: 18, color: Colors.deepOrange),
      ),
    );
  }
}
