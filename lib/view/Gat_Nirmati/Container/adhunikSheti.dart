import 'package:flutter/material.dart';

class AadhunikTantradnyanScreen extends StatelessWidget {
  const AadhunikTantradnyanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "आधुनिक उत्पादन तंत्राचा अवलंब",
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
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/fm2.jpg',
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Image not found");
                  },
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'आधुनिक तंत्रज्ञानाचा अवलंब',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'व्यक्तिगतरित्या शेतकऱ्याकडे असणारी अपुरी माहिती, अपुरा वेळ व निधीची कमतरता यामुळे शेतकरी नवनवीन तंत्रज्ञान आत्मसात करण्यासाठी कृषी विद्यापीठ, देशपातळीवरील संशोधन केंद्र येथे जाऊ शकत नाही.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5D5145),
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 12),

                      Text(
                        'परिणामी, पारंपरिक पद्धतीने शेती करण्याकडेच त्याचा कल राहतो व त्यामुळे त्याच्या प्रगतीचा वेग मंदावतो. तसेच, देशाच्या कृषी विकासाचा दरदेखील पुढे जात नाही.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5D5145),
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 12),

                      Text(
                        'मात्र शेतकरी गटाने एकत्र आल्यास शेतीशाळा आणि सहली या माध्यमातून नवनवीन तंत्रज्ञान जाणून घेऊ शकतो व गटामध्ये त्याची अंमलबजावणी करू शकतो.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5D5145),
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 12),

                      Text(
                        'सद्यस्थितीत शेतकरी गटाने एकत्र येऊन शेडनेट हाउसची उभारणी करत आहेत व एकत्र मालाचे मार्केटिंग करत आहेत. ही बाब केवळ गटामुळेच घडत आहे, हे स्वीकारावेच लागेल.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5D5145),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
