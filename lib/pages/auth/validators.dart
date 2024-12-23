String? userIdvalidator(String? userId) {
  if (userId == null) return null;
  if (userId.length < 6) {
    return '유저 아이디는 6자 이상이어야 합니다.';
  }
  return null;
}

String? passwordValidator(String? password) {
  if (password == null) return null;
  if (password.length < 6) {
    return '비밀번호는 6자 이상이어야 합니다.';
  }
  return null;
}

String? emailValidator(String? email) {
  if (email == null) return null;
  final regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  if (!regExp.hasMatch(email)) {
    return '유효하지 않은 이메일 입니다.';
  }
  return null;
}
