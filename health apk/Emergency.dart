import 'package:flutter/material.dart';
import'package:url_launcher/url_launcher.dart';


class Emergency extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Emergency Helpline Number( CLICK TO CALL )'),
          backgroundColor: Colors.blueAccent,
        ),
        bottomNavigationBar: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
          ),
        body: Column(
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
                            child: Expanded(
                              child: InkWell(
                                onTap: (){
                                  _ambulance();
                                  },
                                child: Image(
                                  image: AssetImage('images/ambul.webp'),
                                ),
                              ),
                            ),
                          ),
                          Text('Ambulance'),
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
                                _MentalHelpline();
                              },
                              child: Image(
                                image: AssetImage('images/mental.jpg'),
                              ),
                            ),
                          ),

                          Text('Mental Health'),
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
                            child: InkWell(
                              onTap: (){
                                _sucideHelpline();
                              },
                              child: Image(
                                image: AssetImage('images/sucide.webp'),
                              ),
                            ),
                          ),
                          Text('Sucide Helpline'),
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
                                _womenHelpline();
                              },
                              child: Image(
                                image: AssetImage('images/women.jpg'),
                              ),
                            ),
                          ),
                          Text('Women Helpline'),
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
                            child: InkWell(
                              onTap: (){
                                _covid19();
                              },
                              child: Image(
                                image: AssetImage('images/covid.png'),
                              ),
                            ),
                          ),
                          Text('Covid-19'),
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
                              onTap: ()
                              {
                               _police();
                              },
                              child: Image(
                                image: AssetImage('images/police.webp'),
                              ),
                            ),
                          ),
                          Text('Police'),
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
_ambulance() async {
  var url = Uri.parse("tel:108");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_MentalHelpline() async {
  var url = Uri.parse("tel:111");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sucideHelpline() async {
  var url = Uri.parse("tel:91529878211");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_womenHelpline() async {
  var url = Uri.parse("tel:1094");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_covid19() async {
  var url = Uri.parse("tel:104");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_police() async {
  var url = Uri.parse("tel:100");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}