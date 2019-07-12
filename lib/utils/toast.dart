import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg, {Toast length = Toast.LENGTH_LONG}) {
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: Colors.black.withOpacity(0.5),
    textColor: Colors.white,
    gravity: ToastGravity.BOTTOM,
    toastLength: length
  );
}