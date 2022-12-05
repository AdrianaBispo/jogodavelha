import '../utils/validator.dart';

class Player {
  Validator _validator = Validator();
  late String _playerName;
  bool _ganhador = false;
  List<String> _valores = <String>[];

  Player();

  set playerName(String valor) {
    _playerName = valor;
  }

  String get playerName => _playerName;

  valores({required String chave, required Map<String, String> listaValores}) {
    if (_validator.jogadaValida(chave: chave, listaValores: listaValores)) {
      _valores.add(chave);
    }
  } //set valores

  set ganhador(bool valor) {
    _ganhador = _validator.ganhar(_valores);
  } //ganhador

  bool get ganhador {
    return _ganhador;
  }
}
