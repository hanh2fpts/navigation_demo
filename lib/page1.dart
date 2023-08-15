import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final String data;
  const Page1({super.key, required this.data});
  static const String routeName = 'page1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(), child: const Text('Go back')),
            ],
          ),
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const String routeName = 'page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(), child: const Text('Go back')),
        ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});
  static const String routeName = 'page3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(), child: const Text('Go back')),
        ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});
  static const String routeName = 'page4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(), child: const Text('Go back')),
        ));
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});
  static const String routeName = 'page5';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(), child: const Text('Go back')),
        ));
  }
}
