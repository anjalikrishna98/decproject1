import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class MyDashboard extends StatefulWidget {
  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String password;
  late String name;

  @override
  void initState() {
    check_if_already_login();
    getValue;
  }

  void getValue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      password = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SharedMain()));
    }
  }

  @override
  Widget build(BuildContext context) {
    var uname;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared preference Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hai $uname Welcome to luminar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String username = username_controller.text;
                  String password = password_controller.text;

                  if (username != '' &&
                      password != '' &&
                      username == uname &&
                      password == password) {
                    print('Succesfull');
                    logindata.setBool('newuser', false);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyDashboard()));
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
