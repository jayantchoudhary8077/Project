//import 'dart:js';

import 'package:flutter/material.dart';
import'package:url_launcher/url_launcher.dart';

final Uri _url= Uri.parse('https://vicks.com/en-us/symptom/cough');

final Uri _url1= Uri.parse('https://www.healthifyme.com/blog/acidity/#:~:text=Acidity%2C%20also%20called%20acid%20reflux,in%20the%20chest%20or%20pain.');

final Uri _url2= Uri.parse('https://www.mayoclinic.org/diseases-conditions/common-cold/symptoms-causes/syc-20351605');

final Uri _url3= Uri.parse('https://www.cdc.gov/parasites/malaria/index.html');

final Uri _url4= Uri.parse('https://www.medicalnewstoday.com/articles/156859');

final Uri _url5= Uri.parse('https://www.webmd.com/digestive-disorders/digestive-diseases-nausea-vomiting');



class diseasesandsymtoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Diseases And Symptoms '),
        ),
        bottomNavigationBar: IconButton(
          icon: Icon(
              Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child:Column(
                        children: [
                          Expanded(
                            child: Expanded(
                              child: Image(
                                image: AssetImage('images/diseasemain.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              height: 50,
              width: 250,
              child: Center(
                child: Text(
                  'Common Diseases',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                      child:Column(
                        children: [
                          Expanded(
                            child: Expanded(
                              child: InkWell(
                                onTap: (){
                                  _cough();
                                },
                                child: Image(
                                  image: AssetImage('images/cough.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Text('Cough'),
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
                                _acidity();
                              },
                              child: Image(
                                image: AssetImage('images/acidity.webp'),
                              ),
                            ),
                          ),

                          Text('Acidity'),
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
                                _cold();
                              },
                              child: Image(
                                image: AssetImage('images/cold.jpg'),
                              ),
                            ),
                          ),

                          Text('Cold'),
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
                      child:Column(
                        children: [
                          Expanded(
                            child: Expanded(
                              child: InkWell(
                                onTap: (){
                                  _maleria();
                                },
                                child: Image(
                                  image: AssetImage('images/maleria.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Text('Maleria'),
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
                                _typhoid();
                              },
                              child: Image(
                                image: AssetImage('images/typhoid.jpg'),
                              ),
                            ),
                          ),

                          Text('Typhoid'),
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
                                _vomiting();
                              },
                              child: Image(
                                image: AssetImage('images/vomiting.jpg'),
                              ),
                            ),
                          ),

                          Text('Vomiting'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _cough() async
{
  if( ! await launchUrl(_url)) throw 'could not load0 $_url';
}
void _acidity() async
{
  if( ! await launchUrl(_url1)) throw 'could not load0 $_url1';
}

void _cold() async
{
  if( ! await launchUrl(_url2)) throw 'could not load0 $_url2';
}

void _maleria() async
{
  if( ! await launchUrl(_url3)) throw 'could not load0 $_url3';
}
void _typhoid() async
{
  if( ! await launchUrl(_url4)) throw 'could not load0 $_url4';
}
void _vomiting() async
{
  if( ! await launchUrl(_url5)) throw 'could not load0 $_url5';
}

