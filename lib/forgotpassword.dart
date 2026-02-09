import 'package:flutter/material.dart';
import 'package:registration_app_flutter/login.dart';
import 'package:registration_app_flutter/service.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  TextEditingController emailc=TextEditingController();
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
                TextField(controller: emailc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                  forgotpassword(emailc.text, context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector
              (
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                child: Text("Back to Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),))
            ],
          ),
        ),
      ),
    );
  }
}