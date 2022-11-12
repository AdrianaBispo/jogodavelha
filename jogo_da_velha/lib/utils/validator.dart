class Validator {
  bool ganhar(List<String> valores) {
    bool ganhador = false;
    if (valores.contains(['a0', 'a1', 'a2'])) {
      ganhador = true;
    } else if (valores.contains(['b0', 'b1', 'b2'])) {
      ganhador = true;
    } else if (valores.contains(['c0', 'c1', 'c2'])) {
      ganhador = true;
    }
    //horizontal
    else if (valores.contains(['a0', 'b0', 'c0 '])) {
      ganhador = true;
    } else if (valores.contains(['a1', 'b1', 'c1'])) {
      ganhador = true;
    } else if (valores.contains(['a2', 'b2', 'c2'])) {
      ganhador = true;
    }

    //diagonal
    else if (valores.contains(['a0', 'b1', 'c2'])) {
      ganhador = true;
    } else if (valores.contains(['a2', 'b1', 'c0'])) {
      ganhador = true;
    }
    return ganhador;
  }
}
