import 'dart:io';

void main(){
  //Painel de Controles
  String senha = "Dart123";
  String senha_usuario;
  int tentativa = 0;


  do{
    if (tentativa >0 ){
      print("Senha incorreta. Já tentou $tentativa vezes");
    }
    stdout.write("Digite a senha: ");
    senha_usuario = stdin.readLineSync()!; 
    tentativa++;
  } while(senha_usuario != senha);
  
   print("Acesso Permitido. Seja Bem-Vindo");

 


}