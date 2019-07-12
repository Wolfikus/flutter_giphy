import 'package:flutter_giphy/utils/toast.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LatinInputFormatter extends TextInputFormatter {
  static final regexp = RegExp(r'^[A-Za-z0-9 ]+$');
  final void Function() onTypeInvalidSymbol;

  LatinInputFormatter({this.onTypeInvalidSymbol = _showWarnToast});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) return newValue;
    if (!regexp.hasMatch(newValue.text)) {
      onTypeInvalidSymbol();
      return oldValue;
    } else {
      return newValue;
    }
  }
}

DateTime _latestToastShow;

void _showWarnToast() {
  var shouldShow = false;

  var now = DateTime.now();
  if (_latestToastShow == null) {
    shouldShow = true;
  } else {
    shouldShow =
        _latestToastShow.add(Duration(milliseconds: 1000)).isBefore(now);
  }

  if (shouldShow) {
    showToast(
      'Only latin symbols allowed',
      length: Toast.LENGTH_SHORT,
    );
    _latestToastShow = now;
  }
}
