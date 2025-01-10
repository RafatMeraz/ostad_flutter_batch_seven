import 'package:flutter/material.dart';

void showSnackBarMessage(BuildContext context, String message,
    [bool isErrorMessage = false]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: isErrorMessage ? Colors.white : null,
        ),
      ),
      backgroundColor: isErrorMessage ? Colors.red : null,
    ),
  );
}
