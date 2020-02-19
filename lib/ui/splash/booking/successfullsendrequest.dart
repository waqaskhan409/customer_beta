import 'dart:async';

import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:flutter/material.dart';

class SuccessfulSendRequest extends StatefulWidget {
  @override
  _SuccessfulSendRequestState createState() => _SuccessfulSendRequestState();
}

class _SuccessfulSendRequestState extends State<SuccessfulSendRequest> {
  double size = 100.0;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    timerForSend();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Center(
            child: Icon(Icons.check, color: Colors.green, size: size,),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Your request has been sent",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23
              ),

            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: Text(
              "You will get the notification once the caregiver accpet or decline your request. The first caregiver to accept is the one that will do the service",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17
              ),
              textAlign: TextAlign.center,
            ),
          ),
          GestureDetector(
            onTap: (){
              //TODO Validation

              Navigator.push(context, MaterialPageRoute(builder: (_){
                return Home();
              }));
            },
            child:  Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 153, 159, 1.0),
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
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
                          "Go to home page",
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
          Spacer(),
        ],
      ),
    );
  }

  int _start = 2;

  Future<void> timerForSend() async {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (this.mounted) {
        setState(
              () {
            if (_start < 1) {
              setState(() {
                size = 300;
              });
              return;
            } else {
              _start = _start - 1;
            }
          },
        );
      } else {
//          print(_start);
      }
    });
  }

}
