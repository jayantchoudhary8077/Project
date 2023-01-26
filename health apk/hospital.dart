import 'package:flutter/material.dart';
import'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';

class hospital extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Hospital Center',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 20,
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
              children: [
                Expanded(
                  child: Container(

                    child:Column(
                      children: [
                        Expanded(
                            child: Image(
                              image: AssetImage('images/hospitalpro.jpg'),
                              width: double.infinity,
                              height: 100,
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
                    height: 200,
                    width: 170,
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/eyehos.jpg'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _eyehos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                  'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                  'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Eye Hospital'),
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
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/cardiohos.jpg'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _cardiohos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap1();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Cardio Hospital'),
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
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/dentalhos.jpg'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _dentalhos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap2();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Dental Hospital'),
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
                    height: 200,
                    width: 170,
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/gynohos.png'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _gynohos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap3();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Gyno Hospital'),
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
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/dermahos.jpg'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _dermahos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap4();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Dermatology Hospital'),
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
                    child:Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('images/psyhos.jpg'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _psychiatryhos();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                _launchmap5();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text(
                                'Directions',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Psychiatry Hospital'),
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

_eyehos() async {
  var url = Uri.parse("tel:07088103502");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap(){
  MapsLauncher.launchCoordinates(30.32958856185037, 78.04708099649851);
}



_cardiohos() async {
  var url = Uri.parse("tel:098370 49966");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap1(){
  MapsLauncher.launchCoordinates(30.317727844056456, 78.0495492827919);
}



_dentalhos() async {
  var url = Uri.parse("tel: 070886 77608");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap2(){
  MapsLauncher.launchCoordinates(30.33647175490991, 77.96228770853078);
}
                                         //for second row



_gynohos() async {
  var url = Uri.parse("tel:075350 01025");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap3(){
  MapsLauncher.launchCoordinates(30.26305421011046, 78.00678834678497);
}



_dermahos() async {
  var url = Uri.parse("tel:06396307454");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap4(){
  MapsLauncher.launchCoordinates(30.32275729581752, 78.04296112384102);
}



_psychiatryhos() async {
  var url = Uri.parse("tel: 095287 06809");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchmap5(){
  MapsLauncher.launchCoordinates(30.31322275383824, 78.00944991323443);
}