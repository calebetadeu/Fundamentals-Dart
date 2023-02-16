class FunctionsLesson {
  void getStudent({required String? name, required bool? isMale}) {
    final sexo = isMaleF(isMale);
    final nameofStudent = nameStudent(name);
    final isSexoF = isSexo(sexo);

    print("O seu nome é $nameofStudent e o sexo é $isSexoF");
  }

  void functionFirstClass() {
    var listProducts = {"Geladeira", "Fogão", "Televisão"};
    listProducts.forEach(printElement);
  }

  var functionVariable = (msg) => print("aqui está sua mensagem $msg");

  void anonymousFunction() {
    const list = ['Apple', 'Banana', 'Cherry'];

    list.map((item) {
      return item.toUpperCase();
    }).forEach((item) {
      print("$item: ${item.length}");
    });
  }

  bool isMaleF(bool? isMale) {
    return isMale != null;
  }

  String nameStudent(String? name) {
    if (name != null) {
      return name;
    }
    return "";
  }

  String isSexo(bool isMale) {
    if (isMale) {
      return "Masculino";
    } else {
      return "Feminino";
    }
  }

  void printElement(String element) {
    print(element);
  }
}
