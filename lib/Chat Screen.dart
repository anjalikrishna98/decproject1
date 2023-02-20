import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  var images =<String>["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9U5QExyyfZPEbrQSmu7vsqORJ6pNqP8wdqVbhzKY&s",
  "https://images.unsplash.com/photo-1658292905905-71d6d5f2ce97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Ym95cyUyMGRwfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1578979879663-4ba6a968a50a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMGdpcmx8ZW58MHx8MHx8&w=1000&q=80"
  "https://images.unsplash.com/photo-1595111633191-7a8c1b0f7f98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3R1ZHklMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1617868186608-87ae5c6f422c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdpcmwlMjBhbG9uZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1476950743170-ab77e7d4d82e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhb3N8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"];

  var names = <String>['Amma','Amal','Adhithya','Chithira','Mahima','Jyothy','Aswani'];
  var message =<String>['Hello','Hello','Hello','Hello','Hello','Hello''Hello'];
  var time=['6.45','6.55','7.00','7.15','7.20','7.30','7.45'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount:images.length,
          itemBuilder: (BuildContext,index){
        return ListTile(
          leading: CircleAvatar(backgroundImage:(NetworkImage(images[index])),),
          title: Text(names[index]),
          subtitle: Text(message[index]),
          trailing: Text(time[index]),
        );
      })
       
    );
  }
}
