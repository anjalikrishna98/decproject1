import 'package:decproject1/SQFLite_Sample/hOME.dart';
import 'package:decproject1/loginpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Regpage extends StatefulWidget{

  @override
  State<Regpage> createState() => _RegpageState();
}

class _RegpageState extends State<Regpage> {

  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  void Registerr ()async {
    logindata = await SharedPreferences.getInstance();

    String name = name_controller.text;
    String username = username_controller.text;
    String password = password_controller.text;

    if (username != '' && password != '') {
      logindata.setString('name', name);
      logindata.setString('username', username);
      logindata.setString('password', password);

      Navigator.push(context,MaterialPageRoute(builder:(context)=> Home()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page"),),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User name",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: ElevatedButton(onPressed: (){
                Registerr();
              }, child: const Text("Register")),
            )
          ],
        ),
      ),
    );
  }
}
