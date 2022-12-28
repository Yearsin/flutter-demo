import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('标题'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset('images/1.png')),
            Expanded(flex: 2, child: Image.asset('images/2.png')),
            Expanded(child: Image.asset('images/3.png'))
          ],
        ),
        // Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Icon(Icons.star, color: Colors.green[500]),
        //     Icon(Icons.star, color: Colors.green[500]),
        //     Icon(Icons.star, color: Colors.green[500]),
        //     const Icon(Icons.star, color: Colors.black),
        //     const Icon(Icons.star, color: Colors.black),
        //   ]
        // ),
        // 间隔均匀
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Text('1'),
        //     Expanded(child: Image.asset('images/1.png', fit: BoxFit.cover)),
        //     Text('3'),
        //   ]
        // )
      )
    );
  }
}
