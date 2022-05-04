import 'dart:io';
import 'db.dart';
import '../admin/admin.dart';

class Authenticate{
  final db = DataBase();
  void login(){
    String? username = '';
    String? password = '';
    print('============= Please Login ===============');
    //input username
    print('Username: ');
    username = stdin.readLineSync();
    //input password
    print('Password');
    password = stdin.readLineSync();

    if(db.authentication(username, password) == 'Admin'){
      final admin = Admin();
      admin.page();
    }else{

    }
  }
}