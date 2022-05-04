import 'backend/authenticate.dart';
import 'dart:io';
void main(){

    final String? createOrLogin;
    final auth = Authenticate();


    print('============ Welcome Employee Management System ===================');
    print('Dont have an account ? Please Type "C" to create');
    print('Type "L" to redirect login Page: ');
    createOrLogin = stdin.readLineSync();

    switch(createOrLogin){
      case 'l':
          auth.login();
        break;

      case 'c':
        break;

    }

    //after login page determine if the password and username is not equal for Admin
    //if not find the password saved for employee,then proceed to employee page
    //but if equal for admin, then proceed to admin page

    /*
    *  For admin page select the command for the following execution
    *  A => Manage Employee (Add, Delete, Edit, Update)
    *  B => Manage Salary (Add, Delete, Edit, Update)
    *  C => Manage Worksheet (Add, Delete, Edit, Update)
    *  D => Manage Leave (Add, Delete, Edit, Update)
    * */



}