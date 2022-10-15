import '../lib/menu.dart';
import 'dart:io';
void main(List<String> arguments) {
  bool start = false;
  print("Você quer começar o jogo? y/n >> ");
  String? resposta = stdin.readLineSync();
  if (resposta!.contains('y')){
    start = true;
  }else{
    bye();
  }
  while (start){
    viewMenu();
  }
}