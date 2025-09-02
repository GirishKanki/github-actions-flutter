import 'package:flutter/material.dart';

// ही स्क्रीन शेतकरी गट व समूह निर्मितीची माहिती दर्शवते.

class NondaniScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2), 
      appBar: AppBar(
  title: const Text(
    "नोंदणी",
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
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/farm2.png", 
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

            // पहिला माहिती विभाग: 'शेतकरी गट व समुह निर्माण करण्यासाठी अवलंबण्याची पद्धत'
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
                    'शेतकरी गट व समुह निर्माण करण्यासाठी अवलंबण्याची पद्धत :',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'कृषी विभागाच्या मार्गदर्शक सूचनानुसार २० शेतकऱ्याचा एक गट करावयाचा आहे व अशा ५ ते १० गटांचा एक समुह निर्माण करावयचा आहे. अर्थात समुह निर्माण करताना त्यामध्ये किती गटांनी सहभागी व्हावे यासाठी '
                    'उद्देश'
                    ' हा महत्वाचा घटक राहणार आहे. ज्याद्वारे त्या समूहामध्ये किती गटांनी समविष्ट व्हावे हे ठरू शकते.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5D5145),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // दुसरा विभाग: बुलेट पॉईंट्ससह 'उत्पादन वाढ घडविणे'
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
                    '१. उत्पादन वाढ घडविणेः',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildPoint(
                    'यामध्ये मोठ्या शेतकऱ्यांना मोठ्या प्रक्रिया प्रकल्पामध्ये आर्थिक समस्यांमुळे सहभाग घेणे शक्य होणार नाही, मात्र नवनवीन तंत्रज्ञाचा अवलंब करून उत्पादनात वाढ अनु शकतो. तसेच उत्पादन खर्च कमी करून विक्रीव्यवस्थेसाठी एकत्रित प्रयत्णाद्वारे जास्तीचा लाभ मिळवू शकतो. अशा शेतकर्यांनी सहभाग घ्यावा.',
                  ),
                  SizedBox(height: 20),
                  Text(
                    '२. उत्पादन, प्रक्रिया व मूल्यवर्धन घडविणेः',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildPoint(
                    'शेतकऱ्यांकडे भविष्यात प्रक्रिया प्रकल्प उभारण्याची इच्छा असावी तसेच विपणन व्यवस्थेत नवीन प्रयोग करताना येणारा सुरवातीचा ज्यादाचा खर्च करण्याची तयारी असावी जेणेकरून हे सदस्य शेतकरी सुरवातीपासूनच अशा उद्देशाने काही रक्कम बचत म्हणून दरमहा बँकेमध्ये ठेऊ शकतो.',
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

  // बुलेट पॉईंट्ससाठी एक सहायक विजेट
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
