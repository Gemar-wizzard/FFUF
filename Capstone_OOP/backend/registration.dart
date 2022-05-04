import 'dart:io';
import 'db.dart';
class Registration{

  final db = DataBase();
  void register(){
    String? username = '';
    String? password = '';
    String? name = '';
    print('============= Create Account ===============');

    print('Name');
    name = stdin.readLineSync();
    print('Username: ');
    username = stdin.readLineSync();
    print('Password');
    password = stdin.readLineSync();
    print(db.signUp(name, username, password));
  }
}