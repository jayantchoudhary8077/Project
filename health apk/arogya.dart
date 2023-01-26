import 'package:flutter/material.dart';
import'package:url_launcher/url_launcher.dart';


final Uri _url= Uri.parse('https://www.aarogyasetu.gov.in/');

final Uri _url1= Uri.parse('https://www.worldometers.info/coronavirus/country/india/');

final Uri _url2= Uri.parse('https://www.mygov.in/corona-data/covid19-statewise-status/');

class arogya extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Welcome to the Arogya Setu ',
        ),
        backgroundColor: Colors.pinkAccent,
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
                   width: 500,
                    child:Column(
                      children: [
                        Expanded(
                          child:  Image(
                               image: AssetImage('images/iconas.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 170,
                    child:Column(
                      children: [
                        Expanded(
                          child:  ElevatedButton(
                            onPressed: _launchUrl1,
                            child: Text(
                              'For Covid Updates Click Here',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white
                            ),
                          ),
                        ),
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
                    height: 100,
                    width: 170,
                    child:Column(
                      children: [
                        Expanded(
                          child:  ElevatedButton(
                            onPressed: _launchUrl,
                            child: Text(
                              'Click Here To Visit Arogya Setu',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: Colors.black
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        ),
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
                    height: 100,
                    width: 170,
                    child:Column(
                      children: [
                        Expanded(
                          child:  ElevatedButton(
                            onPressed: _launchUrl2,
                            child: Text(
                              'For StateWise Covid Updates Click Here',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child:Column(
                      children: [
                        Expanded(
                          child:  Image(
                            image: AssetImage('images/as.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _launchUrl() async
{
  if( ! await launchUrl(_url)) throw 'could not load0 $_url';
}
void _launchUrl1() async
{
  if( ! await launchUrl(_url1)) throw 'could not load0 $_url1';
}
void _launchUrl2() async
{
  if( ! await launchUrl(_url2)) throw 'could not load0 $_url2';
}
