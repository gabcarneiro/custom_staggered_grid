import 'package:flutter/material.dart';

class FeatureAPage extends StatelessWidget {
  const FeatureAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature A')),
      body: const Center(
        child: Text('This is the Feature A page!'),
      ),
    );
  }
}
