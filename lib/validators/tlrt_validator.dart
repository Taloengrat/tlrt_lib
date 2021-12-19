import 'enums/Validator.dart';

class TlrtValidation {
  List<Validator> validators = [];
  final String value;

  TlrtValidation({
    required this.validators,
    required this.value,
  });

  String? validate() {
    print('object');
    validators.map((e) {
      if (e is ValidatorRequire) {
        if (value.isEmpty) {
          print('value is require');
          return 'value is require';
        }

        return null;
      } else if (e is ValidatorLength) {
        if (value as int <= e.length) {
          print('value less than ${e.length}');
          return 'value less than ${e.length}';
        }

        return null;
      }
    });

    return null;
  }
}
