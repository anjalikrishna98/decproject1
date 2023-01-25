import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Login Page"),
          ),
           Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  hintText: 'User Name',
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'USER'),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password),
                  labelText: 'PASSWORD'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: () {}, child: Text("Sign In")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Not a user ? Register Here !!"),
          ),
        ],
      ),
    );
  }
}
