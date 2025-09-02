import 'package:flutter/material.dart';

// हा वर्ग प्रस्तावनेबद्दल माहिती दर्शवितो.
class PrastavanaPage extends StatelessWidget {
  const PrastavanaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
  title: const Text(
    "प्रस्तावना",
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
            const SizedBox(height: 20),

            // गोलाकार कडा असलेली प्रतिमा
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // प्रतिमेला सर्व बाजूंनी जागा देण्यासाठी
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/fm5.jpg',
                  errorBuilder: (context, error, stackTrace) {
                  return const Text("Image not found");},
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // शीर्षक आणि मजकूर एकाच कंटेनरमध्ये
            _buildInfoContainer(
              title: 'सध्याची शेतीची स्थिती: ',
              content:
                  'राज्यातील शेती क्षेत्राची धारण क्षमता वाढत्या लोकसंख्येमुळे दिवसेंदिवस कमी होत चाललेली आहे. परिणाम स्वरुप छोट्या आकाराच्या क्षेत्रामध्ये शेती करणे शेतकऱ्यांना अत्यंत जिकरीचे बनत चालले आहे. छोट्या शेती क्षेत्रामुळे शेती उत्पादनाचा खर्च वाढत जातो. मात्र त्या तुलनेत शेती मालाला योग्य बाजार न मिळाल्यामुळे शेतकरी हा आर्थिक विवंचनेत येत राहिला. तसेच यांत्रिकीकरणामुळे होत असलेल्या प्रगतीमुळे अद्ययावत तंत्रज्ञानावर आधारित सुधारित यंत्र सामग्री छोट्या शेतकऱ्यांना घेणे आर्थिक दृष्ट्या परवडत नाही.',
            ),
            const SizedBox(height: 20),
            _buildInfoContainer(
              title: 'गट शेतीची आवश्यकता',
              content:
                  'या सर्व पार्श्वभूमीवर राज्याने गट समूहावर आधारित कृषी विस्ताराच्या प्रकल्पाची अंमलबजावणी करण्याच्या सूचना निर्गमित केलेल्या आहेत. त्यामुळे समान उद्देश या धर्तीवर आधारित शेतकऱ्यांचे छोटे गट तयार करून अशा गटाना समूहामध्ये एकत्रित करून शेती केल्यास समुह शेती निश्चित किफायतशीर राहणार आहे.',
            ),
            const SizedBox(height: 20),
            _buildInfoContainer(
              title: 'गट शेतीचे फायदे',
              content:
                  'त्यामुळे उत्पादन खर्चात बचत, आधुनिक तंत्रज्ञानाचा प्रभावी वापर त्याच बरोबर शेतकऱ्यांची वेळेत देखील बचत होणार आहे. परिणाम स्वरूप गट पद्धतीवर आधारित शेतीमुळे शेतकऱ्यांना निश्चितच चांगला दिलासा मिळणार आहे.',
            ),
            const SizedBox(height: 20),
            _buildInfoContainer(
              title: 'प्रकल्पाची अंमलबजावणी',
              content:
                  'त्यामुळे पुणे जिल्ह्यात यापुढे गट पद्धतीवर आधारित कृषी विस्तार प्रकल्पाची अंमलबजावणी करण्याच्या दृष्टीने गट व समूहाची निर्मिती करण्यासाठी मार्गदर्शक सूचना करणे कामी या कार्यालयाचे कृषी उपसंचालक श्री. सुनिल बोरकर यांनी विशेष परिश्रम घेतलेले आहे. तरी या मार्गदर्शक सूचनांचा वापर करण्यात येऊन योजनांची यशस्वी अंमलबजावणी करण्यात यावी हि अपेक्षा.',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // हा विजेट शीर्षक आणि मजकूर असलेला कंटेनर तयार करतो
  Widget _buildInfoContainer({required String title, required String content}) {
    return Container(
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
          // मुख्य शीर्षक
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A4E4E),
            ),
          ),
          const SizedBox(height: 10),
          // मजकूर
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF5D5145),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
