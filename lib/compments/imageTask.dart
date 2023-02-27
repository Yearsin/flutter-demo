import 'package:flutter/cupertino.dart';

class ImageTask extends StatelessWidget {
  const ImageTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('images/2.png'),
    );
  }
}