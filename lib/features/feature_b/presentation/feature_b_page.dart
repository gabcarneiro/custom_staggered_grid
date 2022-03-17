import 'package:flutter/material.dart';

class FeatureBPage extends StatelessWidget {
  const FeatureBPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature B')),
      body: const Center(
        child: Text('This is the Feature B page!'),
      ),
    );
  }
}
