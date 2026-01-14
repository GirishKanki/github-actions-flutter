import 'package:flutter/material.dart';
import 'package:bachatgat/view/Gat_Nirmati/Container/kharchKami.dart';
import 'package:bachatgat/view/Gat_Nirmati/Container/adhunikSheti.dart';
import 'package:bachatgat/view/Gat_Nirmati/Container/sethMal.dart';
import 'package:bachatgat/view/Gat_Nirmati/Container/pavanSthapan.dart';

class GatNirmitiPage extends StatelessWidget {
  const GatNirmitiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 50),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/fm4.jpg",
                errorBuilder: (context, error, stackTrace) {
                  return const Text("Image not found");
                },
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              "गट समूह निर्मिती ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'गट सामूह निर्मितीमुळे शेतीमध्ये अनेक फायदे होतात, ज्यामुळे शेतकरी एकत्र येऊन त्यांच्या समस्यांवर सामूहिकरित्या उपाय शोधू शकतात. यामुळे आर्थिक बचत होते आणि उत्पादनात वाढ होते.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF5D5145),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            buildOption(
              context,
              icon: Icons.agriculture,
              title: "शेती उत्पादन खर्च कमी करणे",
              page: const ShetkariUtpadanScreen(),
            ),
            buildOption(
              context,
              icon: Icons.science,
              title: "आधुनिक उत्पादन तंत्राचा अवलंब",
              page: const AadhunikTantradnyanScreen(),
            ),
            buildOption(
              context,
              icon: Icons.eco,
              title: "शेतीमालाचे मूल्यवर्धन",
              page: const ShetiMalScreen(),
            ),
            buildOption(
              context,
              icon: Icons.store,
              title: "पणन व्यवस्थापन",
              page: const PananVyavasthapanScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Widget page,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(16),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color:  Colors.black38, width: 1),
        ),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.green),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.green),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
