

import 'package:flutter/material.dart';
import 'package:kiatest/components/buton.dart';
import 'package:kiatest/screens/loginpage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nomController = TextEditingController();
  TextEditingController _nomutilController = TextEditingController();

 

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
      SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Center(
                    child: Text(
                      "S'inscrire comme un client ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: _nomController,
                  label: 'Nom et prenom',
                  isPassword: false,
                  prefixIcon: Icons.person,
                ),
                CustomTextField(
                  controller: _emailController,
                  label: 'Email',
                  isPassword: false,
                  prefixIcon: Icons.email,
                ),
                CustomTextField(
                  controller: _nomutilController,
                  label: "Nom d'utilisateur",
                  isPassword: false,
                  prefixIcon: Icons.person,
                ),
                CustomTextField(
                  controller: _passwordController,
                  label: 'Mot de passe',
                  isPassword: true,
                  prefixIcon: Icons.lock,
                ),
                SizedBox(height: 50),
                MyyButton(
                  onTap: () {
                  
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Vous avez un compte? Connectez-vous",
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
  final TextEditingController controller;

  const CustomTextField({
    required this.label,
    this.isPassword = false,
    this.prefixIcon,
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
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            color: Colors.grey,
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
