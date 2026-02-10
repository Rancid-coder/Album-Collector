import 'package:album_collector_frontend/pages/scan_page.dart';
import 'package:flutter/material.dart';

class SucessfulPage extends StatefulWidget {
  final String data;

  const SucessfulPage(this.data, {super.key});

  @override
  State<SucessfulPage> createState() => _SucessfulPageState();
}

class _SucessfulPageState extends State<SucessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.verified_outlined,
            color: Colors.green,
            size: 64,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Album Found : ${widget.data}'),
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
