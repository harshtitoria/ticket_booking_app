import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  final Widget bookingVehicleIcon;
  final String bookingVehicle;
  final String numOfTickets;
  final String boardingFrom;
  final String boardingTime;
  final String boardingDate;
  final String arrivalAt;
  final String arrivalTime;
  final String arrivalDate;
  
  MyBookings(
      {required this.bookingVehicleIcon,
      required this.bookingVehicle,
      required this.numOfTickets,
      required this.boardingFrom,
      required this.boardingTime,
      required this.boardingDate,
      required this.arrivalAt,
      required this.arrivalTime,
      required this.arrivalDate});
  @override
  Widget build(BuildContext context) {
    return Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                bookingVehicleIcon,
                Text(
                  bookingVehicle,
                  style: TextStyle(
                    color: Colors.orange[300],
                  ),
                ),
                Spacer(),
                Text(
                  numOfTickets,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      boardingFrom,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        boardingTime,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      boardingDate,
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
                      arrivalAt,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        arrivalTime,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      arrivalDate,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
