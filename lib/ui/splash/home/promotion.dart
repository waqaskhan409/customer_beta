import 'package:customer_beta/ui/splash/booking/booking.dart';
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  List<String> assetsPromotionList = List();

  @override
  void initState() {
    // TODO: implement initState

    assetsPromotionList.add("assets/images/promotion1.png");
    assetsPromotionList.add("assets/images/promotion2.png");


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 153, 159, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
              child: Text(
                "Promotion",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                itemCount: assetsPromotionList.length,
                itemBuilder: (_, i){
                  return GestureDetector(
                    onTap: (){
                      //TODO setting booking
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BookingOrders(),
                          ),
                              (e) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Image.asset(assetsPromotionList[i]),
                    ),
                  );
                }),

          ],
        ),
      )
    );
  }
}
