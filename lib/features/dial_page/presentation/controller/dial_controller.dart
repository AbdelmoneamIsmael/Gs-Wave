import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:call_log/call_log.dart';

class DialController extends GetxController {
  TextEditingController dialController = TextEditingController();
  bool isLoding = false;
  List<CallLogEntry> callHestory = [];
  List<CallLogEntry> missingCalls = [];
  int selectedPage = 0;

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
    isLoding = true;
    update();
    try {
      Iterable<CallLogEntry> list = await CallLog.get();

      callHestory = list.toList();

      missingCalls = callHestory
          .where((element) => element.callType == CallType.missed)
          .toList();
      isLoding = false;
      update();
    } catch (e) {
      isLoding = false;
      update();
    }
  }

  void chageIndex(int index) {
    selectedPage = index; 
    update();
  }
}
