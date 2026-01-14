import 'package:flutter/material.dart';
 
class KrushiKameScreen extends StatelessWidget {
  const KrushiKameScreen({super.key});
 
  Widget _buildInfoContainer(String title, String content) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
  title: const Text(
    "गटाने कृषिविषयक करावयाची कामे",
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
                  return const Text("Image not found");},
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            _buildInfoContainer(
              'पुस्तकालय',
              'गटाकडे स्वतःचे एक पुस्तकालय असावे ज्यात विविध विषयांवरील पुस्तके असतील. यामध्ये अध्यात्मिक साहित्य, प्रेरणादायी चरित्रे आणि पिकांसंबंधित साहित्य (उत्पादन, प्रक्रिया व विक्री) यांचा समावेश असावा. शेतकरी मासिक देखील नियमित वाचले जावे.',
            ),
            _buildInfoContainer(
              'ग्रामबीजोत्पादन कार्यक्रम',
              'ज्या पिकासाठी गट स्थापन केला आहे त्या पिकाचे बियाणे लक्षात घेऊन त्यानुसार पायाभूत बियाणे उपलब्ध करून घ्यावे.',
            ),
            _buildInfoContainer(
              'सामूहिक खरेदी',
              'गटास लागणारी अवजारे, खते आणि औषधे अशा सर्व वस्तू एकत्रितरित्या खरेदी केल्याने खर्चात बचत होते.',
            ),
            _buildInfoContainer(
              'विपणन आणि सहभाग',
              'गटातील सदस्यांनी एकत्रितपणे मालाची विक्री करण्यासाठी प्रयत्न करणे आवश्यक आहे. तसेच, समूहामार्फत आयोजित कृषिविषयक सहलींमध्ये नियमित सहभाग घेणे महत्त्वाचे आहे.',
            ),
            _buildInfoContainer(
              'आर्थिक नियोजन',
              'नियमित बचत करून भविष्यातील मोठ्या प्रकल्पांसाठी आर्थिक तरतूद करणे आणि पीक विमा योजनेमध्ये सहभाग घेणे आवश्यक आहे.',
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
