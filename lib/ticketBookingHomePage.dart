import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:badges/badges.dart';
import 'components/different_tickets.dart';
import 'components/myBookings.dart';

class TicketBookingHomePage extends StatefulWidget {
  @override
  _TicketBookingHomePageState createState() => _TicketBookingHomePageState();
}

class _TicketBookingHomePageState extends State<TicketBookingHomePage> {
  int pageIndex = 0;
  PageController pageController = PageController(); //

  // @override
  // void initState() {
  //   super.initState();
  //   pageController = PageController();
  // }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
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
                    child: Swiper(
                      itemCount: 4,
                      controller: SwiperController(),
                      pagination: SwiperPagination(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.monetization_on,
                                              color: Colors.orange.shade300,
                                            ),
                                            Text(
                                              '400 points',
                                              style: TextStyle(
                                                  color:
                                                      Colors.orange.shade300),
                                            )
                                          ]),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Badge(
                                          child: Icon(Icons.settings_outlined),
                                          position: BadgePosition.bottomEnd(),
                                          padding: EdgeInsets.all(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
                            DifferentTickets(
                              icon: Icon(Icons.airplanemode_on_sharp,
                                  color: Colors.orange),
                              ticket: 'Plane',
                            ),
                            DifferentTickets(
                              icon: Icon(Icons.train,
                                  color: Colors.orange.shade200),
                              ticket: 'Train',
                            ),
                            DifferentTickets(
                              icon: Icon(Icons.hotel, color: Colors.blue),
                              ticket: 'Hotel',
                            ),
                            DifferentTickets(
                              icon: Icon(Icons.bus_alert, color: Colors.green),
                              ticket: 'Bus',
                            ),
                            DifferentTickets(
                              icon: Icon(Icons.apps, color: Colors.grey),
                              ticket: 'More',
                            )
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
                            MyBookings(
                              bookingVehicle: 'Train',
                              bookingVehicleIcon: Icon(
                                Icons.train,
                                color: Colors.orange[350],
                              ),
                              numOfTickets: '2 Seats',
                              boardingFrom: 'MLG',
                              boardingDate: 'May 10, 2021',
                              boardingTime: '03:18',
                              arrivalAt: 'JKL',
                              arrivalDate: 'May 11, 2021',
                              arrivalTime: '08:40',
                            ),
                            MyBookings(
                              bookingVehicle: 'Plane',
                              bookingVehicleIcon: Icon(
                                Icons.place_outlined,
                                color: Colors.orange[350],
                              ),
                              numOfTickets: '3 Seats',
                              boardingFrom: 'CGK',
                              boardingDate: 'May 10, 2021',
                              boardingTime: '03:50',
                              arrivalAt: 'IGIA',
                              arrivalDate: 'May 11, 2021',
                              arrivalTime: '10:55',
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

