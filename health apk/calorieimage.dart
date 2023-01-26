import 'package:flutter/material.dart';

class calorieimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track your Calorie',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      bottomNavigationBar: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/calsheet.webp'),
          width: 400,
          height: 1000,
        ),
      ),
    );
  }
}
