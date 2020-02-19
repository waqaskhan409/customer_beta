import 'package:customer_beta/ui/splash/login/tobecared.dart';
import 'package:customer_beta/ui/splash/profile/viewpersondetail.dart';
import 'package:flutter/material.dart';

class PersonToCared extends StatefulWidget {
  @override
  _PersonToCaredState createState() => _PersonToCaredState();
}

class _PersonToCaredState extends State<PersonToCared> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (_){
            return ToBeCared();
          }
        ));

      },backgroundColor:  Color.fromRGBO(19, 153, 159, 1.0),
      child: Icon(Icons.add, color: Colors.white,),),
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
      body: ListView.builder(itemBuilder: (_, i){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (_){
                return ViewPersonDetail();
              }
            ));

          },
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/avatar2.png", width: 80, height: 80,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                          child: Text("Amber Wong", ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                          child: Text("Mother", style: TextStyle(
                            color: Color.fromRGBO(19, 153, 159, 1.0),
                          ),),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_forward_ios, )
                      ,
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          )
        );
      }, itemCount: 1,
      shrinkWrap: true,),
    );
  }
}
