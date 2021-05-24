import 'package:flutter/material.dart';

class TicketBookingHomePage extends StatefulWidget {
  @override
  _TicketBookingHomePageState createState() => _TicketBookingHomePageState();
}

class _TicketBookingHomePageState extends State<TicketBookingHomePage> {
  int pageIndex = 0;
  late PageController pageController; //

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.orange[50]),
                            child: Row(children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Text('😷'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Covid: Our destinations are open to travel!',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.airplanemode_on_sharp,
                                          color: Colors.orange)),
                                ),
                                Text(
                                  'Plane',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.train,
                                          color: Colors.orange.shade200)),
                                ),
                                Text(
                                  'Train',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.hotel,
                                          color: Colors.blue)),
                                ),
                                Text(
                                  'Hotel',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.bus_alert,
                                          color: Colors.green)),
                                ),
                                Text(
                                  'Bus',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Center(
                                      child:
                                          Icon(Icons.apps, color: Colors.grey)),
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Column(children: [
                      Expanded(
                        child: Placeholder(),
                      ),
                      Expanded(
                        child: Placeholder(),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Text('page2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('page3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('page4'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idX) {
          setState(() {
            pageIndex = idX;
          });
          pageController.jumpToPage(idX);
        },
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_num_outlined), label: "My tickets"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings")
        ],
      ),
    );
  }
}
