import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/colors/app_color.dart';

class Utils {
  static fieldFocusChange(
      FocusNode currentNode, nextNode, BuildContext context) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static snackBar(String title, message) {
    Get.snackbar(title, message, backgroundColor: AppColor.snackColor);
  }

  static toastWarning(String message) {
    Fluttertoast.showToast(msg: message, backgroundColor: Colors.red.shade300);
  }
}
