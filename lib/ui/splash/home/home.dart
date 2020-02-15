import 'package:carousel_slider/carousel_slider.dart';
import 'package:customer_beta/ui/splash/booking/booking.dart';
import 'package:customer_beta/ui/splash/chat/chat.dart';
import 'package:customer_beta/ui/splash/home/latestnews.dart';
import 'package:customer_beta/ui/splash/home/myorders.dart';
import 'package:customer_beta/ui/splash/home/newsdetail.dart';
import 'package:customer_beta/ui/splash/home/promotion.dart';
import 'package:customer_beta/ui/splash/home/tutorials.dart';
import 'package:customer_beta/ui/splash/profile/profile.dart';
import 'package:customer_beta/ui/splash/summaries/summaries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;


import 'help.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> careTakerImages = <String>[
    "assets/images/banner.png",
    "assets/images/banner_2.png",
    "assets/images/banner_3.png",
  ];
  int _current = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
              onTap: () async {
                String cameraScanResult = await scanner.scan();
                print(cameraScanResult);


              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  "assets/images/qrscan.png",
                  width: 30,
                  height: 30,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo_icon.png",
              width: 45,
              height: 45,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Image.asset(
                "assets/images/logo_text.png",
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home_active.png",
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
              "assets/images/booking.png",
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
          } else if (index == 1) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => Summaries(),
                ),
                    (e) => false);
          } else if (index == 2) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => BookingOrders(),
                ),
                    (e) => false);
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
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    overflow: Overflow.clip,
                    children: <Widget>[
                      Container(
                        height: 193,
                        width: MediaQuery.of(context).size.width,
                        child: CarouselSlider.builder(
                            viewportFraction: 1.0,
                            onPageChanged: (index) {
                              setState(() {
                                _current = index;
                              });
                            },
                            itemCount: 3,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Image.asset(
                                careTakerImages[index],
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                              );
                            }),
                      ),
                      Positioned(
                        bottom: 1,
                        child: Container(
                            margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 2 - 30,
                                0.0,
                                0.0,
                                0.0),
                            height: 30.0,
                            child: ListView.builder(
                                itemCount: 3,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, i) {
                                  return Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == i
                                            ? Color.fromRGBO(19, 153, 159, 1.0)
                                            : Colors.white),
                                  );
                                })),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => MyOrders(),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/1-my_order.png",
                              width: 45,
                              height: 45,
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "My Orders",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (_) => LatestNews(),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/2-latest_news.png",
                              width: 45,
                              height: 45,
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "Latest News",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: () {
//                      Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                            builder: (_) => LatestNews(),
//                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/3-booking_requests.png",
                              width: 45,
                              height: 45,
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "Booking Request",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => (Promotions()),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/4-promotion.png",
                              width: 45,
                              height: 45,
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "Promotion",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: (){
//                      Navigator.push(context, MaterialPageRoute(
//                          builder: (_){
//                            return Tutorails();
//                          }
//                      ));
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(.0, 20.0, 0.0, 0.0),
                              child: Image.asset(
                                "assets/images/5-notification_of_appointment.png",
                                width: 45,
                                height: 45,
                              ),
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "Notification of appointment",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_){
                            return Tutorails();
                          }
                      ));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/6-tutorial.png",
                              width: 45,
                              height: 45,
                            ),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(.0, 5.0, 0.0, 0.0),
                              child: Text(
                                "Tutorials",
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, .0, .0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Help();
                }));
                  },
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 0.0),
                            child: Image.asset(
                              "assets/images/helpchat.png",
                              width: 30,
                              height: 30,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Help"),
                            Text(
                              "Chat with us if you need help",
                              style: TextStyle(color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),

          Container(
            margin: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/7-add_person_to_care.png", width: 200, height: 80,),
                ),
                Container(
                  child: Image.asset("assets/images/8-book_now.png", width: 120, height: 55,),
                )
              ],
            ),
          )
        ],
      )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget showQrCode() {
    showMaterialDialog<String>(
      context: context,
      child: SimpleDialog(
        title: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 3,
          child: QrImage(
            data: "1234567890",
          ),
        ),
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, .0, 20.0, .0),
              child: Text(
                "Show this QR to Customer to confirm their service request.",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
    });
  }

  void showDeclineDialogue() {
    showCuperDialog<String>(
      context: context,
      child: Theme(
        data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.white),
        child: CupertinoAlertDialog(
          title: Container(
//            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            child: Text('Are you sure to decline?'),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('No', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.pop(context, 'Disallow');
              },
            ),
            CupertinoDialogAction(
              child: const Text('Yes, decline',
                  style: TextStyle(color: Colors.green)),
              onPressed: () {
                Navigator.pop(context, 'Allow');
              },
            ),
          ],
        ),
      ),
    );
  }

  void showAcceptDialogue() {
    showCuperDialog<String>(
      context: context,
      child: Theme(
        data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.white),
        child: CupertinoAlertDialog(
          title: Container(
//            color: Colors.white,
            padding: EdgeInsets.fromLTRB(.0, 20.0, .0, 20.0),
            child: Text('Are you sure to Accept?'),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'No',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context, 'Disallow');
              },
            ),
            CupertinoDialogAction(
              child: const Text(
                'Yes, Accept',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                Navigator.pop(context, 'Allow');
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCuperDialog<T>({BuildContext context, Widget child}) {
    showCupertinoDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then((T value) {
      if (value != null) {}
    });
  }
}
