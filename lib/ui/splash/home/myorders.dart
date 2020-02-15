import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/chat/individualchat.dart';
import 'package:customer_beta/ui/splash/home/careassesment.dart';
import 'package:customer_beta/ui/splash/home/caredetail.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Upcoming'),
    Tab(text: 'History'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "My Orders",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: DefaultTabController(
        length: myTabs.length,
        child: new Column(
          children: <Widget>[
            new Container(
              constraints: BoxConstraints(maxHeight: 150.0),
              child: new Material(
                color: Colors.white,
                child: new TabBar(
                  labelColor: Color.fromRGBO(19, 153, 159, 1.0),
                  indicatorColor: Color.fromRGBO(19, 153, 159, 1.0),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        width: 5.0, color: Color.fromRGBO(19, 153, 159, 1.0)),
                  ),
                  tabs: [myTabs[0], myTabs[1]],
                ),
              ),
            ),
            new Expanded(
              child: new TabBarView(
                children: [setUpComingWidgets(), setHistoryWidgets()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setUpComingWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_){
                 return CareDetail();
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
                            "Siti",
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
                            "Full-timer",
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
                              width: MediaQuery.of(context).size.width/2,
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
                                    width: MediaQuery.of(context).size.width/2.4,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.indigo),
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Text("SCHEDULED",
                                    style: TextStyle(
                                        color: Colors.indigo,
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
                                child: Text("RM 110.00",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (_){
                                  return IndividualChat();
                                }
                              ));
                                },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(19, 153, 159, 1.0),
                                    border: Border.all(
                                        color: Color.fromRGBO(19, 153, 159, 1.0)),
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.0, .0, 5.0, .0),
                                      child: Icon(Icons.chat, color: Colors.white,),
                                    ),
                                    Text("Chat",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14))
                                  ],
                                ),
                              ),
                            )
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
    );
  }
  Widget setHistoryWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                    return CareAssesment();
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
                            "Siti",
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
                            "Full-timer",
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
                              width: MediaQuery.of(context).size.width/2,
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
                                    width: MediaQuery.of(context).size.width/2.4,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.green),
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Text("COMPLETED",
                                    style: TextStyle(
                                        color: Colors.green,
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
                                child: Text("RM 110.00",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (_){
                                      return IndividualChat();
                                    }
                                ));
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
                                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    border: Border.all(
                                        color: Colors.black26),
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.0, .0, 5.0, .0),
                                      child: Icon(Icons.chat, color: Colors.white,),
                                    ),
                                    Text("Chat",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14))
                                  ],
                                ),
                              ),
                            )
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
    );
  }
}
