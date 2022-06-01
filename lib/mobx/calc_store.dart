import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calc_store.g.dart';

// ignore: library_private_types_in_public_api
class CalcStore = _CalcStoreBase with _$CalcStore;

abstract class _CalcStoreBase with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();

  @observable
  String userInput = "";

  @observable
  String answer = "";

  @action
  void clean() {
    userInput = "";
    answer = "";
  }

  @action
  void delete() {
    userInput =
        userInput.isEmpty ? "" : userInput.substring(0, userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    userInput += inputChar;
  }

  @action
  void result() {
    try {
      Expression exp = parser.parse(userInput);

      answer = exp.evaluate(EvaluationType.REAL, cm).toString();
    } catch (e) {
      answer = "Error";
    }
  }
}
