import 'package:customer_beta/ui/splash/booking/sendbookingrequest.dart';
import 'package:flutter/material.dart';

class ChooseServiceConfirm extends StatefulWidget {
  ChooseServiceConfirm({Key key, this.title}) : super(key: key);

  List<bool> title;

  @override
  _ChooseServiceConfirmState createState() => _ChooseServiceConfirmState();
}

class _ChooseServiceConfirmState extends State<ChooseServiceConfirm> {

  String groupCertificate = "Certified";
  TextEditingController specialPrecautionController = TextEditingController();


  String hours = "2 Hours";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
           child:SingleChildScrollView(
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.all(20.0),
                   child: Text("Home Care Service", style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 20
                   ),),
                 ),
                 ListView.builder(
                     shrinkWrap: true,
                     itemCount: 2,
                     itemBuilder: (_, i){
                       return widget.title[i] ? Container(
                         child: GestureDetector(
                           onTap: () {
                           },
                           child: Container(
                               width: MediaQuery.of(context).size.width,
                               margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(color: Colors.black12),
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(4)),
                               ),
                               child: Row(
                                 children: <Widget>[

                                   FlatButton(
                                     color: Colors.white,
                                     child: Text(
                                       i==1 ? "Elderly Home care" : "Post op care",
                                       style: TextStyle(
                                           fontSize: 17.0,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.w500),
                                     ),
                                   ),
                                   Spacer(
                                     flex: 8,
                                   ),
                                   GestureDetector(
                                     onTap: (){
                                       setState(() {
                                         widget.title[i] = false;
                                       });

                                     },
                                     child: Icon(
                                       Icons.clear,
                                       size: 30,
                                       color: Colors.black54,
                                     ),
                                   ),
                                   Spacer(),
                                 ],
                               )),
                         ),
                       ): Container();
                     }),
                 Container(
                   margin: EdgeInsets.all(20.0),
                   child: Text("Special Procedure", style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 20
                   ),),
                 ),
                 ListView.builder(
                     shrinkWrap: true,
                     itemCount: 6,
                     itemBuilder: (_, i){
                       if(i<2){
                         return Container();
                       }
                       return widget.title[i] ? Container(
                         child: GestureDetector(
                           onTap: () {
                           },
                           child: Container(
                               width: MediaQuery.of(context).size.width,
                               margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(color: Colors.black12),
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(4)),
                               ),
                               child: Row(
                                 children: <Widget>[
                                   Container(
                                     width: MediaQuery.of(context).size.width-100,
                                     color: Colors.white,
                                     child: Text(
                                       checkString(i),
                                       style: TextStyle(
                                           fontSize: 17.0,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.w500),
                                     ),
                                   ),
                                   Spacer(
                                     flex: 8,
                                   ),
                                   GestureDetector(
                                     onTap: (){
                                       setState(() {
                                         widget.title[i] = false;
                                       });

                                     },
                                     child: Icon(
                                       Icons.clear,
                                       size: 30,
                                       color: Colors.black54,
                                     ),
                                   ),
                                   Spacer(),
                                 ],
                               )),
                         ),
                       ): Container();
                     }),
                 Divider(thickness: 3,),
                 GestureDetector(
                   onTap: () {
//                      showStates();
                     showHours();

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
                           FlatButton(
                             color: Colors.white,
                             child: Text(
                               hours,
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
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Container(
                       child: Row(
                         children: <Widget>[
                           Radio(
                             value: "Certified",
                             activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                             groupValue: groupCertificate,
                             onChanged: (_) {
                               setState(() {
                                 groupCertificate = _;
                               });
                             },
                           ),
                           Text("Certified")
                         ],
                       ),
                     ),
                     Container(
                       child: Row(
                         children: <Widget>[
                           Radio(
                             value: "Non-certified",
                             activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                             groupValue: groupCertificate,
                             onChanged: (_) {
                               setState(() {
                                 groupCertificate = _;
                               });
                             },
                           ),
                           Text("Non-certified")
                         ],
                       ),
                     ),
                   ],
                 ),
                 Divider(thickness: 3,),
                 Center(
                   child: Container(
                     margin: EdgeInsets.fromLTRB(20, 10.0, 20.0, 30.0),
                     width: MediaQuery.of(context).size.width,
                     padding: EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                     height: 100,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(color: Colors.black12),
                       borderRadius: BorderRadius.all(Radius.circular(4)),
                     ),
                     child: TextFormField(
                       controller: specialPrecautionController,
                       keyboardType: TextInputType.multiline,
                       maxLines: 5,
                       decoration: InputDecoration(
                         hintText: "Special Precaution (Optional)",
                         border: InputBorder.none,
                       ),
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(20.0),
                   child: Text("Recurring this service: You'll get discount for each day of recurring", style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 14
                   ),),
                 ),
                 Container(
                   margin: EdgeInsets.only(left: 20, bottom: 20),
                   child: Text("Weekly recurring dicount valid until 31-01-2019", style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontSize: 12,
                     color: Colors.black45
                   ),),
                 ),

               ],
             ),
           )
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
                margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  children: <Widget>[
                    Text("Current Price", style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),),
                    Spacer(),
                    Text(groupCertificate == "Certified"?"110.00 RM" : "90.00 RM")
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),

                child: Row(
                  children: <Widget>[
                    Text("Recurring Service", style: TextStyle(
                        fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    Text("-0.00 RM")
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  children: <Widget>[
                    Text("TOTAL", style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w700
                    ),),
                    Spacer(),
                    Text(groupCertificate == "Certified"?"110.00 RM" : "90.00 RM")
                  ],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    //TODO Validation
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_){
                       return SendBookingRequest();
                      }
                    ));
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

  String checkString(int i) {
    if(i == 2){
      return "Wound care - Wound dressing";
    }else if(i == 3){
      return "Stoma care - Wound dressing, change of stoma";
    }else if(i == 4){
      return "Change of CBD";
    }else if(i == 5){
      return "Injection of AntiBiotic";
    }else if(i == 6){
      return "NG tube care and feeding";
    }else if(i == 7){
      return "Antibiotic injection";
    }
  }


  void showHours() {
    showMaterialDialog<String>(
      context: context,
      child: AlertDialog(
          title: Text("Select the Hours"),
          content: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      hours = (i+2).toString() + " Hours";
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
                            (i+2).toString()+" Hours",
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
  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }
}
