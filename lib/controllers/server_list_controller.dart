import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServerListController extends GetxController with GetSingleTickerProviderStateMixin{

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'All Location'),
    const Tab(text: 'Streaming & Gaming'),

  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  RxInt currentIndex = 0.obs;
  RxInt streamCurrentIndex = 0.obs;


}