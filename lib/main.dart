import 'package:flutter/material.dart';

void main() {
  runApp(const MySimpleApp());
}

class MySimpleApp extends StatelessWidget {
  const MySimpleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Simple User Interface',
          style: TextStyle(
            color: Color(0xFFDDDDDD),
          ),
          ),
          backgroundColor: const Color(0xFF4F1787),
        ),
        backgroundColor: const Color(0xFF180161),
        body: const MyHomePage(),
      ),
    );
  }
}

// Simple UI Homepage
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to your Simple Homepage!',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFFDDDDDD),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                print('Button executd successfully.');
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xFF180161),
                  fontWeight: FontWeight.bold,
                ),
                )),
          const SizedBox(
            height: 25,
          ),
          Image.network(
            'https://images.pexels.com/photos/158063/bellingrath-gardens-alabama-landscape-scenic-158063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          )
        ],
      ),
    );
  }
}
