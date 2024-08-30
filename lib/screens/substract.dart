import 'package:flutter/material.dart';

class SubstractScreen extends StatelessWidget {
  const SubstractScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text("Go to Home"),
      ),
    );
  }
}
