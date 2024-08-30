import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String result = "Add the numbers to get the result?";

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  void addtion() {
    // int number1 = 20;
    // int number2 = 40;
    // int sum = number1 + number2;
    // print(sum);
    int number1 = int.parse(controller1.text);
    int number2 = int.parse(controller2.text);
    int sum = number1 + number2;
    // print(sum);
    // result = sum.toString();
    result = "The sum is: $sum";
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: TextField(
                  controller: controller1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Num1",
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              const Icon(Icons.add),
              SizedBox(
                width: 100,
                child: TextField(
                  controller: controller2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Num2",
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 150,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  addtion();
                });
              },
              child: const Text("Add"),
            ),
          ),
          const SizedBox(height: 30),
          Text(result),
        ],
      ),
    );
  }
}
