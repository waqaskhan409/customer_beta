import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/home/home.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:customer_beta/ui/splash/summaries/summaries.dart';
import 'package:flutter/material.dart';

class BookingOrders extends StatefulWidget {
  @override
  _BookingOrdersState createState() => _BookingOrdersState();
}

class _BookingOrdersState extends State<BookingOrders> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 30,
              height: 30,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/summaries.png",
              width: 30,
              height: 30,
            ),
            title: Text('Summaries'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/booking_active.png",
              width: 30,
              height: 30,
            ),
            title: Text('Booking'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/chat.png",
              width: 30,
              height: 30,
            ),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/account.png",
              width: 30,
              height: 30,
            ),
            title: Text('Account'),
          )
        ],

        selectedItemColor: Color.fromRGBO(19, 153, 159, 1.0),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Home(),
                ),
                    (e) => false);
          } else if (index == 1) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Summaries(),
                ),
                    (e) => false);
          } else if (index == 2) {

          } else if (index == 3) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Chat(),
                ),
                    (e) => false);
          } else if (index == 4) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
                    (e) => false);
          }
        },
//        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
