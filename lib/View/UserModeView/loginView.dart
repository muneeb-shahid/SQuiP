import 'package:app_/View/UserModeView/signupview.dart';
import 'package:app_/View/UserModeView/userView.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/constantsColors.dart';
import '../../Services/Constants/fontsConstant.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true;

  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      try {
        final user = await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);

        if (user != null) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => UserMode(),
              )).then((value) {
            setState(() {
              loading = false;
            });
          }).onError((error, stackTrace) {
            setState(() {
              loading = false;
            });
          });
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          setState(() {
            loading = false;
          });
          print("No User Found for that Email");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "No User Found for that Email",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        } else if (e.code == 'wrong-password') {
          setState(() {
            loading = false;
          });
          print("Wrong Password Provided by User");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Wrong Password Provided by User",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        }
      }
    }
  }

  final _auth = FirebaseAuth.instance;
  late String _email;
  late String _password;
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_Constants().appBar_Func("Login Page"),
    
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
             
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: validateEmail,
                        onChanged: (value) {
                          _email = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black,)),
                          prefixIcon:
                              Icon(Icons.email_outlined, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      TextFormField(
                        validator: validatePassword,
                        onChanged: (value) {
                          _password = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          prefixIcon:
                              Icon(Icons.lock_open_outlined, color: Colors.black),
                          suffixIcon: GestureDetector(
                            onTap: _toggleObscure,
                            child: Icon(
                                _isObscured
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black),
                          ),
                          hintText: 'Password',
                        ),
                        obscureText: _isObscured,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Center(
                                  child: Text(
                                'Forget password',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                onPressed();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: App_Colors.app_green_color,
                                ),
                                child: Center(
                                    child: loading
                                        ? CircularProgressIndicator(
                                            color: Colors.white)
                                        : Text(
                                            'Login',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          )),
                              ),
                            ),
                          ),
                        ],
                      ),
      
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: App_Colors.app_black_color,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                color: App_Colors.app_green_color,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return 'E-mail address is required.';

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty)
    return 'Password is required.';

  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword))
    return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';

  return null;
}
