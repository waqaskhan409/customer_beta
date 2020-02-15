import 'package:customer_beta/ui/splash/booking/booking.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:customer_beta/ui/splash/summaries/visitsummaries.dart';
import 'package:flutter/material.dart';

class Summaries extends StatefulWidget {
  @override
  _SummariesState createState() => _SummariesState();
}

class _SummariesState extends State<Summaries> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
        ],
        title: Row(
          children: <Widget>[
            Text(
              "Summaries",
              style: TextStyle(
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 30,
              height: 30,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/summaries_active.png",
              width: 30,
              height: 30,
            ),
            title: Text('Summaries'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/booking.png",
              width: 30,
              height: 30,
            ),
            title: Text('Booking'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/chat.png",
              width: 30,
              height: 30,
            ),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/account.png",
              width: 30,
              height: 30,
            ),
            title: Text('Account'),
          )
        ],

        selectedItemColor: Color.fromRGBO(19, 153, 159, 1.0),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Home(),
                ),
                    (e) => false); }
          else if (index == 1) {

          } else if (index == 2) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => BookingOrders(),
                ),
                    (e) => false);
          } else if (index == 3) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Chat(),
                ),
                    (e) => false);
          } else if (index == 4) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
                    (e) => false);
          }
        },
//        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (_){
                  return VisitSummaries();
                }
                ));
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      // has the effect of softening the shadow
                      spreadRadius: 3.0,
                      // has the effect of extending the shadow
                      offset: Offset(
                        2.0, // horizontal, move right 10
                        2.0, // vertical, move down 10
                      ),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Container(
                        margin: EdgeInsets.fromLTRB(25.0, 10.0, 15.0, 10.0),
                        child: Image.asset(
                          "assets/images/avatar3.png",
                          width: 40,
                          height: 40,
                        ),
                      ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                            child: Text(
                              "Siew Ling",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ),
                        ),
                        Spacer(),

                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, .0, 20.0, .0),
                            child: Text(
                              "Part-timer",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(19, 153, 159, 1.0)

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                      child: Divider(),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, .0),
                                child:  Row(
                                  children: <Widget>[
                                    Icon(Icons.date_range, color: Color.fromRGBO(19, 153, 159, 1.0),),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text(
                                        "12-12-2020",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black

                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, .0),
                                child:  Row(
                                  children: <Widget>[
                                    Icon(Icons.access_time, color: Color.fromRGBO(19, 153, 159, 1.0),),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text(
                                        "02.00 pm - 04:00 pm",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54

                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(2.0, 10.0, .0, .0),

                                child:  Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/location_coverage_p.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/2,
                                      margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                                      child: Text(
                                        "No. 1 Jalan Platinum 2/7 seksyan 7, 40000 Shah Alarm, Selanger Darul Ehsan",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54

                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromRGBO(19, 153, 159, 1.0)),
                                      borderRadius: BorderRadius.all(Radius.circular(8))),
                                  child: Text("Complete",
                                      style: TextStyle(
                                          color: Color.fromRGBO(19, 153, 159, 1.0),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                  child: Text("RM 750.00",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
