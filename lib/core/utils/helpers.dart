import 'package:flutter/material.dart';

class InputConverter {
  int stringToUnsignedInteger(String str) {
    final integer = int.tryParse(str);
    if (integer == null || integer < 0) {
      throw FormatException();
    }
    return integer;
  }
}

class SnackbarHelper {
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showSnackbar(String message, {Color? color}) {
    final messenger = scaffoldMessengerKey.currentState;
    if (messenger != null) {
      messenger.showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color ?? Colors.black87,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}
