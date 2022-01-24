import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgetpassword_controller.dart';

class ForgetpasswordView extends GetView<ForgetpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForgetpasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForgetpasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
