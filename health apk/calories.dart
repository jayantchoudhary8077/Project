import 'package:flutter/material.dart';
import 'package:health_app/balancedietimage.dart';
import 'package:health_app/calorieimage.dart';
import 'package:health_app/dailyreqimage.dart';
import 'package:health_app/waterreqimage.dart';
import'package:url_launcher/url_launcher.dart';

final Uri _url= Uri.parse('https://nriol.com/health/calorie-counter.asp');
final Uri _url1= Uri.parse('https://www.healthline.com/health/balanced-diet');
final Uri _url2= Uri.parse('https://healthlibrary.askapollo.com/how-much-calories-do-i-need-per-day/');
final Uri _url3= Uri.parse('https://www.hsph.harvard.edu/nutritionsource/water/');

class calories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nutrition Requirement',
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
      body: Column(
        children: [
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
                          child: Image(
                            image: AssetImage('images/calories.jpg'),
                            height: 145,
                            width: 145,
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return calorieimage();
                            },),);
                          },
                          child: Text(
                            'Click Here To Check',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            _calorie();
                          },
                          child: Text(
                            'Click Here For more info',
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                          child: Image(
                            image: AssetImage('images/balance.png'),
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return balancedietimage();
                            },),);
                          },
                          child: Text(
                            'Click Here To Check',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            _balance();
                          },
                          child: Text(
                            'Click Here For more info',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Balanced Diet'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
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
                              child: Image(
                                image: AssetImage('images/daireq.webp'),
                                height: 130,
                                width: 130,
                              ),
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                                  return dailyreqimage();
                                },),);
                              },
                              child: Text(
                                'Click Here To Check',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            ElevatedButton(
                              onPressed: (){
                                _daireq();
                              },
                              child: Text(
                                'Click Here For more info',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Daily Requirement'),
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
                              child: Image(
                                image: AssetImage('images/waterreq.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                                  return waterreqimage();
                                },),);
                              },
                              child: Text(
                                'Click Here To Check',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            ElevatedButton(
                              onPressed: (){
                                _waterreq();
                              },
                              child: Text(
                                'Click Here For more info',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Daily Water Requirement'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


void _calorie() async
{
  if( ! await launchUrl(_url)) throw 'could not load0 $_url';
}

void _balance() async
{
  if( ! await launchUrl(_url1)) throw 'could not load0 $_url1';
}

void _daireq() async
{
  if( ! await launchUrl(_url2)) throw 'could not load0 $_url2';
}


void _waterreq() async
{
  if( ! await launchUrl(_url3)) throw 'could not load0 $_url3';
}
