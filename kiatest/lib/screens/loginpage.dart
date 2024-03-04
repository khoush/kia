

import 'package:flutter/material.dart';
import 'package:kiatest/components/buton.dart';
import 'package:kiatest/screens/navbar.dart';
import 'package:kiatest/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/nn.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row( // Use Row instead of Column
        mainAxisAlignment: MainAxisAlignment.center,
       
      ),
                SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Center(
                    child: Center(
                      child: Text(
                        "Connectez-vous à votre compte ! ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: 'Email',
                  isPassword: false,
                  prefixIcon: Icons.email,
                  focusNode: emailFocusNode,
                  controller: emailController,
                ),
                CustomTextField(
                  label: 'Mot de passe',
                  isPassword: true,
                  prefixIcon: Icons.lock,
                  focusNode: passwordFocusNode,
                  controller: passwordController,
                ),
                
                SizedBox(height: 50),
                MyButton(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatPage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Vous n'avez pas de compte? Inscrivez-vous",
                      style: TextStyle(
                        color: Color(0xFF002E7F),
                        fontSize: 9,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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

class CustomTextField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final TextEditingController controller;

  const CustomTextField({
    required this.label,
    this.isPassword = false,
    this.prefixIcon,
    required this.focusNode,
    required this.controller,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: TextField(
        obscureText: widget.isPassword,
        style: TextStyle(color: Colors.black),
        focusNode: widget.focusNode,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            color: widget.focusNode?.hasFocus == true
                ? Colors.transparent
                : Colors.grey,
            fontSize: 12,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: Colors.black)
              : null,
        ),
      ),
    );
  }
}

