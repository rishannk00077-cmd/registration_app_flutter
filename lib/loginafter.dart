import 'package:flutter/material.dart';

class Loginafter extends StatelessWidget {
  const Loginafter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.network(
              "https://thumbs.dreamstime.com/b/d-welcome-concept-human-alike-cartoon-character-gesture-65525682.jpg",
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            ),
            Text(
              "Thankyou for joining with us!",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
