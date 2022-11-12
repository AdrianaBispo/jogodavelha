import '../utils/validator.dart';
import '../lista_valores.dart';

class Player {
  Validator validator = Validator();
  late String _player;
  bool _ganhador = false;
  List<String> _valores = <String>[];

  Player();

  set player(String valor) {
    _player = valor;
  }

  set valores(String chave) {
    if (jogadas[chave]!.isEmpty) {
      jogadas[chave] = _player;
    } else if (jogadas.isNotEmpty) {
      print('A posição, a $chave já foi escolhida.');
    } else if (jogadas.containsKey(chave)) {
      print('Essa possição não existe');
    } else {
      jogadas.update(chave, (value) => '');
      _valores.add(chave);
    }
  } //set valores

  set ganhador(bool valor) {
    _ganhador = validator.ganhar(_valores);
  } //ganhador

  bool get ganhador {
    return _ganhador;
  }
}
