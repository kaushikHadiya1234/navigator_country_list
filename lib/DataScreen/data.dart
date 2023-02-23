import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  String? d1,image,data;
  DashScreen(this.d1,this.image,this.data);
  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Data")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("${widget.image}"),
              Text("${widget.d1}",style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(height: 10),
              Text("${widget.data}",style: TextStyle(
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
