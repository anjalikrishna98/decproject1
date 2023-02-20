import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: const [
         Card(
           child: ListTile(
             isThreeLine: true,
             leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9U5QExyyfZPEbrQSmu7vsqORJ6pNqP8wdqVbhzKY&s"),),
             title: Text("Adithya"),
             subtitle: Text(" Yesterday 7.30"),
             trailing: Icon(Icons.phone),
           ),
         ),
         Card(
           child: ListTile(
             isThreeLine: true,
             leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1658292905905-71d6d5f2ce97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Ym95cyUyMGRwfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),),
             title: Text("Amal"),
             subtitle: Text(" Yesterday 7.30 "),
             trailing: Icon(Icons.phone),
           ),
         ),
         Card(
           child: ListTile(
             isThreeLine: true,
             leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1578979879663-4ba6a968a50a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMGdpcmx8ZW58MHx8MHx8&w=1000&q=80"),),
             title: Text("Mahima"),
             subtitle: Text(" Yesterday 7.30"),
             trailing:  Icon(Icons.phone),
           ),
         ),Card(
           child: ListTile(
             isThreeLine: true,
             leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1595111633191-7a8c1b0f7f98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3R1ZHklMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),),
             title: Text("Jyothy"),
             subtitle: Text("Yesterday 7.30"),
             trailing: Icon(Icons.phone),
           ),
         ),
         Card(
           child: ListTile(
             isThreeLine: true,
             leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1617868186608-87ae5c6f422c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdpcmwlMjBhbG9uZXxlbnwwfHwwfHw%3D&w=1000&q=80"),),
             title: Text("Chithira"),
             subtitle: Text("Yesterday 7.30"),
             trailing:  Icon(Icons.phone),
           ),
         ),
       ],
     ),
   );
  }
}
