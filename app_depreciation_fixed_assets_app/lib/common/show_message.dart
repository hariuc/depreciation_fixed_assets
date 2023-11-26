import 'package:flutter/material.dart';

class ShowMessage {
  static void showSnackBar(
    BuildContext context,
    String title, {
    VoidCallback? onClosed,
    Duration? durationToClose,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
    ));
  }
}
