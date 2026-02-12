import 'dart:convert';
import 'package:album_collector_frontend/models/model_final_response.dart';
import 'package:album_collector_frontend/pages/status_pages/error_page.dart';
import 'package:album_collector_frontend/pages/status_pages/sucessful_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BarcodeIdentifier {
  Future<dynamic> codeIdentifier(String barcode, BuildContext context) async {
    final navigator = Navigator.of(context);
    while (true) {
      try {
        final response = await http
            .get(
              Uri.parse(
                  'https://musicbrainz.org/ws/2/release/?query=barcode:$barcode&fmt=json'),
            )
            .timeout(const Duration(seconds: 15));

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);

          final album = ModelFinalResponse.fromJson(data);

          if (album.count == 0) {
            navigator.pushReplacement(
                MaterialPageRoute(builder: (context) => const ErrorPage()));
          } else {
            navigator.pushReplacement(MaterialPageRoute(
                builder: (context) => SucessfulPage(album: album)));
          }
          break;
        }

        debugPrint(
            'HTTP error: ${response.statusCode} - Retrying in 2 seconds...');
        await Future.delayed(const Duration(seconds: 2));
      } catch (e) {
        debugPrint("Error: $e - Retrying in 2 seconds...");
        await Future.delayed(const Duration(seconds: 2));
      }
    }
  }
}
