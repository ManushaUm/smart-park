import 'package:flutter/material.dart';

class DisplayTotalPrice extends StatefulWidget {
  const DisplayTotalPrice({super.key});

  @override
  State<DisplayTotalPrice> createState() => _DisplayTotalPriceState();
}

class _DisplayTotalPriceState extends State<DisplayTotalPrice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Welcome!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
