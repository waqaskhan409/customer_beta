import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/login/profile.dart';
import 'package:customer_beta/ui/splash/login/tobecaredprofile.dart';
import 'package:flutter/material.dart';

class ToBeCared extends StatefulWidget {
  @override
  _ToBeCaredState createState() => _ToBeCaredState();
}

class _ToBeCaredState extends State<ToBeCared> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, .0, .0, .0),
            child: Text("Add person to be cared "
              ,style: TextStyle(
                  fontSize: 17.0,
                  color:Color.fromRGBO(19, 153, 159, 1.0)
              ),),

          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_){
                    return ToBeCaredProfile(relation: "self",);
                  }
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(color: Colors.indigo),
                borderRadius:
                BorderRadius.all(Radius.circular(10)),
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
              height: 100,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, .0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/myself.png", width: 60, height: 60,),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "Myself",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_){
                 return ToBeCaredProfile(relation: "relation",);
                }
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(220, 30, 65, 1),
                border: Border.all(color: Color.fromRGBO(220, 30, 65, 1)),
                borderRadius:
                BorderRadius.all(Radius.circular(10)),
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
              height: 100,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, .0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/loved_one.png", width: 60, height: 60,),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                    child: Text(
                      "For Loved One",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Spacer(flex: 2,),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){

                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/back.png", width: 70.0, height: 70.0,),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Home(),
                        ),
                            (e) => false);
                  },
                  child: Image.asset("assets/images/next.png", width: 70.0, height: 70.0,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
