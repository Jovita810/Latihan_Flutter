
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.white;
    const textColor = Colors.black;
    const secondaryColor = Colors.black54;
    const cardColor = Color(0xFFF0F0F0);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.share,
                    color: textColor,
                    size: 28,
                  ),
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.settings,
                    color: textColor,
                    size: 28,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const CircleAvatar(
              radius: 65,
              backgroundColor: Color(0xFFEEEEEE),
              child: Icon(
                Icons.pets,
                size: 65,
                color: textColor,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "y",
              style: TextStyle(
                color: textColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: secondaryColor,
                  size: 18,
                ),
                SizedBox(width: 6),
                Text(
                  "jovitatheodora8",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Text(
              "0 pengikut · 1 mengikuti",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              "Pin",
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      height: 52,
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: secondaryColor,
                            size: 27,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Cari Pin Anda",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Icon(
                    Icons.swap_vert,
                    color: textColor,
                    size: 30,
                  ),
                  const SizedBox(width: 18),
                  const Icon(
                    Icons.add,
                    color: textColor,
                    size: 32,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 18,
                childAspectRatio: 0.8,
                children: [
                  _pinCard(
                    "Pin 1",
                    const Color(0xFFB9A18E),
                  ),
                  _pinCard(
                    "Pin 2",
                    const Color(0xFF8D8297),
                  ),
                  _pinCard(
                    "Pin 3",
                    const Color(0xFF8EAA91),
                  ),
                  _pinCard(
                    "Pin 4",
                    const Color(0xFFB68A96),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pinCard(String title, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.dashboard,
              size: 65,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
