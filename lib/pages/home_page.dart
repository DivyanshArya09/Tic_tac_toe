import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/model/board_model.dart';
import 'package:tic_tac_toe/styles/button.dart';
import 'package:tic_tac_toe/widgets/block.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    BoardModel provider = Provider.of<BoardModel>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Player O',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'score : ${provider.oScore}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 72, 23, 232)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Player X',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'score : ${provider.xScore}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 72, 23, 232)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Flexible(
              flex: 3,
              // child: Container(),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (context, idx) {
                    return GestureDetector(
                      onTap: () {
                        if (provider.winner == '') {
                          provider.whoseTurn(idx);
                        }
                      },
                      child: Block(
                        boxColor: provider.winner == ''
                            ? const Color.fromARGB(255, 92, 25, 208)
                            : provider.winner == provider.displayXdD[idx]
                                ? const Color.fromARGB(255, 120, 234, 124)
                                : const Color.fromARGB(255, 252, 21, 5),
                        text: provider.displayXdD[idx],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
                flex: 1,
                child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: provider.playAgain,
                    child: const Text(
                      'Play again',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    ));
  }
}
