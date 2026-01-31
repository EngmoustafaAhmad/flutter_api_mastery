import 'custom_exception.dart';

void main() {
  try {
    validateEmail("testgmail.com");
  } catch (e) {
    print(e);
  }
}

void validateEmail(String email) {
  if (!email.contains("@")) {
    throw InvalidEmailException("Invalid email format");
  }
  print("Email is valid");
}
