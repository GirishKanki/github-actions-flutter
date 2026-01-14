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
          "आमच्या बद्दल ",
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
                  'assets/images/Averta.jpg',
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
                    'आमच्या बद्दल: ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'अवर्ता स्ट्रेटेजी ही माहिती तंत्रज्ञान क्षेत्रातील एक नामवंत कंपनी आहे. सामाजिक क्षेत्राला तसेच शेतकरी बांधवांना या मोबाईल ॲपचा उपयोग व्हावा, या दृष्टीने याची निर्मिती करण्यात आली आहे. आमचे उद्दिष्ट हे आहे की आधुनिक तंत्रज्ञानाच्या साहाय्याने शेतीत क्रांती घडवून आणणे आणि शेतकऱ्यांचे जीवनमान उंचावणे.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5D5145),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'आमचे ध्येय:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildAboutItem(
                    'तंत्रज्ञानाचा वापर',
                    'शेतकऱ्यांना पीक व्यवस्थापनासाठी, हवामान अंदाजासाठी आणि बाजारपेठेतील नवीनतम माहितीसाठी आधुनिक तंत्रज्ञान उपलब्ध करून देणे.',
                    Icons.lightbulb,
                  ),
                  _buildAboutItem(
                    'सामाजिक जबाबदारी',
                    'तंत्रज्ञानाचा वापर करून सामाजिक आणि आर्थिक विकासाला हातभार लावणे हे आमचे कर्तव्य आहे. हे ॲप त्या दिशेने टाकलेले एक महत्त्वाचे पाऊल आहे.',
                    Icons.people,
                  ),
                  _buildAboutItem(
                    'शेतकऱ्यांना सक्षम करणे',
                    'हे ॲप वापरण्यास सोपे आहे, ज्यामुळे प्रत्येक शेतकरी कोणत्याही तांत्रिक मदतीशिवाय याचा उपयोग करू शकेल.',
                    Icons.grass,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'आम्ही शेतकऱ्यांच्या प्रगतीसाठी नेहमीच कटिबद्ध आहोत.',
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
                    'संपर्क साधा: ', 
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A4E4E),
                    ),
                  ),
                  const SizedBox(height: 15),

                  _buildContactItem(
                    label: 'वेबसाइट',
                    value: 'www.avertastrategy.com',
                    icon: Icons.public,
                  ),
                  const SizedBox(height: 10),

                  _buildContactItem(
                    label: 'ईमेल',
                    value: 'support@avertastrategy.com',
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 10),

                  _buildContactItem(
                    label: 'मोबाईल',
                    value: '8483001178',
                    icon: Icons.phone,
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

  Widget _buildAboutItem(String title, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.green, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D5145),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF5D5145),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required String label,
    required String value,
    required IconData icon,
  }) {
    String uriScheme;
    if (label == 'वेबसाइट') {
      uriScheme = 'https';
    } else if (label == 'ईमेल') {
      uriScheme = 'mailto';
    } else {
      uriScheme = 'tel';
    }

    final Uri uri = Uri(scheme: uriScheme, path: value);

    return InkWell(
      onTap: () async {
        if (!await launchUrl(uri)) {
          throw Exception('Could not launch $uri');
        }
      },
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 24),
          const SizedBox(width: 15),
     
          Text(
            '$label: ',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A4E4E),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}