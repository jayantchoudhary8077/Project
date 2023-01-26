import 'package:flutter/material.dart';

class dailyreqimage extends StatelessWidget {

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
          image: AssetImage('images/daichart.jpg'),
          width: 450,
          height: 1200,
        ),
      ),
    );
  }
}
