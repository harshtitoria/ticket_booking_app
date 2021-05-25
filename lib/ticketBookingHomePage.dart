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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: EdgeInsets.fromLTRB(17, 8, 0, 8),
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upcoming Trip',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 1,
                                      ),
                                    ),
                                    Text(
                                      'You have 2 upcoming ticket',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(13),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.orange[350],
                                        ),
                                        Text(
                                          'Train',
                                          style: TextStyle(
                                            color: Colors.orange[300],
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '2 Seats',
                                          style: TextStyle(
                                            color: Colors.orange[200],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey.shade300,
                                      thickness: 1.7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'MLG',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Text(
                                                '03:18',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              'May 31, 2021',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.greenAccent,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'JKT',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Text(
                                                '08:40',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              'May 31, 2021',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(13),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.orange[350],
                                        ),
                                        Text(
                                          'Train',
                                          style: TextStyle(
                                            color: Colors.orange[300],
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '2 Seats',
                                          style: TextStyle(
                                            color: Colors.orange[200],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey.shade300,
                                      thickness: 1.7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'MLG',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Text(
                                                '03:18',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              'May 31, 2021',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.greenAccent,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'JKT',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Text(
                                                '08:40',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              'May 31, 2021',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Text(
                                'Top destinations',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Recommended Place for you',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 160,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
