import 'package:flutter/material.dart';

class BookingSearch extends StatefulWidget {
  @override
  _BookingSearchState createState() => _BookingSearchState();
}

class _BookingSearchState extends State<BookingSearch> {
  TextEditingController buildingController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController postalController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController areaController = TextEditingController();



  List<String> listState = new List();
  List<String> listDistrict = new List();
  List<String> listArea = new List();

  @override
  void initState() {
    // TODO: implement initState
    listState.add("State 1");
    listState.add("State 2");
    listState.add("State 3");
    listState.add("State 4");
    listState.add("State 5");



    listDistrict.add("district 1");
    listDistrict.add("district 2");
    listDistrict.add("district 3");
    listDistrict.add("district 4");
    listDistrict.add("district 5");

    listArea.add("area 1");
    listArea.add("area 2");
    listArea.add("area 3");
    listArea.add("area 4");
    listArea.add("area 5");

    
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
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
                "Address filters",
                style: TextStyle(
                    color:Color.fromRGBO(19, 153, 159, 1.0)
                ),
              )
            ],
          ),
        ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Search by street address (google maps)"
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(.0, 30.0, .0, .0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("OR ", style: TextStyle(fontWeight: FontWeight.w700),),
                    Text("type in your address"),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: buildingController,
                  decoration: InputDecoration(
                      hintText: "Building Number"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: streetController,
                  decoration: InputDecoration(
                      hintText: "Street Address"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: unitController,
                  decoration: InputDecoration(
                      hintText: "Unit Number"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: postalController,
                  decoration: InputDecoration(
                      hintText: "Postal Code"
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onTap: (){
                      showStates();
                    },
                    controller: stateController,
                    decoration: InputDecoration(
                        hintText: "State",
                        suffixIcon: Icon(Icons.arrow_drop_down)
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onTap: (){
                      showDistrict();
                    },
                    controller: districtController,
                    decoration: InputDecoration(
                        hintText: "Select district",
                        suffixIcon: Icon(Icons.arrow_drop_down)
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onTap: (){
                      showArea();
                    },
                    controller: areaController,
                    decoration: InputDecoration(
                        hintText: "Select area",
                        suffixIcon: Icon(Icons.arrow_drop_down)
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    //TODO Validation
                    Navigator.pop(context);
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
                                "Confirm",
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
        ),
      )
    );
  }

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
  void showStates(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the States"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: listState.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      stateController.text = listState[i];
                      Navigator.pop(context, 'okey');
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
                            listState[i],
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
  void showDistrict(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the District"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: listDistrict.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      districtController.text = listDistrict[i];
                      Navigator.pop(context, 'okey');
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
                            listDistrict[i],
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
  void showArea(){
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Area"),
          content:  Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.builder(
              itemCount: listArea.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      areaController.text = listArea[i];
                      Navigator.pop(context, 'okey');
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
                            listArea[i],
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
  
  
}
