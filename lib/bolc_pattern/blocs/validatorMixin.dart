import 'dart:async';

class ValidatorMixin {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError("enter a valid email");
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    password.length > 5
        ? sink.add(password)
        : sink.addError("enter a valid email");
  });
}
