import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
      ),
      body: Center(
        child: Text('Welcome to the Index Screen!'),
      ),
    );
  }
}
