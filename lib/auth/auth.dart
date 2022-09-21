import 'package:fireauth/login/login.dart';

import 'package:flutter/material.dart';

import '../signup/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage();

    }else{
      return SignUpPage();
    }
  }
}