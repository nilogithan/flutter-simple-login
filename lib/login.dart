import 'package:flutter/material.dart';
import 'package:simple_login/Home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  var userName = "nilogithan";
  var password = "nilo1234";

  final key = new GlobalKey<ScaffoldState>();

  // ignore: missing_return
  bool authendicate() {
    if (userNameController.text != null && passwordController.text != null) {
      if (userNameController.text == userName && passwordController.text == password) {
        return true;
      } else {
        return false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 32.0,
              ),
              TextFormField(
                controller: userNameController,
                decoration: new InputDecoration(
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)), borderSide: BorderSide(color: Colors.blue)),
                  filled: true,
                  contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                  labelText: "User Name",
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: new InputDecoration(
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)), borderSide: BorderSide(color: Colors.blue)),
                  filled: true,
                  contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              RaisedButton(
                color: Colors.blue[800],
                onPressed: () {
                  if (authendicate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
