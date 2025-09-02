

import 'package:flutter/material.dart';

class GatNirmintiInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2), 

      appBar: AppBar(
        title: const Text(
          "गट निर्मिती",
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/farm.jpg',
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Image not found");
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
                    'गटातील सदस्याची निवड',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E), 
                    ),
                  ),
                  SizedBox(height: 10),
                
                  Text(
                    'गट निर्मितीसाठी आवश्यक असलेल्या सदस्यांची निवड प्रक्रिया.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF8B7B6C),
                    ),
                  ),
                  SizedBox(height: 20),
                
                  _buildPoint(' गटातील सदस्याचे नावे जमीन असणे आवश्यक आहे.'),
                  _buildPoint(
                    ' ज्या शेतकऱ्याच्या नावे जमीन आहे अशा शेतकऱ्यांच्या कुटुंबातील व्यक्ती गटाचा सदस्य होण्यास पात्र असेल. परंतु जमीन मालकाने तो कुटुंबातील सदस्य असल्याचे प्रमाणपत्र देणे आवश्यक आहे. जमींन मालक किवा त्याच्या कुटुंबातील सदस्य यापैकी कोणताही एकच व्यक्ति गटामध्ये सदस्य म्हणून पात्र राहील.',
                  ),
                  _buildPoint(
                    ' गटाच्या एकूण संख्येच्या २५% पेक्षा कमी संख्येमध्ये गटाने स्वीकृत केलेले भूमिहीन शेत मजूर व्यक्ति असावे.',
                  ),
                  _buildPoint(
                    ' गटातील सदस्याची निवड करताना वाहतूक दृष्ट्या सोयीच्या असणाऱ्या जवळपासच्या गावामधील शेतकऱ्यांचा विचार करावा जेणेकरून शेतकऱ्यांना त्यांच्या गटाच्या सभेत उपस्थित राहणे सोयीचे होईल.',
                  ),
                  _buildPoint(
                    ' कृषी सेवा पुरवणाऱ्या भूमिहीन शेतमजुरांचा देखील स्वतंत्र गट निर्माण करता येईल.',
                  ),
                ],
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
                    'शेतकऱ्याची गट निर्मितीची पद्धत',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E), 
                    ),
                  ),
                  SizedBox(height: 20),
                 
                  const Text(
                    "गट व सदस्य निश्चित झाल्यानंतर सदस्याच्या विहित नमुन्यातील अर्ज सबंधीताकडून भरून घ्यावा व कृषी सहायकाने "
                    "सर्व २० सदस्याची एकत्र सभा बोलवावी. त्या सभेमध्ये गट निर्माण करण्याचा उद्देश, गटाची भावी वाटचाल या दृष्टीने "
                    "मार्गदर्शन करावे. त्यानंतर गटास त्यांचे अध्यक्ष व सचिव यांची निवड करण्याची मुभा द्यावी.\n\n"
                    "गटाचे पहिल्या सभेचे इतिवृत्त विहित नमुन्यात तयार करावे व त्या इतिवृत्तावर गटातील सर्व सदस्याची स्वाक्षरी घ्यावी. "
                    "नंतर कृषी सहायकाने ते इतिवृत्त प्रमाणित करावे. प्रमाणित इतिवृत्ताच्या प्रतीसह गटाचे अध्यक्ष / सचिव यांनी विहित "
                    "नमुन्यातील प्रस्ताव गटाचे आत्मा अंतर्गत नोंदणीसाठी तालुका कृषी अधिकारी यांच्याकडे सादर करावा.\n\n"
                    "तालुका कृषी अधिकाऱ्याने गटाचे बँकेत खाते उघडण्याबाबत पत्र द्यावे (राष्ट्रीयकृत बँक, सहकारी बँक). संबधीत गटाने "
                    "त्यांच्या सोयीच्या बँकेत खाते उघडावे व नोंदणी प्रमाणपत्रासाठी तालुका कृषी अधिकारी यांच्याकडे विहित नमुन्यातील "
                    "अर्ज सादर करावा.\n\n"
                    "तालुका कृषी अधिकरी यांनी आत्मा अंतर्गत गट नोंदणीचे प्रमाणपत्र गटास द्यावे. "
                    "गटाचे नोंदणी पत्र व बँकेतील खाते यामुळे गटाची ओळख निर्माण होईल.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPoint(String text) {
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
          // मजकूर
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF5D5145), // मजकूर रंग
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
