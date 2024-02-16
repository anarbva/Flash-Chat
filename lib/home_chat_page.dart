import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeChatPage extends StatefulWidget {
  const HomeChatPage({super.key});

  @override
  State<HomeChatPage> createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  final firestore = FirebaseFirestore.instance;
  
  Future getUsers()async{
     final response = await firestore.collection("users").get();
     final data = response.docs;
      for(final element in data){
        log('element: $element');
      }


      await firestore.collection("users").get().then((event) {
        for(var doc in event.docs){
          log('${doc.id}=>${doc.data()}');
        }

      });
} 
//  @override
//  void initState()async{
//    await getUsers();
//    super.initState();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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