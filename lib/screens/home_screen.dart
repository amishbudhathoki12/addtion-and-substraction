import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newadditon/screens/add_screen.dart';
import 'package:newadditon/screens/substract.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => AddScreen(),
                  ),
                );
              },
              child: Text("Get Addition"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => SubstractScreen(),
                  ),
                );
              },
              child: Text("Get Substraction"),
            ),
          ),
        ],
      ),
    );
  }
}
