import 'package:flutter/material.dart';

class ShetkariUtpadanScreen extends StatelessWidget {
  const ShetkariUtpadanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "शेती उत्पादन खर्च कमी करणे",
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
                  'assets/images/fm3.jpg',
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
                    'शेतीमाल उत्पादनासाठी प्रामुख्याने खालील बाबी या उत्पादन खर्चामध्ये येतात',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 10),

                  _buildDocumentItem('बियाणे.'),
                  _buildDocumentItem('खते.'),
                  _buildDocumentItem('कीटकनाशके.'),
                  _buildDocumentItem('शेती उपयोगी औजारे.'),
                  _buildDocumentItem('सिंचन सुविधा.'),
                  _buildDocumentItem('मजुरी.'),
                  _buildDocumentItem('विक्रीव्यवस्थेमधील खर्च.'),
                  const SizedBox(height: 15),

                  const Text(
                    'सद्यस्थितीत विचार करता उपरोक्त सर्वच घटकांमध्ये दिवसेंदिवस खर्चवाढ होत आहे. शेतकरी हा बियाणे, खते, औषधे, सिंचन सुविधा (पाईप, तुषार, ठिबक इ.) या बाजारामधून खरेदी करत असतो. यामधील काही खतांचा अपवाद वगळता जवळपास सर्वच निविष्ठा या खाजगी कंपनी/विक्रेते यांच्या मार्फत घ्याव्या लागत आहेत. त्यामध्ये असलेल्या कमिशन पद्धतीमुळे शेतकऱ्याच्या हातात निविष्ठा येईपर्यंत त्यांच्या उत्पादन मूल्यापेक्षा कितीतरी अधिक पणन व्यवस्थेमधील जादाचा अधिभार सोसावा लागतो. मात्र समूहामार्फत या निविष्ठांची खरेदी सरळ उत्पादकामार्फत करणे सुरु केल्यास निश्चितच व्यापाऱ्यांचे कमिशन रक्कम कमी होऊन या निविष्ठा शेतकऱ्यांना कमी रकमेत उपलब्ध होऊ शकतील.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5D5145),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    'उत्पादन खर्चामध्ये बचत होण्यासाठी गटाचा फायदा खालील नमूद बाबीमध्ये सुद्धा होऊ शकतो:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildDocumentItem(
                    'तुषार सिंचनाचे संच गटामध्ये प्रत्येक शेतकऱ्यांकडे न घेता २ ते ३ संच ठेवून ते आपापसात गरजेप्रमाणे वापरणे.',
                  ),
                  _buildDocumentItem(
                    'संरक्षित ओलीतासाठी डीझेल/पेट्रोकेरोसीन पंप.',
                  ),
                  _buildDocumentItem('एकत्रित विक्री व्यवस्था करणे.'),
                  _buildDocumentItem(
                    'ग्रामबिजोत्पादन कार्यक्रमाद्वारे गटाची बियाणे गरज भागविणे.',
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
            decoration: const BoxDecoration(
              color: Color(0xFF6A4E4E),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
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
