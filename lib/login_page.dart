import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor:Colors.indigo.shade100,
     appBar: AppBar(title: const Text('Login')), 
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 50
        ),
        child: Column(
          children: [
            Image.asset("assets/img/flash.png",
            height: 250,
            ),
           const SizedBox(height: 40),
           const TextField(
              decoration: InputDecoration(
               labelText: 'email',
               hintText: 'hint text',
               helperText: 'supporting text',
               border: OutlineInputBorder(),
                ),
            ),
           const SizedBox(height: 10),
            const  TextField(
              decoration: InputDecoration(
               labelText: 'password',
               hintText: 'hint text',
               helperText: 'supporting text',
               border: OutlineInputBorder(),
                ),
            ),
            ElevatedButton(
              onPressed: (){
                
              }, 
              child:const Text("Login")
              ),

          ]
          ),
      ),
    );
  }
}