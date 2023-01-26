import 'package:flutter/material.dart';

class Docinfo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('assets/images/docinfo/bg1.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/images/docprofile/doc1.png'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("      Dr. Deepak Rawat", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),),
                                Text("Orthologist- A.K Hospital", style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("About the Doctor", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),),
                              SizedBox(height: 10,),
                              Text("Please write the description of the doctor here. This will be a detailed information about the doctor and the roles and achievements that the doctor has had over the past years", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(height: 10,),
                              Text("Available Time Slots", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),),
                              SizedBox(height: 5,),
                              timeSlotWidget("20", "JAN", "Consultation", "Sunday 9 am to 11.30 am"),
                              timeSlotWidget("21", "JAN", "Consultation", "Monday 10 am to 12.30 am"),
                              timeSlotWidget("22", "JAN", "Consultation", "Wednesday 8 am to 12.30 pm"),
                              timeSlotWidget("23", "JAN", "Consultation", "Friday 8 am to 1 am"),

                              Center(
                                child: ElevatedButton(
                                  child: Text(
                                    " Book Appointment ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  onPressed: (){
                                    print("hiii");
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container timeSlotWidget(String date, String month, String slotType, String time)
{
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("$date", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800
                ),),
                Text("$month", style: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.w800
                ),)
              ],
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("$slotType", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),),
              Text("$time", style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
              ),)
            ],
          )
        ],
      ),
    ),
  );
}
