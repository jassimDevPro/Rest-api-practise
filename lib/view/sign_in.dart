import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
var data 
  Future signUP() async {
    final response = await http.post(
        Uri.parse('https://myfypsite.000webhostapp.com/SignUpAction'),
        body: jsonEncode(<String, dynamic>{
          'email': emailController,
          'password': passwordController,
          'firstName': firstNameController,
          'lastName': lastNameController,
          'phoneNumber': phoneNumberController,
          'confirmPassword': confirmPasswordController
        }));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());

      return;
    } else {
      print('error');
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Sign Up'),
          ),
          textFormField('Email', emailController),
          textFormField('Password', passwordController),
          textFormField('First Name', firstNameController),
          textFormField('Last Name', lastNameController),
          textFormField('Phone number', phoneNumberController),
          textFormField('Confirm Password', confirmPasswordController),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                print(data);
              },
              child: Text('Sign UP'),
            ),
          )
        ],
      ),
    );
  }

  Container textFormField(hinttext, controller) {
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
        ),
      ),
    );
  }
}
