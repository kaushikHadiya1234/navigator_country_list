import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    List f = ModalRoute.of(context)!.settings.arguments as List ;
    //  List f = [l1[e.key],Images[e.key],d2[e.key]];
     String country = f[0];
     String images = f[1];
     String d2 = f[2];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("$country")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("$images"),
              Text("$country",style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(height: 10),
              Text("$d2",style: TextStyle(
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
