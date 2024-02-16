import 'package:animated_text_kit/animated_text_kit.dart';
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
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 200
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/img/flash.png",
                height: 40,
                ),
                DefaultTextStyle(
                  style:  TextStyle(
                    fontSize: 40.0,
                    color: Colors.indigo.shade600,
                    fontWeight:FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Flash Chat'),
                      WavyAnimatedText('Look at the waves'),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
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
              onPressed: (){}, 
              child:const Text("Login")
              ),
              const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("Password")
              ),
          ]
          ),
      ),
    );
  }
}