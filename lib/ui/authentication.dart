import 'package:flutter/material.dart';
import 'package:flutterfire_cryptowallet/net/flutterfire.dart';
import 'package:flutterfire_cryptowallet/ui/home_view.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  // Creates a login Text Form Field
  Container _loginFormFieldGenerator(TextEditingController controller,
      String label, String hint, bool hideText) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        controller: controller,
        obscureText: hideText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Created a Button (login or register)
  Container _generateButton(
      String name, Future<bool> Function(String, String) press) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
      ),
      child: MaterialButton(
        onPressed: () async {
          bool shouldNavigate =
              await press(_emailField.text, _passwordField.text);
          if (shouldNavigate) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(),
              ),
            );
          }
        },
        child: Text(
          name,
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  // Created padding element
  SizedBox _padding() => SizedBox(
        height: MediaQuery.of(context).size.height / 35,
      );

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _loginFormFieldGenerator(
              _emailField,
              "Email",
              "johndoe@flutterfire.com",
              false,
            ), //  Create Email TextFormField
            _padding(), //  Padding
            _loginFormFieldGenerator(
              _passwordField,
              "Password",
              "p@ssw0rd",
              true,
            ), //  Create Email TextFormField
            _padding(), //  Padding
            _generateButton(
              "Login",
              signIn,
            ), //  Create Login button
            _padding(), //  Padding
            _generateButton(
              "Register",
              register,
            ), //  Create Register button
          ],
        ),
      ),
    );
  }
}
