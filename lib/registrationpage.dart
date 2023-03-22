import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Home.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Registration(),
        );
      }));
}


class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;
  var confirmpass;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Validation'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Login Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    hintText: 'USER NAME',
                    labelText: 'USER',
                    prefixIcon: Icon(Icons.account_circle)),
                validator: (username) {
                  if (username!.isEmpty || !username.contains('@')) {
                    return 'Enter a valid Email id';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: 'PASSWORD',
                  prefixIcon: Icon(Icons.password),
                  labelText: 'PASSWORD',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                ),
                validator: (password) {
                  confirmpass = password;
                  if (password!.isEmpty || (password.length < 6)) {
                    return 'Enter a valid password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: 'CONFIRM PASSWORD',
                  prefixIcon: Icon(Icons.password),
                  labelText: 'CONFIRM PASSWORD',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                ),
                validator: (password) {
                  if (password!.isEmpty || (password.length < 6 || confirmpass!= password)) {
                    return 'Enter a valid password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Login Failed",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          //timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: Text('LOGIN')),
            ),
          ],
        ),
      ),
    );
  }
}
