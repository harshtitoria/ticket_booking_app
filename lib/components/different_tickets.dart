import 'package:flutter/material.dart';

class DifferentTickets extends StatelessWidget {
  DifferentTickets({required this.icon, required this.ticket});
  final Widget icon;
  final String ticket;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 57,
          width: 57,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Center(child: icon),
        ),
        Text(
          ticket,
          style: TextStyle(fontSize: 17),
        )
      ],
    );
  }
}
