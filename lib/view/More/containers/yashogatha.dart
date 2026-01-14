import 'package:flutter/material.dart';


class YashogathaScreen extends StatelessWidget {
  const YashogathaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      appBar: AppBar(
  title: const Text(
    "यशोगाथा",
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
                  'assets/images/person.png',
                  errorBuilder: (context, error, stackTrace) {
                  return const Text("Image not found");},
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),

            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'ज्ञानेश्वर बोडके - अभिनव प्रयोगशील शेतकरी',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A4E4E),
                ),
              ),
            ),
            const SizedBox(height: 20),

           
            _buildStoryContainer(
              'ज्ञानेश्वर यांनी फुलांची हायटेक शेती सुरू केली. त्यांनी पाणी, वीज, खतं आणि मजूर या सगळ्या गोष्टींचा वापर कमीतकमी केला. ज्ञानेश्वर सांगतात, मी तयार केलेलं ते पुणे परिसरातलं पहिलंवहिलं पॉलिहाऊस होतं. ज्ञानेश्वर यांच्या दहा गुंठ्याच्या शेतीला दररोज दोन हजार लिटर पाणी लागे. ज्ञानेश्वर आणि त्यांची पत्नी पूजा सकाळ-संध्याकाळ दोन-दोन तास शेतात काम करत. ते त्या प्रयत्नांतून दररोज दीढ हजार रुपये कमवू लागले.',
              mainWords: ['कमीतकमी', 'पहिलंवहिलं पॉलिहाऊस', 'दीढ हजार रुपये'],
            ),
            _buildStoryContainer(
              'ज्ञानेश्वर यांनी शेतीसोबत बाजारपेठेवरही लक्ष केंद्रित केले होते. त्यांनी दिल्लीची बाजारपेठ हेरली. ते स्वतःच्या शेतातील फुले विक्रीसाठी दिल्ली मार्केटमध्ये विमानाने पाठवू लागले. त्यातून त्यांना चांगले उत्पन्न मिळे. त्या जोरावर ज्ञानेश्वर यांनी दहा लाख रुपयांचे कर्ज वर्षभरात फेडले. ज्ञानेश्वर बोडके यांच्यासंदर्भात कॅनरा बँकेच्या मासिकामध्ये लेख छापून आला. पाठोपाठ, दूरदर्शन वाहिनीवरील आमची माती आमची माणसं या कार्यक्रमामध्ये ज्ञानेश्वर यांच्या शेतीसंबंधातील माहिती प्रसारित करण्यात आली. आसपासचे शेतकरी हळुहळू ज्ञानेश्वर यांच्याकडून मार्गदर्शन घेण्यासाठी येऊ लागले. ज्ञानेश्वरही त्यांना मोकळ्या मनाने मदत करत असत. त्यांनी परिसरातील इतर काही शेतकऱ्यांच्या नर्सरी तयार करून दिल्या; त्यांनी शेतकऱ्यांना फक्त शेती नव्हे, तर बाजाराचेही ज्ञान किती महत्त्वाचे आहे हे सांगितले. ज्ञानेश्वर शेतकऱ्यांना शेतीसाठी कर्ज काढण्याची कागदपत्रे कशी तयार करावीत येथपासून विक्रीसाठी पाठवण्याचा माल कसा पॅक करावा इथपर्यंतची माहिती इत्यंभूत देत असत. ज्ञानेश्वर यांनी शेतकऱ्यांना करून दिलेली आखणी इतकी व्यवस्थित असे, की शेतकऱ्यांनी काढलेले कर्ज दोन वर्षांत पूर्ण फेडले जाई.',
              mainWords: [
                'बाजारपेठेवरही लक्ष केंद्रित',
                'दिल्लीची बाजारपेठ',
                'दिल्ली मार्केटमध्ये विमानाने पाठवू लागले',
                'दहा लाख रुपयांचे कर्ज वर्षभरात फेडले',
                'आमची माती आमची माणसं',
                'मोकळ्या मनाने मदत करत असत',
                'बाजाराचेही ज्ञान किती महत्त्वाचे आहे',
                'कर्ज काढण्याची कागदपत्रे कशी तयार करावीत येथपासून विक्रीसाठी पाठवण्याचा माल कसा पॅक करावा इथपर्यंतची माहिती इत्यंभूत देत असत',
              ],
            ),
            _buildStoryContainer(
              'मात्र ज्ञानेश्वर यांचे स्वतःच्या शेतीकडे इतरांना मदत करण्याच्या नादात दुर्लक्ष झाले. ते पाहून बँकेच्या अधिकाऱ्यांनी ज्ञानेश्वर यांना शेतकऱ्यांचा ग्रूप तयार करण्याचा सल्ला दिला. त्यानुसार ज्ञानेश्वर बोडके यांनी १५ ऑगस्ट २००४ रोजी \'अभिनव फार्मर्स क्लब\'ची रचना केली. \'अभिनव फार्मर्स क्लब\'चे महाराष्ट्र, तेलंगण, आंध्रप्रदेश, कर्नाटक, गुजरात, मध्यप्रदेश, उत्तरप्रदेश अशा राज्यांमध्ये एकूण दोनशे सत्तावन्न ग्रुप्स तयार झाले आहेत. \'अभिनव...\'चे लोण महाराष्ट्रातील तीस जिल्ह्यांपर्यंत पोचले असून तेथे प्रत्येक जिल्ह्यांत कमीत कमी दोन तर जास्तीत जास्त पंधरा ग्रूप्स आहेत. देशभरातील सर्व ग्रूप्समध्ये मिळून पंचेचाळीस हजार शेतकरी आहेत. आधी फुले, त्यानंतर परदेशी भाजीपाला, मग देशी भाजीपाला असे करत \'अभिनव...\' ग्रुप सर्व तऱ्हेचा भाजीपाला, फळे आणि धान्य यांचे उत्पादन काढू लागला आहे. ग्रूपकडून केलेली जाणारी शेती पूर्णतः सेंद्रीय पद्धतीने केली जाते. \'अभिनव फार्मर्स क्लब\'ला त्याच्या कामासाठी राष्ट्रीय पुरस्काराने सन्मानित करण्यात आले आहे.',
              mainWords: [
                '१५ ऑगस्ट २००४',
                '\'अभिनव फार्मर्स क्लब\'',
                'दोनशे सत्तावन्न ग्रुप्स',
                'महाराष्टरातील तीस जिल्ह्यांपर्यंत',
                'पंचेचाळीस हजार शेतकरी',
                'पूर्णतः सेंद्रीय पद्धतीने',
                'राष्ट्रीय पुरस्काराने सन्मानित',
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryContainer(String content, {required List<String> mainWords}) {
    List<TextSpan> textSpans = [];
    int start = 0;

    for (String word in mainWords) {
      final index = content.indexOf(word, start);
      if (index != -1) {
       
        textSpans.add(TextSpan(
          text: content.substring(start, index),
          style: const TextStyle(fontWeight: FontWeight.normal),
        ));

        
        textSpans.add(TextSpan(
          text: content.substring(index, index + word.length),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
        start = index + word.length;
      }
    }

    
    if (start < content.length) {
      textSpans.add(TextSpan(
        text: content.substring(start),
        style: const TextStyle(fontWeight: FontWeight.normal),
      ));
    }

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
      child: RichText(
        text: TextSpan(
          children: textSpans,
          style: const TextStyle(
            fontSize: 16,
            height: 1.5,
            color: Color(0xFF5D5145),
          ),
        ),
      ),
    );
  }
}
