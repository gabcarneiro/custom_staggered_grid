import 'package:flutter/material.dart';

class FeatureCPage extends StatelessWidget {
  const FeatureCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature C')),
      body: const Center(
        child: Text('This is the Feature C page!'),
      ),
    );
  }
}
