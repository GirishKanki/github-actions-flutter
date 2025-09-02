// mero.dart
import 'package:flutter/material.dart';
import 'package:bachatgat/view/More/containers/prastavana.dart';
import 'package:bachatgat/view/More/containers/arjachanamuna.dart';
import 'package:bachatgat/view/More/containers/krushikame.dart';
import 'package:bachatgat/view/More/containers/yashogatha.dart';
import 'package:bachatgat/view/More/containers/acmchabaddal.dart';

class MeroPage extends StatelessWidget {
  const MeroPage({super.key});

  @override
  Widget build(BuildContext context) {

    void handleAction(String actionName) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Tapping on: $actionName')));
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 37),
              // Top Section: Welcome and Info
              Container(
                padding: const EdgeInsets.all(22.0),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left side: Circle image with black border
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: ClipOval(
                       child: Image.asset(
                          "assets/images/splash_screen_logo.png",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Text("Image not found", textAlign: TextAlign.center);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    // Right side: Text content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'शेतकरी बचत गट',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E7D32),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'अधिक माहिती साठी संपर्क',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF388E3C),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'version: 2.0',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             // const SizedBox(height: 10),

              // Existing four containers, now square again
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 14.0,
                mainAxisSpacing: 14.0,
                children: [
                  _buildSquareActionButton(
                    context,
                    text: 'प्रस्तावना',
                    icon: Icons.book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PrastavanaPage()),
                      );
                    },
                  ),
                  _buildSquareActionButton(
                    context,
                    text: 'अर्जाचा नमुना',
                    icon: Icons.description,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ArjachaNamunaScreen()),
                      );
                    },
                  ),
                  _buildSquareActionButton(
                    context,
                    text: 'कृषीविषयक कामे',
                    icon: Icons.agriculture,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KrushiKameScreen()),
                      );
                    },
                  ),
                  _buildSquareActionButton(
                    context,
                    text: 'यशोगाथा',
                    icon: Icons.favorite,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const YashogathaScreen()),
                      );
                    },
                  ),
                ],
              ),
              
              const SizedBox(height: 10),
              // The black line you requested
              Container(
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              
              // New text line and two new containers as requested
              const Text(
                'communicate:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D5145),
                ),
              ),
             // const SizedBox(height: 15),

              // Stacked full-width containers
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildRectangleActionButton(
                    context,
                    text: 'आमच्याबद्दल',
                    icon: Icons.info_outline,
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AcmchabaddalScreen()),
                      );
                    },
                  ),
                  const SizedBox(height: 16.0),
                  _buildRectangleActionButton(
                    context,
                    text: 'संपर्क',
                    icon: Icons.contact_mail,
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AcmchabaddalScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // A helper method to build the square action buttons
  Widget _buildSquareActionButton(
    BuildContext context, {
    required String text,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.green),
            const SizedBox(height: 5.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // A helper method to build the rectangular action buttons
  Widget _buildRectangleActionButton(
    BuildContext context, {
    required String text,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: Colors.green),
            const SizedBox(width: 10.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
