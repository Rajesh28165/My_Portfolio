import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final String? loadingText;

  const Loading({super.key, this.loadingText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text(
              loadingText ?? "Loading...",
              style:  const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}

class CustomLoader {
  static void showLoader(BuildContext context, {String? text}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Loading(loadingText: text)
    );
  }

  static void hideLoader(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}