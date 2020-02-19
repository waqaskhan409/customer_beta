import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewPersonDetail extends StatefulWidget {
  @override
  _ViewPersonDetailState createState() => _ViewPersonDetailState();
}

class _ViewPersonDetailState extends State<ViewPersonDetail> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Details'),
    Tab(text: 'Medical History'),
  ];

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Person to be cared Profile",
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

  setUpComingWidgets() {

    return  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, .0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/img-upload.png",
                        width: 120,
                        height: 120,
                      )
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, 0.0),
                      child: Text("Upload face picture",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                              fontSize: 14))),
                ),
                GestureDetector(
                  onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              width: MediaQuery.of(context).size.width / 1.8,
                            child: Center(
                              child: Text(
                                "Full Name *",
                              ),
                            )
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Spacer(
                            flex: 10,
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Spacer(),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Spacer(
                            flex: 10,
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text(
                              "Race",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Spacer(),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(

                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              width: MediaQuery.of(context).size.width / 1.8,
                            child: Center(
                              child: Text("Date of Birth",
                              ),
                            )
                          ),
                        ],
                      )),
                ), GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius:
                        BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Spacer(
                            flex: 10,
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text(
                              "Relation",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Spacer(),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Center(
                              child: Text(
                                "Height(CM) - optional",
                              ),
                            )
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
//                    showStates();

//              showTimeInPickerDialogue();
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Center(
                              child: Text(
                                "Weight(KG) - optional",
                              ),
                            )
                          ),
                        ],
                      )),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 20.0, .0, .0),
                  child: Text(
                    "Recipent's IC/Passport ",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color.fromRGBO(19, 153, 159, 1.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(.0, 20.0, .0, .0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child:  Center(
                          child: Image.asset(
                            "assets/images/ic.png",
                            width: 200,
                            height: 200,
                          ),
                        )
                          ,
                      ),
                      Divider(),
                      Container(
                        margin: EdgeInsets.fromLTRB(30.0, 20.0, .0, .0),
                        child: Text(
                          "Recipent's Address ",
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Color.fromRGBO(19, 153, 159, 1.0)),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 0.0),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Text(
                             "Recipent's address...",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, .0),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: GoogleMap(
                          onMapCreated: _onMapCreated,
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          //TODO Validation

                          Navigator.pop(context);
                        },
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              border: Border.all(color: Colors.black12),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Center(
                                  child: FlatButton(
                                    color: Colors.pink,
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  setHistoryWidgets() {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
            child: Text(
              "Medical History ",
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700),
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
                style: TextStyle(
                  fontSize: 14,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Write about recipent's medical history...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Medical History ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: 0,
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                  child: Row(
                    children: <Widget>[
                      Text((index + 1).toString() + ". "),
                      Container(
                        child: Text(
                          "Medication" + index.toString(),
                          overflow: TextOverflow.ellipsis,
                        ),
                        width: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
//                            medicationList.removeAt(index);
                          });
                        },
                        child: Text(
                          "Remove",
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 0
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, .0, .0),
            child: Text(
              "Special Request ",
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700),
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
              child: Text(
                  "State your special request/needs eg: precuation, special care for recipents.",
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              //TODO Validation

              Navigator.pop(context);
            },
            child:  Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  border: Border.all(color: Colors.black12),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Center(
                      child: FlatButton(
                        color: Colors.pink,
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                )),
          ),

        ],
      ),
    );
  }



}
