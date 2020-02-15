import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VisitSummaries extends StatefulWidget {
  @override
  _VisitSummariesState createState() => _VisitSummariesState();
}

class _VisitSummariesState extends State<VisitSummaries> {
  TextEditingController visitSummariesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                "Visit Summary",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),

    body: Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Progress Report",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          ),
                        ),
                        Spacer(),
                        Image.asset("assets/images/download_report.png", width: 150, height: 40,)
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                        child: Text("Caregiver Time in and Time out", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
//                          _scaffoldKey.currentState
//                              .showSnackBar(SnackBar(content: Text("Timer has been set")));
                              },
                              child: Stack(

                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/time_in2.png",
                                    width: MediaQuery.of(context).size.width / 2.5,
                                  ),
                                  Positioned(
                                    bottom: 2,
                                    child: Text(
                                      "09:00 AM",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
//                          _scaffoldKey.currentState
//                              .showSnackBar(SnackBar(content: Text("Timer has been removed")));
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/time_out2.png",
                                    width: MediaQuery.of(context).size.width / 2.5,
                                  ),
                                  Positioned(
                                    bottom: 2,
                                    child: Text(
                                      "09:00 AM",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("General Condition", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Well", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Feeding", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Normal intake", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Food Ordered", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Grab Food (RM25)", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Bathing", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Done", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Oral Care", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Done", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Toileting", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Urinate - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Defecate - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Change Pamper", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Not Done", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Grooming", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Comb hair,Shaving", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Change of Shirt", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Done", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Physio", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Limbs movements - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Walking - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Wheel chair mobilizing", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("No", style: TextStyle(
                            color: Colors.black54
                        ),
                        ),)

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Companionship", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Convering well - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),
                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Responsive - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),
                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Emotion - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Wound Care", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Condition - Dry", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Skin - Not Red inflamed", style: TextStyle(
                            color: Colors.black54
                        ),),
                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Progress - improving", style: TextStyle(
                            color: Colors.black54
                        ),),
                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Pus discharge - Yes", style: TextStyle(
                            color: Colors.black54
                        ),),
                      ),

                    ],
                  ),

                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                            child: Text("Stoma Care / Tracheostomy Care", style: TextStyle(
                                color: Color.fromRGBO(19, 153, 159, 1.0)
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                            child: Text("Condition - Clean", style: TextStyle(
                                color: Colors.black54
                            ),),

                          ),Container(
                            margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                            child: Text("Change - Done", style: TextStyle(
                                color: Colors.black54
                            ),),

                          ),
                        ])),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, .0, .0, .0),
                        child: Text("Urine Catheter care", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0)
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Urine - Clear", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Blood - No", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),Container(
                        margin: EdgeInsets.fromLTRB(.0, 0.0, .0, .0),
                        child: Text("Change of catheter - Done", style: TextStyle(
                            color: Colors.black54
                        ),),

                      ),

                    ],
                  ),

                )
              ],
            ),
          ),
        ),
        Container(
            color: Color.fromRGBO(243, 243, 243, 1.0),
            padding: EdgeInsets.fromLTRB(.0, 10.0, .0, .0),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width/1.6,
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),

                    child:Text("Please check all the information in this progress report before you validate",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                    ),)),


                Spacer(),
                Container(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 20.0),
                  decoration: BoxDecoration(
                    color:  Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color:  Color.fromRGBO(19, 153, 159, 1.0)),
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
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: FlatButton(
                            onPressed: (){
//                              saveValue();
                              showRatingsDialogue();
                            },
                            child: Text(
                              "Validate",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            )),
      ],
    )


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
