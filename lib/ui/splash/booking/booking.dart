import 'package:customer_beta/ui/splash/booking/bookingsearch.dart';
import 'package:customer_beta/ui/splash/booking/chooseservice.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:customer_beta/ui/splash/summaries/summaries.dart';
import 'package:flutter/material.dart';

class BookingOrders extends StatefulWidget {
  @override
  _BookingOrdersState createState() => _BookingOrdersState();
}

class _BookingOrdersState extends State<BookingOrders> {
  int _selectedIndex = 2;
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Search by location'),
    Tab(text: 'Search by Nearby'),
  ];
  bool male = false;
  bool female = false;

  List<String> imagesCared = List();




  String _selectDate = "Monday 21 October 2019";
  String _tobeCared = "To be cared";
  String _time = "Monday 21 October 2019";

  @override
  void initState() {
    // TODO: implement initState
    imagesCared.add("assets/images/avatar1.png");
    imagesCared.add("assets/images/avatar2.png");
    imagesCared.add("assets/images/avatar3.png");
    imagesCared.add("assets/images/avatar4.png");



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              "assets/images/summaries.png",
              width: 30,
              height: 30,
            ),
            title: Text('Summaries'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/booking_active.png",
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
                    (e) => false);
          } else if (index == 1) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Summaries(),
                ),
                    (e) => false);
          } else if (index == 2) {

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
      body: DefaultTabController(
        length: myTabs.length,
        child: new Column(
          children: <Widget>[
            new Container(
        decoration: BoxDecoration(

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
        ) ,
              constraints: BoxConstraints(maxHeight: 150.0),
              child: new Material(
                color: Color.fromRGBO(19, 153, 159, 1.0),
                child: new TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Color.fromRGBO(19, 153, 159, 1.0),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        width: 5.0, color: Colors.white),
                  ),
                  tabs: [myTabs[0], myTabs[1]],
                ),
              ),
            ),
            new Expanded(
              child: new TabBarView(
                children: [setlocationWidgets(),  setNearByWidgets()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setlocationWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (_){
                                return BookingSearch();
                              }
                          ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/location_coverage_p.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Search location",
                      style: TextStyle(color: Colors.black26),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showDate();

            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/2-date.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      _selectDate,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showTime();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/3-time.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Select time",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "09;00 AM",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showBeloved();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/4-care-recipient.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      _tobeCared,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
//                          Navigator.push(context, MaterialPageRoute(
//                              builder: (_){
//                                return Help();
//                              }
//                          ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Caregiver Gender",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  if(!male){
                    setState(() {
                      male = true;
                      female = false;
                    });
                  }
               },
                child: Stack(

                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      !male ? "assets/images/5-male.png": "assets/images/5-male_active.png",
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  if(!female){
                    setState(() {
                      male = false;
                      female = true;
                    });
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      !female ?"assets/images/6-female.png": "assets/images/6-female_active.png",
                      width: MediaQuery.of(context).size.width /3,
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: GestureDetector(
              onTap: (){
                //TODO Validation
                print("asda");
                //TODO Validation

                Navigator.push(context, MaterialPageRoute(
                    builder: (_){
                      return ChooseService();
                    }
                ));
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  margin: EdgeInsets.fromLTRB(0, 70.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
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
                          color: Color.fromRGBO(19, 153, 159, 1.0),
                          child: Text(
                            "Choose Service",
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
          )
        ],
      ),
    );
  }

  Widget setNearByWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              showDate();

            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/2-date.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      _selectDate,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showTime();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/3-time.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Select time",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "09;00 AM",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showBeloved();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/4-care-recipient.png",
                    width: 35,
                    height: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      _tobeCared,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_drop_down, size: 30,),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
//                          Navigator.push(context, MaterialPageRoute(
//                              builder: (_){
//                                return Help();
//                              }
//                          ));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 15.0, .0, 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Caregiver Gender",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  if(!male){
                    setState(() {
                      male = true;
                      female = false;
                    });
                  }
                },
                child: Stack(

                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      !male ? "assets/images/5-male.png": "assets/images/5-male_active.png",
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  if(!female){
                    setState(() {
                      male = false;
                      female = true;
                    });
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      !female ?"assets/images/6-female.png": "assets/images/6-female_active.png",
                      width: MediaQuery.of(context).size.width /3,
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: GestureDetector(
              onTap: (){
                print("asda");
                //TODO Validation

                Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                   return ChooseService();
                  }
                ));
              },
              child:  Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  margin: EdgeInsets.fromLTRB(0, 70.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(19, 153, 159, 1.0),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
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
                          color: Color.fromRGBO(19, 153, 159, 1.0),
                          child: Text(
                            "Choose Service",
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
          )
        ],
      ),
    );
  }

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
  void showBeloved(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the beloved one"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: imagesCared.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _tobeCared = imagesCared[i].split("/")[2];
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
                          child: Image.asset(
                            imagesCared[i],
                            width: 35,
                            height: 45,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            imagesCared[i].split("/")[2],
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
          actions:null
      ),
    );
  }








  Future<Null> showDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    setState(() {
      _selectDate = picked.toString();
    });
  }

  void showTime() async{
    TimeOfDay timein = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      final MaterialLocalizations localizations = MaterialLocalizations.of(context);
      _time = localizations.formatTimeOfDay(timein);
    });
    print(_time);
  }

}
