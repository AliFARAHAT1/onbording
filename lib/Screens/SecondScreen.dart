import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  List<String> names = ["Karim", "Ahmeed"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.tealAccent,
              child: Text(
                names[index],
                style: TextStyle(
                  fontSize: 33,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
