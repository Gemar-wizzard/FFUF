class DataBase{

  static final List<Map<String, dynamic>> orderLines = List.empty(growable: true);
  static final List<Map<String,String>> account = [{'name':'admin','username':'admin','password':'admin'}];

  void employee(String? name, String? dob,
                String? gender, String? status,
                String? email, String? address,
                String? number, String? desig){

    orderLines.add({ 'name'  : '$name',
      'Date Of Birth' : '$dob',
      'Gender'  : '$gender',
      'Status' : '$status',
      'Email' : '$email',
      'Address': '$address',
      'Contact Number':'$number',
      'Designation':'$desig',
    });

    print(orderLines);
  }
  String? deleteEmployee(String? name){
    String? nameToDelete = '';
    for (var map in orderLines) {
      if (map?.containsKey('name') ?? false) {
        if (map!['name'] == name) {
          nameToDelete = name;
        }else{
          nameToDelete = map!['name'];
        }
      }
    }
    return nameToDelete;
  }

  String? authentication(String? user_name, String? pass_word){

    String? name = '';

    for (var map in account) {
      if (map?.containsKey('name') ?? false) {
        if (map!['name'] == 'admin') {
          name = 'Admin';
        }else if (map!['userName'] == user_name){
          name = user_name;
        }
      }
    }
    return name;
  }


  bool signUp(String? name,String? username,String? password){
    account.add({
      'name':'$name',
      'userName':'$username',
      'password':'$password',
    });

    print(account);
    return true;
  }


}