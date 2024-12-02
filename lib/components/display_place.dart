import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DisplayPlace extends StatefulWidget {
  const DisplayPlace({super.key});

  @override
  State<DisplayPlace> createState() => _DisplayPlaceState();
}

class _DisplayPlaceState extends State<DisplayPlace> {
  //collection for places
  final CollectionReference placeCollection =
      FirebaseFirestore.instance.collection("smartParkCollection");
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
