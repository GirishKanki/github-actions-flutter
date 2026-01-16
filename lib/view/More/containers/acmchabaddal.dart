import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AcmchabaddalScreen extends StatelessWidget {
  const AcmchabaddalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "आमच्या बद्दल",
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

            /// Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/farmer3.png',
                  // height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Image not found");
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// ATMA Intro
            _buildCard(
              title: 'ATMA (कृषी तंत्रज्ञान व्यवस्थापन संस्था)',
              content:
                  'ATMA ही भारत सरकारची जिल्हास्तरीय योजना आहे. '
                  'शेतकऱ्यांपर्यंत आधुनिक शेती तंत्रज्ञान, प्रशिक्षण, संशोधन आणि बाजार माहिती '
                  'पोहोचवणे हा या योजनेचा मुख्य उद्देश आहे. '
                  'ही योजना शेतकरी-केंद्रित, गरजेनुसार आणि विकेंद्रीत पद्धतीने राबवली जाते.',
            ),

            /// Objectives
            _buildCard(
              title: 'ATMA चे प्रमुख उद्दिष्ट',
              children: [
                _buildPoint(
                    'आधुनिक व स्थानिक गरजेनुसार शेती तंत्रज्ञानाचा प्रसार'),
                _buildPoint(
                    'शेती उत्पादनक्षमता व शेतकऱ्यांचे उत्पन्न वाढवणे'),
                _buildPoint(
                    'संशोधन संस्था, कृषी विभाग व शेतकरी यांच्यात दुवा निर्माण करणे'),
                _buildPoint(
                    'शेतकऱ्यांचा निर्णय प्रक्रियेत सक्रिय सहभाग वाढवणे'),
              ],
            ),

            /// Gat & Samuh from PDF
            _buildCard(
              title: 'ATMA अंतर्गत गट व समूह (Gat / Samuh)',
              content:
                  'ATMA अंतर्गत शेतकऱ्यांचे गट व समूह तयार करून '
                  'सामूहिक शेती विकासाला चालना दिली जाते. '
                  'गटामध्ये साधारण 10 ते 20 शेतकरी असतात. '
                  'हे गट शेती नियोजन, प्रशिक्षण, प्रात्यक्षिके व लाभ योजनांसाठी वापरले जातात.',
            ),

            _buildCard(
              title: 'गट / समूह तयार करण्याचे फायदे',
              children: [
                _buildPoint(
                    'शेतकऱ्यांना प्रशिक्षण, प्रात्यक्षिके व अभ्यास दौऱ्याचा लाभ'),
                _buildPoint(
                    'योजना, अनुदान व शासकीय मदत मिळण्यास सुलभता'),
                _buildPoint(
                    'सामूहिक खरेदी व विक्रीमुळे खर्च कमी व नफा वाढ'),
                _buildPoint(
                    'नेतृत्व, व्यवस्थापन व निर्णय क्षमता वाढ'),
              ],
            ),

            /// Activities
            _buildCard(
              title: 'ATMA अंतर्गत प्रमुख उपक्रम',
              children: [
                _buildPoint(
                    'शेतकरी प्रशिक्षण व प्रात्यक्षिके (पीक, पशुपालन, फलोत्पादन)'),
                _buildPoint(
                    'हवामान-स्मार्ट व सेंद्रिय शेतीचा प्रसार'),
                _buildPoint(
                    'FIG, SHG व FPO निर्मिती व बळकटीकरण'),
                _buildPoint(
                    'काढणीपश्चात व्यवस्थापन, प्रक्रिया व बाजार जोडणी'),
              ],
            ),

            /// Maharashtra Focus
            _buildCard(
              title: 'महाराष्ट्रातील ATMA ची भूमिका',
              children: [
                _buildPoint(
                    'दुष्काळग्रस्त भागासाठी पाणी कार्यक्षम शेती पद्धती'),
                _buildPoint(
                    'ठिबक व तुषार सिंचनाचा प्रसार'),
                _buildPoint(
                    'पीक विविधीकरण – कडधान्ये, तेलबिया, फळपिके'),
                _buildPoint(
                    'पर्जन्यमानावर आधारित शेतीसाठी मार्गदर्शन'),
              ],
            ),

            /// Contact
            _buildCard(
              title: 'अधिक माहिती व संपर्क',
              children: [
                _buildLink(
                  icon: Icons.public,
                  label: 'वेबसाइट',
                  value: 'https://agricoop.gov.in',
                ),
                const SizedBox(height: 8),
                _buildSimpleText(
                    'आपल्या जिल्ह्यातील कृषी अधिकारी / ATMA कार्यालयाशी संपर्क साधा.'),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// Reusable Card
  Widget _buildCard({
    required String title,
    String? content,
    List<Widget>? children,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A4E4E),
            ),
          ),
          const SizedBox(height: 10),
          if (content != null)
            Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF5D5145),
                height: 1.5,
              ),
            ),
          if (children != null) ...children,
        ],
      ),
    );
  }

  Widget _buildPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF5D5145),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLink({
    required IconData icon,
    required String label,
    required String value,
  }) {
    final Uri uri = Uri.parse(value);
    return InkWell(
      onTap: () async {
        if (!await launchUrl(uri)) {
          throw Exception('Could not launch $uri');
        }
      },
      child: Row(
        children: [
          Icon(icon, color: Colors.green),
          const SizedBox(width: 10),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A4E4E),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimpleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Color(0xFF5D5145),
      ),
    );
  }
}
