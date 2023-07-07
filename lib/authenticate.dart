import 'package:flutter/widgets.dart';

class Authenticate with ChangeNotifier{
/*String  email;
String password;
UserCred({required this.email, required this.password}); */


bool isLoggedIn=false;

bool get inSession=> isLoggedIn;
  Future<void> login(final  username, final  password) async{

await Future.delayed(const Duration(seconds: 2));
if((username=="NewUser")&&(password=="123456789")){

isLoggedIn=true;


      
}
else{
  isLoggedIn=false;
  throw Exception("inavlid email or password");

}
notifyListeners();
  }
void logout(){
  isLoggedIn=false;
}


}