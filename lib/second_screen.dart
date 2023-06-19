import 'package:flutter/material.dart';

class second_page extends StatelessWidget {
  const second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Text('Congratulation! you reached 10!'),
      ),
    );
  }
}
