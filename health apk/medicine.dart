//import 'dart:js';

import 'package:flutter/material.dart';
import'package:url_launcher/url_launcher.dart';

final Uri _url= Uri.parse('https://www.netmeds.com/healthstore?source_attribution=ADW-CPC-Search-PY-NMS-Brand&utm_source=ADW-CPC-Search-PY-NMS-Brand&utm_medium=CPC&utm_campaign=ADW-CPC-Search-PY-NMS-Brand&gclid=CjwKCAiAmuKbBhA2EiwAxQnt78adm2rUVD22Rdx9PRyzMlZLs0jlp_JI69OEqVHl6X8sGTH8o7_lbRoCTPUQAvD_BwE');

final Uri _url1= Uri.parse('https://www.1mg.com/manufacturer/icon-life-sciences-57760');

final Uri _url2= Uri.parse('https://www.practo.com/consult/direct/new_consultation?utm_source=google&utm_medium=cpc&utm_campaign=brand-search-practo-consult&sem=true&gclid=CjwKCAiAmuKbBhA2EiwAxQnt788231lwGi7w4Dt2GI2erzUD98T47jJy5KRfmcV46GGj_P_hLBMXDRoCDxgQAvD_BwE');

final Uri _url3= Uri.parse('https://pharmeasy.in/?isSEM=true&utm_source=google&utm_medium=cpc&utm_campaign=GSB_New_CX_FP&utm_adgroup=Core&gclid=CjwKCAiAmuKbBhA2EiwAxQnt74AveUsnoS0N-cQnmtfXTG0ieyIY02KvuOdCAtJRc_GddBvq44OrHxoC-UkQAvD_BwE');


class medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Tap to order Medicine... '),
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
                       child: Image(
                         image: AssetImage('images/onlinemed.jpg'),
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
              child: Text(
                  '...Click Below to order Medicine...',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
                                  _netmeds();
                                },
                                child: Image(
                                  image: AssetImage('images/netmeds.webp'),
                                ),
                              ),
                            ),
                          ),
                          Text('NetMeds'),
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
                                _tata();
                              },
                              child: Image(
                                image: AssetImage('images/tata.webp'),
                              ),
                            ),
                          ),

                          Text('Tata 1MG'),
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
                                  _practo();
                                },
                                child: Image(
                                  image: AssetImage('images/practo.png'),
                                ),
                              ),
                            ),
                          ),
                          Text('Practo'),
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
                                _pharmeassy();
                              },
                              child: Image(
                                image: AssetImage('images/pharmeassy.webp'),
                              ),
                            ),
                          ),

                          Text('PharmEassy'),
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

void _netmeds() async
{
  if( ! await launchUrl(_url)) throw 'could not load0 $_url';
}
void _tata() async
{
  if( ! await launchUrl(_url1)) throw 'could not load0 $_url1';
}

void _practo() async
{
  if( ! await launchUrl(_url2)) throw 'could not load0 $_url2';
}

void _pharmeassy() async
{
  if( ! await launchUrl(_url3)) throw 'could not load0 $_url3';
}

