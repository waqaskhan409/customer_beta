import 'package:customer_beta/ui/splash/booking/successfullsendrequest.dart';
import 'package:customer_beta/ui/splash/home/caregiverprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SendBookingRequest extends StatefulWidget {
  @override
  _SendBookingRequestState createState() => _SendBookingRequestState();
}

class _SendBookingRequestState extends State<SendBookingRequest> {
  bool isCheck = false;

  List<String> listCaregivers = List();
  List<bool> listBool = List();


  @override
  void initState() {
    // TODO: implement initState
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);
    listBool.add(false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Color.fromRGBO(19, 153, 159, 1.0),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,  color: Colors.white,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
      ],
      title: Row(
        children: <Widget>[
          Text(
            "Book Request",
            style: TextStyle(
                color: Colors.white
            ),
          )
        ],
      ),
    ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: listBool.length,
                itemBuilder: (_,i){
              return Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Color.fromRGBO(19, 153, 159, 1.0),
                          value: listBool[i], onChanged: (_){
                          setState(() {
                            listBool[i] = _;
                            if(_){
                              listCaregivers.add("sitti" + i.toString());
                            }else{
                              listCaregivers.remove("sitti"+ i.toString());

                            }

                          });
                        },),
                        Image.asset("assets/images/avatar1.png", width: 80, height: 80,),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(3),
                                child:  Text("Siti " + i.toString()),
                              ),
                              Container(
                                padding: EdgeInsets.all(3) ,
                                child: RatingBar(
                                  itemCount: 5,
                                  initialRating: 4,
                                  itemSize: 12,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (_){
                                     return CargiverProfile();
                                    }
                                  ));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2) ,
                                  child: Text("View details >", style: TextStyle(
                                      color: Colors.black54
                                  )
                                    ,),
                                ),
                              )

                            ],
                          ),
                        ),
                        Spacer(),
                       Column(

                         children: <Widget>[
                           Container(
                             margin: EdgeInsets.only(bottom: 20),
                             child:  Text("1 km"),
                           ),
                           i == 5 ? Container(
                             width: 100,
                  padding: EdgeInsets.only(left: 10, right: 10),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(4)),
                                 border: Border.all(color: Color.fromRGBO(19, 153, 159, 1.0))
                             ),
                             child:  Text("Outside coverage area  + RM 5.00", style: TextStyle(
                               color: Color.fromRGBO(19, 153, 159, 1.0),
                               fontSize: 8
                             ),),
                           ): Container()
                         ],
                       )
                      ],
                    ),
                  ),
                  Divider(),

                ],
              );
            })
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
                    Text(listCaregivers.length.toString())
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width/2,
                    child:                   Text("Maximum 5 booking request", style: TextStyle(
                      color: Colors.black54
                    ),)
                    ,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      //TODO Validation

                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return SuccessfulSendRequest();
                    }));
                    },
                    child:  Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        margin: EdgeInsets.fromLTRB(0, 20.0, 10.0, 20.0),
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
                                  "Send Request",
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

            ],
          )
          )
        ],
      ),
    );
  }
}
