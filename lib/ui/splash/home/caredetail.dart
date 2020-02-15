import 'package:flutter/material.dart';

class CareDetail extends StatefulWidget {
  @override
  _CareDetailState createState() => _CareDetailState();
}

class _CareDetailState extends State<CareDetail> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent, accentColor: Color.fromRGBO(19, 153, 159, 1.0));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 153, 159, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
              child: Text(
                "Care Detail",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(25.0, 10.0, 15.0, 10.0),
                    child: Image.asset(
                      "assets/images/avatar3.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                          child: Text(
                            "Care giver",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ),

                      Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, 20.0, .0),
                          child: Text(
                            "Sitti (Full-timer)",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black45

                            ),
                          ),
                        ),

                    ],
                  ),
                ],
              )
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(25.0, 10.0, 15.0, 10.0),
                      child:                                   Icon(Icons.date_range, color: Color.fromRGBO(19, 153, 159, 1.0),size: 40,),

                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                          child: Text(
                            "Date & Time",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, 20.0, .0),
                          child: Text(
                            "Mon, 25 Nov 2019",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black45

                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, 20.0, .0),
                          child: Text(
                            "04:00 pm - 08:00 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black45

                            ),
                          ),
                        ),
                      ],

                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, .0, .0, 20.0),
                      child: Text(
                        "SCEDULED",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                    ),

                  ],
                )
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(25.0, 10.0, 15.0, 10.0),
                      child:  Image.asset(
                        "assets/images/location_coverage_p.png",
                        width: 40,
                        height: 40,
                      ),

                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width-200,
                          margin: EdgeInsets.fromLTRB(0.0, .0, 20.0, .0),
                          child: Text(
                            "No. 1 Jalan Platinum 2/7 seksyan 7, 40000 Shah Alarm, Selanger Darul Ehsan",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black45

                            ),
                          ),
                        ),
                      ],

                    ),

                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(20),
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
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text(
                          "Charged Fees",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text(
                          "RM 110.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1, color: Color.fromRGBO(19, 153, 159, 1.0),),
                  ListTileTheme(
                      contentPadding: EdgeInsets.all(0),
                      iconColor: Color.fromRGBO(19, 153, 159, 1.0),
                      child: Theme(
                          data: theme,
                          child: ExpansionTile(
                              title: Text("Fee Breakdown",
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 153, 159, 1.0)

                                  )),
                          children: <Widget>[

                            Text(
                              "Service Fees Beakdown"
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.black12,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        child: Text(
                                            "Elderly Home Care"
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                          "RM 80.00"
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        child: Text(
                                            "Wound Care - Wound Dressing"
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                          "RM 15.00"
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        child: Text(
                                            "Stoma Care - Wound Dressing, Change stoma"
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                          "RM 15.00"
                                      ),
                                    ],
                                  )
                                ],
                              ),

                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text(
                                        "Total"
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                      "RM 110.00"
                                  ),
                                ],
                              ),
                            )
                          ],
                          ) /*or any other widget you want to apply the theme to.*/
                      )
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
