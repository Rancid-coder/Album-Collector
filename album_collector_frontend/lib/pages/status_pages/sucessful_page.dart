import 'package:album_collector_frontend/models/model_final_response.dart';
import 'package:album_collector_frontend/pages/library_page.dart';
import 'package:album_collector_frontend/pages/scan_page.dart';
import 'package:flutter/material.dart';

class SucessfulPage extends StatefulWidget {
  final ModelFinalResponse album;

  const SucessfulPage({super.key, required this.album});

  @override
  State<SucessfulPage> createState() => _SucessfulPageState();
}

class _SucessfulPageState extends State<SucessfulPage> {
  String get artistsName {
    String result = '';
    for (var a in widget.album.releases[0].artistCredit) {
      result += a.name;
      if (a.joinphrase != null && a.joinphrase!.isNotEmpty) {
        result += a.joinphrase!;
      }
    }
    return result;
  }

  String get albumTitle {
    return widget.album.releases[0].title;
  }

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
          Text(
            'Album Scanned: $albumTitle by $artistsName',
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: const Text("Add To Library"),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LibraryPage()));
              }),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              child: const Text("Scan another code"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ScanPage()));
              }),
        ],
      )),
    );
  }
}
