import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // String data = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text('detail $id'),
      ),
    );
  }
}
