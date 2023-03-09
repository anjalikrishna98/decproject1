import 'package:decproject1/loginpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: SharedMain(),
        );
      }));
}

class SharedMain extends StatefulWidget {
  @override
  State<SharedMain> createState() => _SharedMainState();
}

class _SharedMainState extends State<SharedMain> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true);
    print(newuser);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDashboard()));
    }
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 10),
            child: Text(
              " Login Form ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 10),
            child: Text(
              "To show Example of Shared Preference",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextFormField(
              controller: username_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: "User Name",
                  labelText: "User Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
            child: ElevatedButton(
              onPressed: () {
                String username = username_controller.text;
                String password = password_controller.text;

                if (username != '' && password != '') {
                  print("Succesfull");

                  logindata.setBool('newuser', false);
                  logindata.setString('username', username);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyDashboard()));
                }
              },
              child: const Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}
