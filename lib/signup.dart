import 'package:flutter/material.dart';
import 'package:registration_app_flutter/login.dart';
import 'package:registration_app_flutter/service.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namec=TextEditingController();
  TextEditingController emailc=TextEditingController();
  TextEditingController passwordc=TextEditingController();
  TextEditingController ConfirmPasswordc=TextEditingController();
  bool visible = true;
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),
              ),
            Text("Create an account,it's free"),
            SizedBox(height: 20,),
            Align(alignment: Alignment.topLeft, child: Text("Username")),
              TextField(controller: namec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextField(controller: emailc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft, child: Text("Password")),
              TextField(controller: passwordc,
              obscureText: visible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      visible =!visible;
                    });
                  }, icon: visible? Icon(Icons.visibility_off) : Icon(Icons.visibility)) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft, child: Text("Confirm Password")),
              TextField(controller: ConfirmPasswordc,
              obscureText:! isvisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      isvisible =!isvisible;
                    });
                  }, icon: isvisible? Icon(Icons.visibility) : Icon(Icons.visibility_off)) ,
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
                   register(namec.text, emailc.text, passwordc.text, ConfirmPasswordc.text, context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    },
                  child: 
                  Text("Login",style: TextStyle(fontWeight: FontWeight.bold),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}