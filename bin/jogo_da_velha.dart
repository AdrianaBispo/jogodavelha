import 'dart:io';
import 'package:jogo_da_velha/menu.dart';
//models
import 'package:jogo_da_velha/models/game.dart';

void main(List<String> arguments) {
  Tictactoe game = Tictactoe();

  print("Você quer começar o jogo? y/n >> ");
  String? resposta = stdin.readLineSync();
  if (resposta!.contains('y')) {
    game.start();
    for (int i = 0; i < 5; i++) {
      game.jogada();
      if (game.winner()) {
        parabens(nomeplayer: game.ganhador);
        break;
      } else if (i == 4) {
        todosPerderam();
        bye();
      }
    }
  } else {
    bye();
  }
}
