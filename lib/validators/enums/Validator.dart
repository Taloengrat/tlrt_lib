// ignore: file_names
abstract class Validator {}

class ValidatorLength extends Validator {
  int length;

  ValidatorLength(this.length);
}

class ValidatorRequire extends Validator {}
