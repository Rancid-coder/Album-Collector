import 'package:flutter/material.dart';
import 'package:album_collector_frontend/services/barcode_identifier/barcode_identifier.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  bool _isProcessing = false;

  void _handleBarcode(BarcodeCapture barcodes) async {
    if (_isProcessing) return;
    if (!mounted) return;

    setState(() {
      _isProcessing = true;
    });

    final code = barcodes.barcodes.first.rawValue ?? "";

    await BarcodeIdentifier().codeIdentifier(code, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scanner Mode')),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              onDetect: _handleBarcode,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                color: const Color.fromRGBO(0, 0, 0, 0.4),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Center(
                            child: Text(
                      'Scan Bar Code',
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.white),
                    ))),
                  ],
                ),
              ),
            ),
            if (_isProcessing)
              Container(
                color: Colors.black87,
                child: const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(color: Colors.white),
                      SizedBox(height: 16),
                      Text(
                        'Processing...',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
