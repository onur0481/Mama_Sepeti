import 'package:flutter/material.dart';
import 'package:mama_sepeti/gonderi_karti.dart';

class Akis extends StatefulWidget {
  @override
  _AkisState createState() => _AkisState();
}

class _AkisState extends State<Akis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          "Akış",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.green[400],
                  ],
                ),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 10.0,
              ),
              GonderiKarti(),
              GonderiKarti(),
              GonderiKarti(),
              GonderiKarti(),
            ],
          ),
        ],
      ),
    );
  }
}
