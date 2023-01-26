import 'package:flutter/material.dart';
import 'package:health_app/Demo.dart';
import 'package:health_app/Emergency.dart';
import 'package:health_app/arogya.dart';
import 'package:health_app/calories.dart';
import 'package:health_app/diseasesandsymtoms.dart';
import 'package:health_app/dochome.dart';
import 'package:health_app/doctor.dart';
import 'package:health_app/hospital.dart';
import 'package:health_app/medicine.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
              'Welcome to Health Apk',
                  style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
        ),
        backgroundColor: Colors.redAccent,
        body: MyApp(),
      ),
    ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child:Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return arogya();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/arogya.png'),
                          ),
                        ),
                      ),
                      Text('Arogya Setu'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return dochome();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/doctor.jpg'),
                          ),
                        ),
                      ),
                      Text('Doctor'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return hospital();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/hospital.webp'),
                          ),
                        ),
                      ),
                      Text('Hospital'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return diseasesandsymtoms();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/ds.png'),
                          ),
                        ),
                      ),
                      Text('Diseases and Symptoms'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return Demo();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/bmi.png'),
                          ),
                        ),
                      ),
                      Text('BMI Calculator'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                           Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                             return Emergency();
                           },),);
                          },
                          child: Image(
                            image: AssetImage('images/emer.jpg'),
                          ),
                        ),
                      ),
                      Text('Emergency'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return calories();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/cal.png'),
                          ),
                        ),
                      ),
                      Text('Calories'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return medicine();
                            },),);
                          },
                          child: Image(
                            image: AssetImage('images/med.jpg'),
                          ),
                        ),
                      ),
                      Text('Medicine'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

