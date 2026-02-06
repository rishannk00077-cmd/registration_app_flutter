import 'package:flutter/material.dart';
import 'package:registration_app_flutter/forgotpassword.dart';
import 'package:registration_app_flutter/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              Text("Login to your account"),
              SizedBox(height: 20),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Password")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Align(alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgotpassword(),));
                  },
                  child: Text("Forgot Password?",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                    },
                    child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),))
                ],
                
              ),
              Image.network("https://media.istockphoto.com/id/1490661442/vector/create-new-password-abstract-concept-vector-illustration.jpg?s=612x612&w=0&k=20&c=SUj3stazjz7NI6lX5B7qaoZl6p-z2ynX7RSPwMrBG-U=",height: 270,width: 270,)
            ],
          ),
        ),
      ),
    );
  }
}
