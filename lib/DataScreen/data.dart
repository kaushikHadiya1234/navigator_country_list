import 'package:flutter/material.dart';
import 'package:navigator/DataScreen/countryModal.dart';

class DashScreen extends StatefulWidget {
  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    CountryModal c1 = ModalRoute.of(context)!.settings.arguments as CountryModal ;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("${c1.l1}")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("${c1.Images}"),
              Text("${c1.l1}",style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(height: 10),
              Text("${c1.d2}",style: TextStyle(
                fontSize: 20,
                wordSpacing: 10,
                color: Colors.black
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
