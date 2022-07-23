// ignore: camel_case_types
class userdata {
  String username = '';
  String email = '';
  String first_name = '';
  String last_name = '';
  String birth_date = '';
  String city = '';
  String phone = '';
  int balance = 0;
  String experience = '';
  int id = 0;
  String token = '';

  userdata(dynamic jason) {
    id = jason['_id'] as int;
    username = jason['username'];
    phone = jason['phone'];
    email = jason['email'];
    token = jason['token'];
    first_name = jason['first_name'];
    last_name = jason['last_name'];
    city = jason['city'];
    birth_date = jason['birth_date'];
    experience = jason['experience'];
    balance = jason['balance'] as int;
  }
}
