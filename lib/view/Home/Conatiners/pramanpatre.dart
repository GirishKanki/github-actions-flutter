import 'package:flutter/material.dart';

// ही स्क्रीन गट प्रमाणपत्राची माहिती दर्शवते.

class PramanpatreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
  title: const Text(
    "गट प्रमाणपत्र",
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
           
            // संदर्भ कोडमध्ये असलेल्या इमेजप्रमाणेच एक इमेज सेक्शन
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/farm4.jpg", 
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Image not found", textAlign: TextAlign.center);
                  },
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            // शीर्षक आणि कागदपत्रे दोन्ही एकाच कंटेनरमध्ये
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
                    'गट प्रमाणपत्र',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6A4E4E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10), // शीर्षकानंतर थोडे अंतर
                  _buildDocumentItem(' गटाने विहित नमुन्यातील प्रस्ताव तालुका कृषी अधिकारी कार्यालयास सपुर्त करणे.'),
                  _buildDocumentItem(' बँकेत खाते उघडण्याबाबतचे व गट नोंदणी बाबदची पूर्व संमती तालुका कृषी अधिकारी यांनी द्यावी.'),
                  _buildDocumentItem(' गटाने बँकेत खाते उघडल्यानंतर तालुका कृषी अधिकारी यांना बँक खात्याच्या पासबुकची झेरॉक्स देण्यात यावी.'),
                  _buildDocumentItem(' बँक खात्याची पासबुक झेरॉक्स प्राप्त झाल्यानंतर तालुका कृषी अधिकारी यांनी सदर गटाची आत्मा अंतर्गत नोंदणी करावी व त्यांना विहित प्रमाणातील नोंदणी प्रमाणपत्र प्रदान करावे.'),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // कागदपत्रे दर्शवण्यासाठी सहायक विजेट
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
