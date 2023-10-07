import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/controller/global_controller.dart';
import 'package:weatherapp_starter_project/widgets/header_widgets.dart';
class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  //call
  final GlobalController globalController = Get.put(GlobalController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Obx(() => globalController.checkLoading().isTrue?const Center(child: CircularProgressIndicator(),
        ):ListView(
          scrollDirection: Axis.vertical,
          children: [
            HeaderWidget(),
          ],
        )
        ) ,),
    );
  }
}
