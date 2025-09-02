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
      "assets/images/p1.jpg",
      "assets/images/p2.jpg",
      "assets/images/p3.jpg",
    ];

    final List<Map<String, dynamic>> menuItems = [
      {
        "icon": Icons.person_add,
        "label": "गट निर्मिती",
        "page": GatNirmintiInfoScreen(),
      },
      {
        "icon": Icons.app_registration,
        "label": "गट नोंदणी",
        "page": NondaniScreen(),
      },
      {
        "icon": Icons.description,
        "label": "कागदपत्रे",
        "page": KagadpatreScreen(),
      },
      {"icon": Icons.vpn_key, "label": "गुरुकिल्ली", "page": GurukilliScreen()},
      {
        "icon": Icons.assignment,
        "label": "प्रमाणपत्रे",
        "page": PramanpatreScreen(),
      },
      {"icon": Icons.contact_phone, "label": "संपर्क", "page": ContactScreen()},
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Custom Top Bar
            const SizedBox(height: 12), // adjust height as needed
            // 🔹 Top 20% Slider
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

            // 🔹 Remaining Section with 6 Containers
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                
                SizedBox(width: 10),
                Expanded(child: Divider(color: Colors.green, thickness: 1.5)),
                SizedBox(width: 10),
                Text(
                  "विभाग",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
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
                            const Color.fromARGB(254, 255, 255, 255),
                            const Color.fromARGB(255, 255, 255, 255),
                          ],
                        ),

                        borderRadius: BorderRadius.circular(16),
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
                          Icon(item["icon"], size: 40, color: Colors.green),
                          const SizedBox(height: 10),
                          Text(
                            item["label"],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
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

// 🔹 Dummy Pages for Navigation
class DummyPage extends StatelessWidget {
  final String title;
  const DummyPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: const TextStyle(fontSize: 22))),
    );
  }
}
