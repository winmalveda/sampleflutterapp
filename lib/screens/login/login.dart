import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  var _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {

    final emailField = TextFormField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23.0, 18.0, 23.0, 18.0),
          labelText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
      validator: (value) {
        if (value.length == 0) {
          //return ('Email is Required');
          return "Email is Required";
        }
        else if (value != "Email")
        {
          return "Invalid Email";
        }
      },
    );

    final passwordField = TextFormField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23.0, 18.0, 23.0, 18.0),
          labelText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
      validator: (value) {
        if (value.length == 0) {
          return "Password is required";
        }
        else if(value != "Password")
          {
            return "Wrong Password";
          }
      },
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(27.0, 22.0, 27.0, 22.0),
        // This is were you will put the function of your button
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();

            Navigator.pushNamed(context, '/homepage');
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
            key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // If you want to add icon uncomment this
                  /*SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),*/
                  SizedBox(height: 30.0),
                  emailField,
                  SizedBox(height: 20.0),
                  passwordField,
                  SizedBox(
                    height: 30.0,
                  ),
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}