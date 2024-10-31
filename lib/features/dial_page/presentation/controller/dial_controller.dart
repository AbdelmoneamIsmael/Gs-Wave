import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:call_log/call_log.dart';

class DialController extends GetxController {
  TextEditingController dialController = TextEditingController();

  @override
  void onInit() {
    getCallLog();
    super.onInit();
  }

  @override
  void dispose() {
    dialController.dispose();
    super.dispose();
  }

  void subString() {
    if (dialController.text.isNotEmpty) {
      dialController.text =
          dialController.text.substring(0, dialController.text.length - 1);

      update();
    }
  }

  void getCallLog() async {
    Iterable<CallLogEntry> list = await CallLog.get();

  }
}
