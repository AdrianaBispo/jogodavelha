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

void quadradoDaVelha({required Map<String, String> listajogadas}){
  Map<String, String> j = listajogadas;
    print('''
      A        B         C
          |        |
0     ${j['a0']}   |    ${j['b0']}   |    ${j['c0']}    
  ________|________|________
          |        |
1     ${j['a1']}   |    ${j['b1']}   |    ${j['c1']} 
  ________|________|________
          |        |
2     ${j['a2']}   |    ${j['b2']}   |    ${j['c2']} 
          |        |
''');

}

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

void todosPerderam(){
    print('''
=====================================
  INFELIZMENTO DOS PERDERAM O JOGO   
=====================================
    ''');
}