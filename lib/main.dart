import 'package:flutter/material.dart';
import 'package:navigator/DataScreen/country_list.dart';
import 'package:navigator/DataScreen/data.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes:{
        '/': (context) => CountryList(),
       'DashScreen':(context) => DashScreen(),
     }
    ),
  );
}
