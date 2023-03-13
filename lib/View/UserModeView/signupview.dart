import 'package:app_/Services/Constants/constantsColors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Services/Constants/fontsConstant.dart';
import 'loginView.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  bool _isObscured = true;

  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserLoginView(),
            ));
        final User? user = (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _email, password: _password)) as User?;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registered Successfully. Please Login..",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
        user;
        user!.sendEmailVerification();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserLoginView(),
            ));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "SignUp Page",
          style: TextStyle(
              letterSpacing: 1,
              wordSpacing: 1,
              fontSize: FontsConstants.heading_font_size,
              fontFamily: FontsConstants.heading_font_family,
              color: App_Colors.app_white_color,
              fontWeight: FontsConstants.font_weight),
        ),
        centerTitle: true,
        backgroundColor: App_Colors.app_green_color,
        leading: InkWell(

          onTap: (() {
            Navigator.pop(context);
          }),
          child: Icon(Icons.arrow_back_ios_new_outlined,color: App_Colors.app_white_color,),
        ),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // textFeildName('Username/ Email'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
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
                                Icon(Icons.email_outlined, color: Colors.black),
                            hintText: 'Email'),
                        validator: validateEmail,
                        onSaved: (input) => _email = input!,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      // textFeildName('Password'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      TextFormField(
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
                          prefixIcon: Icon(Icons.lock_open_outlined,
                              color: Colors.black),
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: _toggleObscure,
                            child: Icon(
                                _isObscured
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black),
                          ),
                        ),
                        obscureText: _isObscured,
                        validator: validatePassword,
                        onSaved: (input) => _password = input!,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _register();
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: App_Colors.app_green_color),
                              child: Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),

                   

                    
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