import 'package:customer_beta/constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CargiverProfile extends StatefulWidget {
  @override
  _CargiverProfileState createState() => _CargiverProfileState();
}

class _CargiverProfileState extends State<CargiverProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 153, 159, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
        ],
        title: Row(
          children: <Widget>[
            Text(
              "Caregiver Detail",
              style: TextStyle(
                  color:Colors.white
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/images/avatar1.png", width: 100, height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child:                         Text("Siti" ),

                        ),
                        Container(
                          padding: EdgeInsets.all(3) ,
                          child: RatingBar(
                            itemCount: 5,
                            initialRating: 4,
                            itemSize: 12,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        )
                      ],
                  ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Text("Race", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("Malay", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 20),
                      child: Text("D.O.B", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("01/01/1992", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 20),
                      child: Text("language Spoken", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("Malay & English", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  width: 1,
                  color: Colors.black12,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text("Gender", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("Female", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 20),
                      child: Text("Location", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("Batu Kawan Penang", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 20),
                      child: Text("Highest Education", style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      child: Text("Bachelor in Nursing", style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                  ],
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text("Certificate", style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.w700
              ),),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/cert1.png", width: 160, height: 160,),
                  Image.asset("assets/images/cert2.png", width: 160, height: 160,),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text("Self Summary", style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.w700
              ),),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(Constants.LOREM_IPSUM, style: TextStyle(
                  color:Colors.black54,
                  fontWeight: FontWeight.w400
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
