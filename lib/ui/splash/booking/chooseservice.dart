import 'dart:math';

import 'package:customer_beta/ui/splash/booking/chooseserviceconfirm.dart';
import 'package:flutter/material.dart';

class ChooseService extends StatefulWidget {
  @override
  _ChooseServiceState createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  bool _postOp = false;
  bool _elderlyHome = false;
  bool _woundCare = false;
  bool _stomaCare = false;
  bool _CBD = false;
  bool _injectionAntibiotice = false;
  bool _NGTubeCare = false;
  bool _AntiBiotic = false;

  List<bool> list = List();
  int sizeServices = 0;



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
              "Book Now",
              style: TextStyle(
                  color:Color.fromRGBO(19, 153, 159, 1.0)
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Text("Home Care Service", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          if(!_elderlyHome){
                            setState(() {
                              if(!_elderlyHome && !_postOp){
                                ++sizeServices;
                              }

                              _elderlyHome = true;
                              _postOp = false;

                            });
                          }

                        },
                        child: Stack(

                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              !_elderlyHome ? "assets/images/elderly_care.png" : "assets/images/elderly_care_active.png",
                              width: MediaQuery.of(context).size.width / 3,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          if(!_postOp){
                            setState(() {
                              if(!_elderlyHome && !_postOp){
                                ++sizeServices;
                              }
                              _postOp = true;
                              _elderlyHome = false;
                            });
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              !_postOp ? "assets/images/post_op.png" : "assets/images/post_op_active.png",
                              width: MediaQuery.of(context).size.width /3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Text("Special Procedure", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(_woundCare){
                        setState(() {
                          --sizeServices;
                          _woundCare = false;
                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _woundCare = true;
                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _woundCare ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("Wound care - Wound dressing", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            color: _woundCare ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(_stomaCare){
                        setState(() {
                          --sizeServices;
                          _stomaCare = false;
                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _stomaCare = true;
                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _stomaCare ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("Stoma care - Wound dressing, change of stoma",
                              textAlign: TextAlign.center,style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: _stomaCare ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  )
,
                  GestureDetector(
                    onTap: (){
                      if(_CBD){
                        setState(() {
                          --sizeServices;
                          _CBD = false;
                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _CBD = true;

                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _CBD ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("Change of CBD", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: _CBD ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  )
,
                  GestureDetector(
                    onTap: (){
                      if(_injectionAntibiotice){
                        setState(() {
                          --sizeServices;
                          _injectionAntibiotice = false;
                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _injectionAntibiotice = true;
                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _injectionAntibiotice ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("Injection of AntiBiotic", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: _injectionAntibiotice ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  )
,
                  GestureDetector(
                    onTap: (){
                      if(_NGTubeCare){
                        setState(() {
                          --sizeServices;
                          _NGTubeCare = false;

                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _NGTubeCare = true;

                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _NGTubeCare ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("NG tube care and feeding", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: _NGTubeCare ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(_AntiBiotic){
                        setState(() {
                          --sizeServices;
                          _AntiBiotic = false;
                        });
                      }else{
                        setState(() {
                          ++sizeServices;
                          _AntiBiotic = true;
                        });
                      }
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        decoration: BoxDecoration(
                          color: _AntiBiotic ? Colors.indigoAccent: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text("Antibiotic injection", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: _AntiBiotic ? Colors.white : Colors.black
                          ),),
                        )
                    ),
                  )


                ],
              ),
            ),

          ),
          Container(
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
           )
            , child: Column(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.all(20),
                   child: Row(
                   children: <Widget>[
                     Text("Total"),
                     Spacer(),
                     Text(sizeServices.toString())
                   ],
                 ),
               ),
               Center(
                 child: GestureDetector(
                   onTap: (){
                     //TODO Validation
                     list.add(_postOp);
                     list.add(_elderlyHome);
                     list.add(_woundCare);
                     list.add(_stomaCare);
                     list.add(_CBD);
                     list.add(_injectionAntibiotice);
                     list.add(_NGTubeCare);
                     list.add(_AntiBiotic);

                     Navigator.push(context, MaterialPageRoute(builder: (_){
                       return ChooseServiceConfirm(title: list,);
                     }));
                   },
                   child:  Container(
                       width: MediaQuery.of(context).size.width/1.5,
                       margin: EdgeInsets.fromLTRB(0, 20.0, 0.0, 20.0),
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
               ),
             ],
          )
          )
        ],
      ),
    );
  }
}
