// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('firebase sns login'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
