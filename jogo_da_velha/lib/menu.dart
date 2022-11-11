void viewMenu() {
  print('''
==================================
    BEM VINDO AO JOGO DA VELHA    
==================================
    ''');

print('Essas são as posições que você pode jogar:');
  print('''
      A        B         C
          |        |
0         |        |
  ________|________|________
          |        |
1         |        |
  ________|________|________
          |        |
2         |        |
          |        |
''');
}

// Turno do Jogador X
// Posição da Linha: 
//Posição da Coluna: 


void bye (){
  print('''
=====================================
    VOLTE SEMPRE AO JOGO DA VELHA    
=====================================
    ''');
}

void parabens({required String nomeplayer}){
    print('''
=====================================
    PARABÉNS, O PLAYER $nomeplayer GANHOU    
=====================================
    ''');
}