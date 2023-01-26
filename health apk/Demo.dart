import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  var _result="";
  var bgcolor=Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      bottomNavigationBar: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Container(

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height in cm',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: calculateBMI,
              ),
              SizedBox(height: 15),
              Text(
                _result == null ? "Enter Value" : "$_result",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 19.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 2.0),
                width: double.infinity,
                height: 300.0,
                child: Image.asset('images/bmi.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    var result = weight / heightSquare;

    var msg = "";


    if(result>25){
      msg="You're OverWeight!! ";
      bgcolor=Colors.redAccent;
    } else if(result<18) {
      msg=" You're UnderWeight!! ";
      bgcolor=Colors.pinkAccent;
    } else {
      msg="You're Healthy !!";
      bgcolor=Colors.green;
    }

    setState(() {
      _result = " $msg \n Your BMI is:  ${result.toStringAsFixed(4)}";
    });
  }
}