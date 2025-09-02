import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ArjachaNamunaScreen extends StatefulWidget {
  const ArjachaNamunaScreen({super.key});

  @override
  State<ArjachaNamunaScreen> createState() => _ArjachaNamunaScreenState();
}

class _ArjachaNamunaScreenState extends State<ArjachaNamunaScreen> {
  final String assetPDF = "assets/pdfs/Ashitosh_Resume_Update.pdf";

  /// Function to save asset PDF to storage and open externally
  Future<void> _downloadPDF(BuildContext context) async {
    try {
      // Load PDF from assets
      final byteData = await rootBundle.load(assetPDF);

      // Get app documents directory
      final directory = await getApplicationDocumentsDirectory();
      final filePath = "${directory.path}/Ashitosh_Resume_Update.pdf";

      // Save the file
      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      // Open with external PDF app
      await OpenFile.open(filePath);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("PDF डाउनलोड करताना अडचण आली: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F2F9),
      appBar: AppBar(
  title: const Text(
    "अर्जाचा नमुना",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20, // optional
    ),
  ),
  centerTitle: true,
  backgroundColor: Colors.green,
  iconTheme: const IconThemeData(color: Colors.white),
),

      body: Column(
        children: [
          // Intro Text
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'शेतकरी बचत गट आणि अर्जाचा नमुना',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A4E4E),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'शेतकरी बचत गटात सहभागी होण्यासाठी या नमुन्याचा वापर करू शकता. '
                  'यामुळे तुम्हाला सरकारी योजनांचा लाभ मिळवण्यात मदत होईल. '
                  'गटात सामील होऊन तुम्ही शेतीचे उत्पादन आणि आर्थिक प्रगती करू शकता.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D5145),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),

          // Expanded PDF Viewer
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SfPdfViewer.asset(assetPDF),
            ),
          ),

          // Download Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () => _downloadPDF(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.download, color: Colors.white),
              label: const Text(
                "डाउनलोड",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
