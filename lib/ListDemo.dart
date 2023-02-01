import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children:  [
      const Center(
          child: Text(
        "My Contacts",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      Card(
        color: Colors.cyan,
        child: ListTile(
          leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png"),),
          title: Text('Name 1'),
          subtitle: Text("6235937787"),
          trailing: Wrap(children: const [
            Icon(Icons.message),
            Icon(Icons.phone),
          ]),
        ),
      ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/11_avatar-512.png"),),
              title: Text('Name 2'),
              subtitle: Text("9845773387"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
              ]),
            ),
          ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/4_avatar-512.png"),),
              title: Text('Name 3'),
              subtitle: Text("7025174434"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
              ]),
            ),
          ),
    ]));
  }
}
