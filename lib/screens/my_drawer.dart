import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Text(
                "Task Drawer",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
           const ListTile(
              leading: Icon(Icons.folder_special),
              title: Text('My Task'),
              trailing: Text('0'),
            ),
            const ListTile(
              leading: Icon(Icons.folder_special),
              title: Text('Bin'),
              trailing: Text('0'),
            ),
          ],
        ),
      ),
    );
  }
}
