import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tic_tac_toe/pages/home_page.dart';
import 'package:tic_tac_toe/styles/button.dart';

class LetsPlay extends StatelessWidget {
  const LetsPlay({super.key});

  @override
  Widget build(BuildContext context) {
    void navigate() {
      Navigator.push(
          context,
          PageTransition(
              child: const Homepage(), type: PageTransitionType.fade));
    }

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Press start to play",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: navigate,
              style: buttonStyle,
              child: const Text(
                'Start game',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
