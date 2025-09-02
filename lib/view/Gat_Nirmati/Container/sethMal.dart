import 'package:flutter/material.dart';

class ShetiMalScreen extends StatelessWidget {
  const ShetiMalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "शेती मालाचे मूल्यवर्धन",
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
                  'assets/images/fm1.jpg',
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
                    'मूल्यवर्धन: एक मोठी संकल्पना',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 10),

                  const Text(
                    'सद्यस्थितीत विचार करता गट व समुह निर्मितीचा सर्वाधिक फायदा मूल्यवर्धनामुळे शेतकऱ्यांना होऊ शकतो. मूल्यवर्धन हि फार मोठी संकल्पना आहे. बऱ्याचदा केवळ शेतीमालावर प्रक्रिया करणे म्हणजे मूल्यवर्धन असा आपण समज करून घेतो. मात्र मूल्यवर्धन या शब्दामध्येच हि संकल्पना स्पष्ट होते. शेतीमालास शेतकऱ्यास जो प्रचलित पद्धतीने दर मिळणार आहे, त्यामध्ये येनेकेनेप्रकाराने अधिकाची वाढ मिळविणे म्हणजे मूल्यवर्धन होय.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5D5145),
                      height: 1.5,
                    ),
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
