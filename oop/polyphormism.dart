abstract class Khan {
  void printMyName();
}

class SahrukhKhan extends Khan {
  @override
  void printMyName() {
    print('My name is khan');
  }
}

class AmirKhan extends Khan {
  @override
  void printMyName() {
    print('My name is amir');
  }
}

class SalamKhan extends Khan {
  @override
  void printMyName() {
    print('My name is Salman');
  }
}

void main() {
  Khan abc = AmirKhan();
  Khan ak = SahrukhKhan();
  Khan sk = SalamKhan();

  abc.printMyName();
  ak.printMyName();
  sk.printMyName();
}
