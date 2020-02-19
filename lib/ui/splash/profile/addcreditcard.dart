import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class AddCreditCard extends StatefulWidget {
  @override
  _AddCreditCardState createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cardholderController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  bool isBackShow = false;
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
              "My Credit Card",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: cardNumberController.text,
              expiryDate: expiryController.text,
              cardHolderName: cardholderController.text,
              cvvCode: cvvController.text,
              showBackView: isBackShow, //true when you want to show cvv(back) view
            ),
            GestureDetector(
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        child: TextFormField(
                          onTap: (){
                            setState(() {
                              isBackShow = false;
                            });
                          },
                          controller: cardNumberController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Card Number *"
                          ),
                        ),
                      ),

                    ],
                  )),
            ),

            GestureDetector(
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        child: TextFormField(
                          onTap: (){
                            setState(() {
                              isBackShow = false;
                            });
                          },
                          controller: expiryController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Expiry Date *"
                          ),
                        ),
                      ),

                    ],
                  )),
            ),

            GestureDetector(
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        child: TextFormField(
                          onTap: (){
                            setState(() {
                              isBackShow = false;
                            });
                          },
                          controller: cvvController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Card holder name *"
                          ),
                        ),
                      ),

                    ],
                  )),
            ),


            GestureDetector(
              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(4)),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        child: TextFormField(
                          onTap: (){
                            setState(() {
                              isBackShow = true;
                            });
                          },
                          controller: cardNumberController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "CVV Code *"
                          ),
                        ),
                      ),

                    ],
                  )),
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
      )
    );
  }
}
