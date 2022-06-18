import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Second Page'),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  print('back nav btn clicked');
                  Navigator.of(context).pop();
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
