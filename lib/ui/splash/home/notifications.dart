import 'package:customer_beta/ui/splash/home/caredetail.dart';
import 'package:customer_beta/ui/splash/profile/creditcardsetup.dart';
import 'package:customer_beta/ui/splash/summaries/visitsummaries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  TextEditingController visitSummariesController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "Notification",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child:Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/images/avatar2.png", width: 45, height: 45,),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width/1.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: "Siew Ling ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    TextSpan(text: "accepted",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    TextSpan(text: " your request for Full-Time Caregiver Session",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15))
                                  ]
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                //TODO Validation
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (_){
                                      return CreditCardSetup();
                                    }
                                ));

                              },
                              child:  Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: MediaQuery.of(context).size.width/3,
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  decoration: BoxDecoration(

                                    color: Color.fromRGBO(19, 153, 159, 1.0),
                                    border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "Pay Now",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        )
                      ),
                      Text("1m", style: TextStyle(color: Colors.black45),),
                      Spacer(),
                      Container(width: 6, height: 20, color: Colors.red,)
                    ],
                  ),

                ],
              )
            ),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child:Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("assets/images/avatar2.png", width: 45, height: 45,),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width/1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: "Siew Ling ",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15)),
                                        TextSpan(text: "accepted",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15)),
                                        TextSpan(text: " your request for Full-Time Caregiver Session",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15))
                                      ]
                                  ),
                                ),
                                Wrap(

                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){
                                        //TODO Validation
                                        showRatingsDialogue();
                                      },
                                      child:  Container(
                                          margin: EdgeInsets.only(top: 10),
                                          width: MediaQuery.of(context).size.width/3,
                                          padding: EdgeInsets.only(top: 5, bottom: 5),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(19, 153, 159, 1.0),
                                            border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                                            borderRadius: BorderRadius.all(Radius.circular(40)),
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
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Validate",
                                                  style: TextStyle(
                                                      fontSize: 17.0,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        //TODO Validation
                                        Navigator.push(context, MaterialPageRoute(
                                          builder: (_){
                                            return VisitSummaries();
                                          }
                                        ));
                                      },
                                      child:  Container(
                                          margin: EdgeInsets.only(top: 10),
                                          width: MediaQuery.of(context).size.width/2,
                                          padding: EdgeInsets.only(top: 5, bottom: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
                                            borderRadius: BorderRadius.all(Radius.circular(40)),
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
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Center(
                                                child: Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10),
                                                  child: Text(
                                                    "Progress Report",
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        color: Color.fromRGBO(19, 153, 159, 1.0),
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                )
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                        Text("1m", style: TextStyle(color: Colors.black45),),
                        Spacer(),
                        Container(width: 6, height: 20, color: Colors.red,)
                      ],
                    ),

                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  showRatingsDialogue(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
        content: Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Container(
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 15.0, 10.0),
                    child: Image.asset(
                      "assets/images/avatar3.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                      child: Text(
                        "Siew Ling",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ),
                    Spacer(),

                    Container(
                      width: 100,
                      child: RatingBar(
                        initialRating: 4,
                        minRating: 1,
                        itemSize: 12,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    )


                  ],
                ),
                Divider(),
                Text(
                  "How's the service?",
                  style: TextStyle(
                      color: Colors.black54
                  ),
                ),
                RatingBar(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(.0,40.0,.0,.0),
                  child: Text(
                    "Do you have any suggestion?",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 10.0),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: TextFormField(
                      controller: visitSummariesController,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      keyboardType: TextInputType.multiline,
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText:
                        "Write something...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

              ],
            )
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, 'cancel');
            },
          ),
          FlatButton(
            child: const Text('Confirm'),
            onPressed: () {
              Navigator.pop(context, 'Confirm');
            },
          ),
        ],
      ),
    );
  }
}
