import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: "johndoe@flutterfire.com",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextFormField(
              controller: _passwordField,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: "johndoe@flutterfire.com",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () => {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () => {},
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}