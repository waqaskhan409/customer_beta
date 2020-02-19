import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditLocation extends StatefulWidget {
  @override
  _EditLocationState createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
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
              "Edit Location",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, .0, .0),
              child: Text(
                "Add your home adress ",
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
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Add your home adress ...",
                    border: InputBorder.none,
                  ),
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
    );
  }
}
