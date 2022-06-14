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
  int bottomNavBarCurrentItem = 0;
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
            child: bottomNavBarCurrentItem == 0
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.lightGreen,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print('btn clicked');
                            setState(() {
                              btnLabel = "Now Clicked!!";
                            });
                          },
                          child: Text(btnLabel),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print('btn clicked');
                            setState(() {
                              btnLabel = "Now Clicked!!";
                            });
                          },
                          child: Text(btnLabel),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.purple,
                              ),
                              onPressed: () {
                                print('btn clicked');
                                setState(() {
                                  btnLabel = "Now Clicked!!";
                                });
                              },
                              child: Text(btnLabel),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                print('btn clicked');
                                setState(() {
                                  btnLabel = "Now Clicked!!";
                                });
                              },
                              child: Text(btnLabel),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ))
                : Container(
                    color: Colors.pink,
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Settings page"),
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9u6_4OALQDJaY9EPmzp8E-35kSySl_vWqmg&usqp=CAU'),
                        Image.asset('images/sea.jpg')
                      ],
                    ))),
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
          currentIndex: bottomNavBarCurrentItem,
          onTap: (int clickedIndex) {
            setState(() {
              bottomNavBarCurrentItem = clickedIndex;
            });
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget{
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
      child: const Text("Second Page"),
    );
  }
}