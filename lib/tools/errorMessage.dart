import 'package:real_state_app/Constans/strings.dart';

void message(int statusCode) {
  switch (statusCode) {
    case 400 :
      errorMessage = "Enterd data not found !!";
      break;
    case 401 :
      errorMessage = "phone number or password is incorrect !!";
      break;
    case 0 :
      errorMessage = "Net work error";
      break;
  }
}
