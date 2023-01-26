import 'package:flutter/material.dart';
import 'package:health_app/DocInfoPage.dart';
import 'package:health_app/Docinfo1.dart';
import 'package:health_app/Docinfo3.dart';
import 'package:health_app/Docinfo4.dart';
import 'package:health_app/Docinfo5.dart';



class dochome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: MyFirstPage(),
    );
  }
}
class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30,
                  ),

                  actions: <Widget>[
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,

                      ),
                      child: Center(
                        child: Text("C", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Select a Doctor or Category", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        margin: EdgeInsets.only(top: 10),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                          Container(
                          width: 130,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/ct.jpg'),
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "CT-Scan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17
                              ),
                              )
                            ],
                          ),
                        ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/dietician.webp'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Dietician",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/ortho.png'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Ortho",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/physician.jpg'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Physician.jpg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/para.png'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Paralysis",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/cardiology.webp'),
                                    height: 100,
                                    width: 100,
                                  ),

                                  Text(
                                    "Cardiology",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/mri.png'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "MRI-Sacn",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 130,

                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/gynae.jpg'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Gynaecology",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Chief Doctors", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),),
                      SizedBox(height: 20,),
                      Container(
                        height: 400,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              InkWell(
                                child: createDocWidget("doc1.png", "Manish malik"),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return DocInfoPage();
                                  },),);
                                },
                              ),
                              InkWell(
                                child: createDocWidget("doc3.jpg", "Shweta Singh"),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return Docinfo1();
                                  },),);
                                },
                              ),
                              InkWell(
                                child: createDocWidget("doc4.jpg", "Deepak Rawat"),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return Docinfo3();
                                  },),);
                                },
                              ),
                              InkWell(
                                child: createDocWidget("doc5.jpg", "Aniket Singh"),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return Docinfo4();
                                  },),);
                                },
                              ),
                              InkWell(
                                child: createDocWidget("doc6.png", "vikas gupta"),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return Docinfo5();
                                  },),);
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Container createDocWidget(String imgName, String docName)
  {
    return Container(
      child: InkWell(
        child: Container(

          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),

          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/doctorimage/$imgName'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dr. $docName", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 5,),
                    Container(
                      width: 250,
                      height: 50,
                      child: Text("A brief about the doctor to be added here. This is more like an introduction about the doctor", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

