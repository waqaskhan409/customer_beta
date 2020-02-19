import 'package:customer_beta/ui/splash/booking/sendbookingrequest.dart';
import 'package:customer_beta/ui/splash/home/caregiverprofile.dart';
import 'package:flutter/material.dart';

class BookingRequest extends StatefulWidget {
  @override
  _BookingRequestState createState() => _BookingRequestState();
}

class _BookingRequestState extends State<BookingRequest> {


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent, accentColor: Color.fromRGBO(19, 153, 159, 1.0));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Color.fromRGBO(19, 153, 159, 1.0),),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
        ],
        title: Row(
          children: <Widget>[
            Text(
              "Book Now",
              style: TextStyle(
                  color:Color.fromRGBO(19, 153, 159, 1.0)
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            GestureDetector(
              onTap: (){
//              Navigator.push(context, MaterialPageRoute(
//                  builder: (_){
//                    return CareDetail();
//                  }
//              ));
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Booking for",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.black,
                              size: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                              child: Text("Elderly Home Care"),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, .0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.black,
                              size: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                              child: Text("Wound Care - Wound Dressing"),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(20.0, 10.0, .0, 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.black,
                              size: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              margin: EdgeInsets.fromLTRB(10.0, .0, .0, .0),
                              child: Text(
                                  "Stoma Care - Wound Dressing, changing of stoma"),
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                      child: Divider(),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
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
                                  child: Text("REQUESTED",
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
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                      child: Divider(),
                    ),
                    Center(
                      child:  Container(
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                        child: Text(
                            "If the still not respond to your request."
                        ),
                      ),
                    ),
                    Center(
                      child:  Container(
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
                        child: Text(
                            "you can request new"
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        //TODO Validation
//
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return SendBookingRequest();
                      }));
                      },
                      child:  Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(top: 6 , bottom: 6),
                          margin: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width-100,
                                  child: Text(

                                    "Request for another caregiver for this services",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),

                                ),
                              ),

                            ],
                          )),
                    ),
                    ListTileTheme(
                        contentPadding: EdgeInsets.all(0),
                        iconColor: Color.fromRGBO(19, 153, 159, 1.0),
                        child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              title: Center(
                                child: Text("See Caregivers",
                                    style: TextStyle(

                                        color: Color.fromRGBO(19, 153, 159, 1.0),
                                        fontSize: 12

                                    )),
                              ),
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                          "Caregivers"
                                      ),
                                    )
                                  ],
                                ),
                                ListView.builder(itemBuilder: (_, i){
                                  return GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_){
                                        return CargiverProfile();
                                      }));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.only(left: 10, right: 10),
                                          child: Row(
                                            children: <Widget>[
                                              Image.asset("assets/images/avatar1.png", width: 40, height: 40,),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text("Siti" + i.toString()),
                                              ),
                                              Spacer(),
                                              Text("Waiting", style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12
                                              ),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20, right: 20),
                                          child:  Divider( color: Colors.black54,),
                                        )
                                      ],
                                    ),
                                  );
                                }, itemCount: 10,
                                shrinkWrap: true,
                                ),
                              ],
                            ) /*or any other widget you want to apply the theme to.*/
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
