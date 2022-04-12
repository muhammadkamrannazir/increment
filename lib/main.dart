// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Increment());

// ignore: must_be_immutable
class Increment extends StatelessWidget {
  Increment({Key? key}) : super(key: key);
  var count = 0.obs;
  var counts = 0.obs;
  void a() {
    count++;
  }

  void b() {
    counts--; 
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Obx(
        () => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  'Counter value is $count',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text('Increment a'),
                    onPressed: () {
                      a();
                    }),
                Text(
                  'Counter value is $count',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text('Increment b'),
                    onPressed: () {
                      b();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
