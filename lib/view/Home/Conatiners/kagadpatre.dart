import 'package:flutter/material.dart';

class KagadpatreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "गट नोंदणी कागदपत्रे",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/farmer3.png",
                  errorBuilder: (context, error, stackTrace) {
                    return const Text(
                      "Image not found",
                      textAlign: TextAlign.center,
                    );
                  },
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'गटाच्या नोंदणीसाठी लागणारे आवश्यक कागदपत्रे :',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6A4E4E),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  _buildDocumentItem(
                    ' सदस्याचा गटामध्ये सहभागी होण्याचा अर्ज.',
                  ),
                  _buildDocumentItem(
                    ' लाभार्थ्याचे ७/१२, ८अ चे उतारे ७/१२, ८अ नसल्यास जमीन मालकाच्या कुटुंबातील सदस्य असल्याचे प्रमाणपत्र.',
                  ),
                  _buildDocumentItem(
                    ' सदस्याचा पहिल्या सभेचा कृषी सहायकांनी प्रामाणिक केलेले विहित नमुन्यातील इतिवृत्त.',
                  ),
                  _buildDocumentItem(' गटाचे बँकेची पासबुक ची झेरॉक्स.'),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8.0, top: 6.0),
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: Color(0xFF6A4E4E),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF5D5145),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
