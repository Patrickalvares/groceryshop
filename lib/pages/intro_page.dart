import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 80.0,
            right: 80,
            bottom: 40,
            top: 120,
          ),
          child: Image.asset('lib/images/avocado.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            "Entregamos gostosuras na porta de sua casa",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Todo dia produtos frescos",
          style: TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return const HomePage();
          }))),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Comece aqui",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
