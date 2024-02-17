
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final auth = FirebaseAuth.instance;

  Future registerUser()async{
    auth.createUserWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
      );
      // log("result:$result");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.indigo.shade100,
     appBar: AppBar(title: const Text('Register')), 
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
         
        ),
        child: Column(
          children: [
            Image.asset("assets/img/flash.png",
            height: 180,
            ),
           const SizedBox(height: 30),
            TextField(
            controller: emailController,
              decoration:const InputDecoration(
               labelText: 'email',
               hintText: 'hint text',
               helperText: 'supporting text',
               border: OutlineInputBorder(),
                ),
            ),
           const SizedBox(height: 10),
              TextField(
                controller: passwordController,
              decoration:const InputDecoration(
               labelText: 'password',
               hintText: 'hint text',
               helperText: 'supporting text',
               border: OutlineInputBorder(),
                ),
            ),
       
            ElevatedButton(
              onPressed: ()async{
                await registerUser();
              }, 
              child:const Text("Register")
              ),
          ]
          ),
      ),
    );
  }
}