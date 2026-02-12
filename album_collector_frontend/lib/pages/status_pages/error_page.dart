import 'package:album_collector_frontend/pages/scan_page.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline_rounded,
            color: Colors.red,
            size: 64,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Data not found for the scanable code, we recommend you retry the scan or scan another barcode related to the same album",
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: const Text("Retry Scan"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ScanPage()));
              }),
        ],
      )),
    );
  }
}
