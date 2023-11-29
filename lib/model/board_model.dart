import 'package:flutter/material.dart';

class BoardModel with ChangeNotifier {
  bool oTurn = true;
  String winner = '';
  int oScore = 0;
  int xScore = 0;
  List<String> displayXdD = ['', '', '', '', '', '', '', '', ''];
  int count = 0;

  playAgain() {
    displayXdD = ['', '', '', '', '', '', '', '', ''];
    oTurn = true;
    count = 0;
    winner = '';
    notifyListeners();
  }

  String checkWinner() {
    // horizontal for O
    if (displayXdD[0] == 'O' && displayXdD[1] == 'O' && displayXdD[2] == 'O') {
      return 'O';
    } else if (displayXdD[3] == 'O' &&
        displayXdD[4] == 'O' &&
        displayXdD[5] == 'O') {
      return 'O';
    } else if (displayXdD[6] == 'O' &&
        displayXdD[7] == 'O' &&
        displayXdD[8] == 'O') {
      return 'O';
    }
    // horizontal for X
    else if (displayXdD[0] == 'X' &&
        displayXdD[1] == 'X' &&
        displayXdD[2] == 'X') {
      return 'X';
    } else if (displayXdD[3] == 'X' &&
        displayXdD[4] == 'X' &&
        displayXdD[5] == 'X') {
      return 'X';
    } else if (displayXdD[6] == 'X' &&
        displayXdD[7] == 'X' &&
        displayXdD[8] == 'X') {
      return 'X';
    }
    //vertical for O
    if (displayXdD[0] == 'O' && displayXdD[3] == 'O' && displayXdD[6] == 'O') {
      return 'O';
    } else if (displayXdD[1] == 'O' &&
        displayXdD[4] == 'O' &&
        displayXdD[7] == 'O') {
      return 'O';
    } else if (displayXdD[2] == 'O' &&
        displayXdD[5] == 'O' &&
        displayXdD[8] == 'O') {
      return 'O';
    } else if (displayXdD[0] == 'O' &&
        displayXdD[4] == 'O' &&
        displayXdD[8] == 'O') {
      return 'O';
    } else if (displayXdD[2] == 'O' &&
        displayXdD[4] == 'O' &&
        displayXdD[6] == 'O') {
      return 'O';
    }
    // vertical for X
    if (displayXdD[0] == 'X' && displayXdD[3] == 'X' && displayXdD[6] == 'X') {
      return 'X';
    } else if (displayXdD[1] == 'X' &&
        displayXdD[4] == 'X' &&
        displayXdD[7] == 'X') {
      return 'X';
    } else if (displayXdD[2] == 'X' &&
        displayXdD[5] == 'X' &&
        displayXdD[8] == 'X') {
      return 'X';
    } else if (displayXdD[0] == 'X' &&
        displayXdD[4] == 'X' &&
        displayXdD[8] == 'X') {
      return 'X';
    } else if (displayXdD[2] == 'X' &&
        displayXdD[4] == 'X' &&
        displayXdD[6] == 'X') {
      return 'X';
    }
    return '';
  }

  whoseTurn(int index) {
    if (oTurn == true && (displayXdD[index] == '')) {
      displayXdD[index] = 'O';
      oTurn = !oTurn;
    } else if (displayXdD[index] == 'O') {
      displayXdD[index] = 'O';
      oTurn = oTurn;
    } else if (displayXdD[index] == 'X') {
      displayXdD[index] = 'X';
      oTurn = oTurn;
    } else {
      displayXdD[index] = 'X';
      oTurn = !oTurn;
    }
    count = count + 1;
    if ((count > 4) && (winner == '')) {
      winner = checkWinner();
      if (winner == 'O') {
        oScore = oScore + 1;
      } else if (winner == 'X') {
        xScore = xScore + 1;
      }
    }
    notifyListeners();
  }
}
