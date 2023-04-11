import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 5;
Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Lottery Wining Number is 5',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(30)),
                      child: x != 5
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.not_interested,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    'Try Again, Your Number is $x',
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.gpp_good_outlined,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    'Congratulations You Have Won Lottery\nYour Number is $x',textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x= random.nextInt(10);
            setState(() {

            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
