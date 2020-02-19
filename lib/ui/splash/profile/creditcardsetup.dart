import 'package:customer_beta/ui/splash/profile/addcreditcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class CreditCardSetup extends StatefulWidget {
  @override
  _CreditCardSetupState createState() => _CreditCardSetupState();
}

class _CreditCardSetupState extends State<CreditCardSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (_){
            return AddCreditCard();
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
              "My Credit Card",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (_, i){
        return Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/images/ambank 1.png", width: 60, height: 60,),
                 Container(
                   margin: EdgeInsets.only(left: 20),
                   child:  Text("**** **** **** 1234", style: TextStyle(
                     fontWeight: FontWeight.w700,
                     fontSize: 24
                   ),),
                 )
                ],

              ),
              Row(
                children: <Widget>[
                  Spacer(flex: 10,),
                  Text("Remove", style: TextStyle(color: Colors.red),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text("Edit", style: TextStyle(color: Colors.black54),),
                  ),
                  Spacer()
                ],
              )
            ],
          )
        );
      }),
    );
  }
}
