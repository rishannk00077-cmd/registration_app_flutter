import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}