import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neoamphoric/app/modules/home/views/view/pages/Login/Login.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
