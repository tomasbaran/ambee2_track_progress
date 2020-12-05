class ValidateEmail {
  bool test(String email) {
    bool output = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if (!output) throw 'Error #0:\n\t Invalid Email format ($email).';
    return output;
  }
}
