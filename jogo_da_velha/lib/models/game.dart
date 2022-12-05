import 'dart:developer';
import 'dart:io';
//models
import '../models/player.dart';
//utils
import '../utils/validator.dart';
import 'package:jogo_da_velha/menu.dart';

abstract class ITictactoe {
  void start() {}

  jogada() {}

  winner() {}
}

class Tictactoe extends ITictactoe {
  //Game
  Player player1 = Player();
  Player player2 = Player();
  String _ganhador = '';
  Map<String, String> jogadas = <String, String>{
    'a0': '',
    'a1': '',
    'a2': '',
    'b0': '',
    'b1': '',
    'b2': '',
    'c0': '',
    'c1': '',
    'c2': '',
  };
  Validator validator = Validator();

  Tictactoe();

  String get ganhador {
    return _ganhador;
  }

  @override
  void start() {
    viewMenu();
    print("Você que ser o player 'x'? y/n >>");
    String? resposta = stdin.readLineSync();
    if (resposta!.contains('y')) {
      player1.playerName = 'x';
      player2.playerName = 'y';
    } else {
      player2.playerName = 'x';
      player1.playerName = 'y';
    }
  }

  @override
  jogada() {
    log('''
======================================
          TURNO DO PLAYER 1   
======================================
    ''');
    log('''DIGITE O NOME DA COLUNA >> ''');
    String? coluna = stdin.readLineSync();

    log('''DIGITE O NOME DA LINHA >> ''');
    String? linha = stdin.readLineSync();
    String chave = coluna! + linha!;

    player1.valores(chave: chave, listaValores: jogadas);
    jogadaIsValida(chave: chave, playerName: player1.playerName);
    quadradoDaVelha(listajogadas: jogadas);



    log('''
======================================
          TURNO DO PLAYER 2   
======================================
    ''');
    log('''DIGITE O NOME DA COLUNA >> ''');
    coluna = stdin.readLineSync();

    log('''DIGITE O NOME DA LINHA >> ''');
    linha = stdin.readLineSync();
    chave = coluna! + linha!;

    player1.valores(chave: chave, listaValores: jogadas);
    jogadaIsValida(chave: chave, playerName: player1.playerName);
    quadradoDaVelha(listajogadas: jogadas);
  }

  @override
  bool winner() {
    if (player1.ganhador) {
      _ganhador = player1.playerName;
      return true;
    } else if (player2.ganhador) {
      _ganhador = player2.playerName;
      return true;
    } else {
      return false;
    }
  }

  void jogadaIsValida({required String chave, required String playerName}) {
    if (jogadas[chave]!.isEmpty) {
      jogadas[chave] = playerName;
    } else if (jogadas[chave]!.isNotEmpty) {
      log('A posição, a $chave já foi escolhida.');
    } else if (!jogadas.containsKey(chave)) {
      print('Essa possição não existe');
    }
  }
}
