
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsitePage extends StatelessWidget {
  const WebsitePage({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication, 
    )) {
      
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/website.jpg",
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
              const SizedBox(height: 20),

             
              const Text(
                'येथे महाराष्ट्रातील शेतकऱ्यांसाठी आणि नागरिकांसाठी उपयुक्त महत्त्वाच्या शासकीय संकेतस्थळांची यादी दिली आहे.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF5D5145),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              
              _buildWebsiteContainer(
                context,
                'कृषी विभाग महाराष्ट्र शासन',
                'https://krishi.maharashtra.gov.in/',
                Icons.eco,
              ),
              const SizedBox(height: 15),

              _buildWebsiteContainer(
                context,
                'महाराष्ट्र स्पर्धाक्षम कृषी विकास प्रकल्प (MACP)',
                'https://msamb.com/',
                Icons.trending_up,
              ),
              const SizedBox(height: 15),

              _buildWebsiteContainer(
                context,
                'मा. बाळासाहेब ठाकरे कृषी व्यवसाय व ग्रामीण परिवर्तन (स्मार्ट) प्रकल्प',
                'https://www.smart-mh.org/',
                Icons.library_books,
              ),
              const SizedBox(height: 15),

              _buildWebsiteContainer(
                context,
                'पशुसंवर्धन व दुग्धव्यवसाय विभाग, महाराष्ट्र शासन',
                'https://dahd.maharashtra.gov.in/',
                Icons.family_restroom,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWebsiteContainer(
      BuildContext context, String title, String url, IconData icon) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color:Colors.black38),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ), 
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.green, size: 30),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A4E4E),
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
