import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:bachatgat/res/colors/app_color.dart';
import 'package:bachatgat/view/Home/Conatiners/nirmiti.dart';
import 'package:bachatgat/view/Home/Conatiners/nondani.dart';
import 'package:bachatgat/view/Home/Conatiners/kagadpatre.dart';
import 'package:bachatgat/view/Home/Conatiners/pramanpatre.dart';
import 'package:bachatgat/view/Home/Conatiners/gurukilli.dart';
import 'package:bachatgat/view/Home/Conatiners/contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    



    final List<String> images = [
      "assets/images/p7.png",
      "assets/images/p2.jpg",
      "assets/images/p3.jpg",
      "assets/images/p4.jpg",
      // "assets/images/p1.jpg",
      "assets/images/p5.jpg",
     // "assets/images/p6.jpg",
    ];

    final List<Map<String, dynamic>> menuItems = [
      {
        "icon": Icons.person_add,
        "label": "बचत गट निर्मिती",
        "page": GatNirmintiInfoScreen(),
      },
      {
        "icon": Icons.app_registration,
        "label": "बचत गट नोंदणी",
        "page": NondaniScreen(),
      },
      {
        "icon": Icons.description,
        "label": "अवश्य कागदपत्रे",
        "page": KagadpatreScreen(),
      },
      {"icon": Icons.vpn_key, 
      "label": "यशाची गुरुकिल्ली", 
      "page": GurukilliScreen()},
      {
        "icon": Icons.assignment,
        "label": "मूळ प्रमाणपत्रे",
        "page": PramanpatreScreen(),
      },
      {"icon": Icons.contact_phone, 
      "label": "संपर्क",
       "page": ContactScreen()},
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
     
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  aspectRatio: 19 / 9,
                ),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 10),
                Expanded(child: Divider(color: Colors.green, thickness: 1.5)),
                SizedBox(width: 10),
                Text(
                  "कृषी विभाग",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(195, 1, 1, 1),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(child: Divider(color: Colors.green, thickness: 1.5)),
                SizedBox(width: 10),
              ],
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(18),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.2,
                children: menuItems.map((item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => item["page"]),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 255, 255, 255), 
                            const Color.fromARGB(255, 255, 255, 255),
                            
                          ],
                        ),
 
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black38),
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(item["icon"], size: 40, color: const Color.fromARGB(206, 76, 175, 79)),
                          const SizedBox(height: 10),
                          Text(
                            item["label"],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(195, 1, 1, 1), 
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
