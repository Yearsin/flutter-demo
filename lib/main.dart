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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 200.0,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: const [
                  Text('title', style: TextStyle(fontSize: 28.0, color: Colors.black87)),
                  Text('sdfsfsfsdfsdfsdsdfsfsfsdfsdfsdsdfsfsfsdfsdfsdsdfsfsfsdfsdfsdsdfsfsfsdfsdfsdsdfsfsfsdfsdfsdsdfsfsfsdfsdfsd', textAlign: TextAlign.center, softWrap: true, style: TextStyle(fontSize: 14, color: Colors.black38)),
                ],
              ),
            ),
            Expanded(child: Image.asset('images/1.png')),
          ],
        ),
        // 使用flex使图片突出
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Expanded(child: Image.asset('images/1.png')),
        //     Expanded(flex: 2, child: Image.asset('images/2.png')),
        //     Expanded(child: Image.asset('images/3.png'))
        //   ],
        // ),
        // 星星
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
