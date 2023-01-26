import 'package:flutter/material.dart';

class balancedietimage extends StatelessWidget {

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
          image: AssetImage('images/balancechart.jpg'),
          width: 400,
          height: 1000,
        ),
      ),
    );
  }
}
