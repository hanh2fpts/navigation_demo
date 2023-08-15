import 'package:flutter/material.dart';
import 'package:navigation_demo/page1.dart';
import 'package:navigation_demo/route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) => generateRoutes(settings),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1())),
            icon: Container(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.amber),
                    fixedSize: MaterialStateProperty.all(const Size(250, 50))),
                onPressed: () => Navigator.of(context)
                    .pushNamed(Page1.routeName, arguments: 'du lieu tu trang main'),
                child: const Text('Page1')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed(Page2.routeName),
                child: const Text('Page2')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed(Page3.routeName),
                child: const Text('Page3')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed(Page4.routeName),
                child: const Text('Page4')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed(Page5.routeName),
                child: const Text('Page5')),
          ],
        ),
      ),
    );
  }
}
