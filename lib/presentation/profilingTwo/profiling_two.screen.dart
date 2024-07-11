import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profiling_two.controller.dart';

class ProfilingTwoScreen extends GetView<ProfilingTwoController> {
  const ProfilingTwoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilingTwoScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfilingTwoScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
