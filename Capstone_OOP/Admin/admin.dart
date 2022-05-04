import '../backend/db.dart';
import 'dart:io';

class Admin{
  final db = DataBase();


  void page(){
    String? select = '';

    print('=================== Welcome Admin =================');
    print('Please Select:');
    print('A => Manage Employee');
    print('B => Manage Salary');
    print('C => Manage Leave');

    select = stdin.readLineSync();
    switch(select){
      case 'a':
        final employee = Employee();
        String? methodSelect = '';
        print('Please Select:');
        print('A => Add');
        print('B => Edit');
        print('C => Delete');
        print('D => Update');
        methodSelect = stdin.readLineSync();

        if(methodSelect == 'a' || methodSelect =='A'){
          employee.add();
        }else if (methodSelect == 'b' || methodSelect == 'B'){
          employee.edit();
        }else if (methodSelect == 'c' || methodSelect == 'C'){
          employee.delete();
        }else if (methodSelect == 'd' || methodSelect == 'D'){
          employee.update();
        }
        break;
      case 'b':
        break;
      case 'c':
        break;
    }
  }
  void add(){
  }
  void edit(){
    print('sdfd');
  }
  void delete(){
    print('sdfd');
  }
  void update(){
    print('sdfd');
  }


}

class Employee extends Admin{
  String? _name;
  String? _dob;
  String? _gender;
  String? _status;
  String? _email;
  String? _address;
  String? _contactNum;
  String? _designation;



  @override
  void add() {
    // TODO: implement add
    String? continueOrNot = 'y';
    while(continueOrNot == 'y'){
      print('--------------Admin Add Employee--------------');
      print('');
      print('Input Name:');
      _name = stdin.readLineSync();
      print('Input Date Of Birth:');
      _dob = stdin.readLineSync();
      print('Input Gender: ');
      _gender = stdin.readLineSync();
      print('Input Status: ');
      _status = stdin.readLineSync();
      print('Input Address: ');
      _address = stdin.readLineSync();
      print('Input Contact Number: ');
      _contactNum = stdin.readLineSync();
      print('Input Email: ');
      _email = stdin.readLineSync();
      print('Input Designation: ');
      _designation = stdin.readLineSync();

      print('Add Another ? Press Y if Yes anykey if No ');
      continueOrNot = stdin.readLineSync();
      db.employee(_name, _dob, _gender, _status, _email, _address, _contactNum, _designation);
    }
    page();


  }

  @override
  void delete() {
    // TODO: implement delete
    String? name = '';
    String? continueOrNot = 'y';
    while(continueOrNot == 'y'){
      print('-------------Admin Delete Employee--------------');
      print('Input ID to Delete:');
      name = stdin.readLineSync();

      print('Add Another ? Press Y if Yes anykey if No ');
      continueOrNot = stdin.readLineSync();

      print(db.deleteEmployee(name));

    }
    page();

  }

  @override
  void edit() {
    // TODO: implement edit
  }

}