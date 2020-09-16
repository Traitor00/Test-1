import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.clear,
                    size: 35,
                  ),
                  SizedBox(width: 90),
                  Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome back to community!",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 35),
              buildTextField("Phone or Email"),
              SizedBox(
                height: 25,
              ),
              buildTextField("Password"),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 18),
              ),
              //SizedBox(height: 50),
              Flexible(
                flex: 1,
                child: Container(
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Not a Member Yet?",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "SignUp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 20),
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }
}