import 'package:flutter/material.dart';

class GurukilliScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
        title: const Text(
          "यशाची गुरुकिल्ली",
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
                  "assets/images/farm5.jpg",
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
                    'यशाची गुरुकिल्ली',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6A4E4E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  _buildDocumentItem(
                    ' गटाने भविष्यामध्ये कृषिविषयक मोठ्या अनुदानातील योजनेचा लाभ घेण्याच्या दृष्टीने नियमित बचत सुरु करावी. जेणेकरून भविष्यामध्ये बँक कर्ज आधारित प्रकल्प सुरु करणेसाठी गटास कर्ज पुरवठा व शासकीय अनुदान मिळणे सोयीचे जाईल या मध्ये अर्थातच जे गट प्रक्रिया व मूल्यवर्धन या बाबीसाठी एकत्र येणार आहेत त्यांच्यासाठी हि बचत अनिवार्य राहणार आहे. तसेच जे गट उत्पादन वाढीच्या अनुषंगाने एकत्र येणार आहेत त्यामध्ये बचतीची रक्कम मोठी न ठेवता बचत करणे आवश्यक राहील जेणेकरून एकत्रित निविष्टा खरेदीसाठी गटाकडे भांडवल उपलब्ध राहील व ऐनवेळेस आगाऊ रक्कम द्यावयाची झाल्यास गटास अडचण उद्भभवणार नाही. त्या दृष्टीने सदस्याकडून जमा होणाऱ्या बचतीचा हिशोभ ठेवण्यासाठी विहित नमुन्यातील नोंद वही ठेवावी. उपरोक्त निशकावर आधारित मुल्यांकन करून गटास मुल्यांकन पत्र द्यावे. मात्र त्यामध्ये सदरचे मुल्यांकन हे संपूर्ण तांत्रिक स्वरूपाचे असून त्याचा आर्थिक व्यवहाराशी कोणताही संबध नसल्याचे नमूद करावे जेणेकरून आर्थिक व्यवहार हा संपूर्ण गटातील जबाबदार प्रतिनिधीचा प्रश्न राहील.',
                  ),
                  _buildDocumentItem(
                    ' गटातील सदस्यांची निवड, गटनिर्मिती, गटातील आत्मा संस्थेंअंतर्गत नोंदणी गटाचे बँक खाते उघडणे व गटास तालुका कृषी अधिकारी यांचेमार्फत आवश्यक नोंदवह्या मिळून देणे या प्रकरणामध्ये कृषी सहायक अथवा गट समन्वयक यांनी सक्रीय सहभाग घ्यावा.',
                  ),
                  _buildDocumentItem(
                    ' गटाने नोंदणीनंतर तालुका कृषी अधिकारी यांनी दरवर्षी एप्रिल व मे महिन्यामध्ये गटाचे मूल्यमापन करावे त्यासाठी त्यांनी त्यांचे कार्य क्षेत्रातील मंडळ कृषी अधिकारी यांना गटाचे मूल्यमापन करण्यासाठी नियुक्त करावे.',
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
            decoration: BoxDecoration(
              color: Color(0xFF6A4E4E),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
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
