import 'package:http/http.dart' as http;

class BarcodeIdentifier {
  Future<dynamic> codeIdentifier(String barcode) async {
    final response = await http.get(Uri.parse(
        'https://musicbrainz.org/ws/2/release/?query=barcode:$barcode&fmt=json'));
    return response;
  }
}
