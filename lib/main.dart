import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basics',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Simple App'),
      //   ),
      //   body: Center(
      //       child: ElevatedButton(
      //     onPressed: () {
      //       print('elevated btn clicked');
      //     },
      //     child: Text('Elevated Button'),
      //   )),
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         label: 'Settings',
      //       )
      //     ],
      //   ),
      // ),
      home: SomeWidget(),
    );
  }
}

class SomeWidget extends StatefulWidget {
  const SomeWidget({Key? key}) : super(key: key);
  @override
  State<SomeWidget> createState() => SomeWidgetState();
}

class SomeWidgetState extends State<SomeWidget> {
  String btnLabel = "Unclicked";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basics',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple App'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            print('elevated btn clicked');
          },
          child: Text(btnLabel),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            )
          ],
        ),
      ),
    );
  }
}
