import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "संपर्क",
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/farm6.jpg",
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
                    'आमच्याशी संपर्क साधा',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6A4E4E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),

                  _buildContactItem(
                    'संस्था',
                    'Averta Strategy Pvt. Ltd',
                    Icons.business,
                  ),
                  _buildContactItem(
                    'ईमेल',
                    'mukesh.avertatech@gmail.com',
                    Icons.email,
                  ),

                  _buildContactItem(
                    'संपर्क क्रमांक',
                    '+91 8483001178',
                    Icons.phone,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'तुम्ही आम्हाला तुमच्या प्रश्नांसाठी किंवा अधिक माहितीसाठी कधीही संपर्क साधू शकता. आम्ही तुमच्या सेवेसाठी नेहमीच तत्पर आहोत.',
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
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(String label, String text, IconData? icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 4.0),
              child: Icon(icon, color: Color(0xFF6A4E4E)),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (label.isNotEmpty)
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5145),
                    ),
                  ),
                Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Color(0xFF5D5145)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
