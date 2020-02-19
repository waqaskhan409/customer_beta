import 'dart:async';
import 'dart:io';

import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/image/imagepickerhandler.dart';
import 'package:customer_beta/ui/splash/login/tobecared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyCareProfile extends StatefulWidget {
  @override
  _MyCareProfileState createState() => _MyCareProfileState();
}

class _MyCareProfileState extends State<MyCareProfile> with TickerProviderStateMixin, ImagePickerListener {

  File ic;
  int i = 1;

  int check = -1;
  TextEditingController medicationController = TextEditingController();
  TextEditingController specialRequestController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emergencyController = TextEditingController();
  TextEditingController languageSpokenController = TextEditingController();

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  AnimationController _controlleranimation;
  ImagePickerHandler imagePicker;

  String gender = "Gender *";
  String race = "Race";
  String relation = "Relationship";
  String highestEducationLevel = "Highest education Level";
  File profileImage;

  List<String> genderList = List();
  List<String> raceList = List();
  List<String> relationList = List();
  List<String> highestList = List();
  List<String> medicationList = List();


  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }


  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Details'),
    Tab(text: 'Medical History'),
  ];


  double size  = 0;

  String working = "Part-time";
  List<File> certificates = List();






  @override
  void initState() {
    genderList.add("Male");
    genderList.add("Male");
    genderList.add("Female");
    genderList.add("Others");

    raceList.add("Malay");
    raceList.add("Chinese");
    raceList.add("Indian");
    raceList.add("Others");

    highestList.add("PMR/PT3");
    highestList.add("SPM");
    highestList.add("Fundation");
    highestList.add("Diploma");

    relationList.add("Mother");
    relationList.add("Father");
    relationList.add("Husband");
    relationList.add("Wife");
    relationList.add("Aunt");
    relationList.add("Uncle");
    relationList.add("Cousin");

    _controlleranimation = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    imagePicker = new ImagePickerHandler(this, _controlleranimation);
    imagePicker.init();



    super.initState();
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
              "Edit Certificates",
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

  void showImage() {
    imagePicker.showDialog(context);
  }

  @override
  userImage(File _image) {
    setState(() {
      profileImage = _image;
    });
    return null;
  }

  Widget setUpComingWidgets() {

    return  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showImage();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, .0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    child: Center(
                      child: profileImage == null
                          ? Image.asset(
                        "assets/images/img-upload.png",
                        width: 120,
                        height: 120,
                      )
                          : CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(
                          profileImage,
                        ),
                      ),
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
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: TextFormField(
                              controller: fullNameController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Full Name *"),
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
//                      showStates();
                    showGender();
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
                        children: <Widget>[
                          Spacer(
                            flex: 10,
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text(
                              gender,
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
//                      showStates();
                    showRace();

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
                        children: <Widget>[
                          Spacer(
                            flex: 10,
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text(
                              race,
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
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: TextFormField(
                              controller: dobController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Date of Birth"),
                            ),
                          ),
                        ],
                      )),
                ), GestureDetector(
                  onTap: () {
//                      showStates();
                    showRelations();

//              showTimeInPickerDialogue();
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
                              relation,
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
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: TextFormField(
                              controller: heightController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Height(CM) - optional"),
                            ),
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
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: TextFormField(
                              controller: weightController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Weight(KG) - optional"),
                            ),
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
                    children: <Widget>[
                      Container(
                        child: ic == null
                            ? Image.asset(
                          "assets/images/ic.png",
                          width: 200,
                          height: 200,
                        )
                            : Image.file(
                          ic,
                          width: 200,
                          height: 200,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          i = 1;
                          showImage();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 30.0),
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          decoration: BoxDecoration(
                              color: ic == null ? Colors.black87 : Colors.green,
                              border: Border.all(
                                  color: ic == null
                                      ? Colors.black87
                                      : Colors.green),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8))),
                          child: Center(
                            child: Text(ic == null ? "Capture" : "Completed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
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
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  void showGender() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Gender"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              itemCount: genderList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = genderList[i];
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'cancel');
                    });
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 8.0),
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            genderList[i],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions: null),
    );
  }

  void showEducation() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Race"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              itemCount: highestList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      highestEducationLevel = highestList[i];
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'cancel');
                    });
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 8.0),
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            highestList[i],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions: null),
    );
  }

  void showRace() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Race"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              itemCount: raceList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      race = raceList[i];
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'cancel');
                    });
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 8.0),
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            raceList[i],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions: null),
    );
  }



  void showRelations() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Relationship"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              itemCount: relationList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      relation = relationList[i];
//                      category = list[i].name;
//                      print(category);
                      Navigator.pop(context, 'cancel');
                    });
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 8.0),
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            relationList[i],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions: null),
    );
  }

  Widget setHistoryWidgets() {

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
                Spacer(),
                GestureDetector(
                  onTap: () {
                    check = -1;
                    showMedication();
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(19, 153, 159, 1.0)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text("+ Add New",
                        style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: medicationList.length > 0 ? 100 : 0,
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                  child: Row(
                    children: <Widget>[
                      Text((index + 1).toString() + ". "),
                      Container(
                        child: Text(
                          medicationList[index],
                          overflow: TextOverflow.ellipsis,
                        ),
                        width: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            medicationList.removeAt(index);
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
              itemCount: medicationList.length,
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
              child: TextFormField(
                controller: specialRequestController,
                style: TextStyle(
                  fontSize: 14,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText:
                  "State your special request/needs eg: precuation, special care for recipents.",
                  border: InputBorder.none,
                ),
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

  showMedication() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
        title: const Text('Add Medication name'),
        content: Container(
          padding: EdgeInsets.fromLTRB(10.0, .0, 10.0, .0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0)),
          ),
          child: TextFormField(
            controller: medicationController,
            decoration: InputDecoration(
                hintText: "Key in the medication name",
                border: InputBorder.none),
            style: Theme.of(context)
                .textTheme
                .subhead
                .copyWith(color: Theme.of(context).textTheme.caption.color),
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, 'cancel');
            },
          ),
          FlatButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                medicationList.add(medicationController.text);
                medicationController.text = "";
              });

              Navigator.pop(context, 'add');
            },
          ),
        ],
      ),
    );
  }

  void showAddDialogue() {
    showCuperDialog<String>(
      context: context,
      child: Theme(
        data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.white),
        child: CupertinoAlertDialog(
          title: Container(
//            color: Colors.white,
            padding: EdgeInsets.fromLTRB(.0, 20.0, .0, 20.0),
            child: Text('Do you want to add more person to be cared?'),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'YES, SET ANOTHER',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ToBeCared(),
                    ),
                        (e) => false);
              },
            ),
            CupertinoDialogAction(
              child: const Text(
                'NO, GO NEXT',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Home(),
                    ),
                        (e) => false);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCuperDialog<T>({BuildContext context, Widget child}) {
    showCupertinoDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then((T value) {
      if (value != null) {}
    });
  }
}
