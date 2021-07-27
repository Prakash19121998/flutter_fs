import 'package:email_validator/email_validator.dart';
import 'package:palfinger/strings.dart';

class Validation {
  static String email(email) {
    if (email == null) return Txt.emptyEmail;

    if (!EmailValidator.validate(email)) return Txt.invalidEmail;

    return null;
  }

  static String password(password) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    if (password == null) {
      return Txt.emptyPassword;
    } else {
      if (!regex.hasMatch(password))
        return Txt.invalidPwd;
      else
        return null;
    }
  }

  static String field(value) {
    if (value == null) return Txt.emptyField;

    return null;
  }
}
