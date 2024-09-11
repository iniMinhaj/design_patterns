class Youtube {
  List<Subscriber> dartSubs = [];
  List<Subscriber> flutterSubs = [];
  subscribeFlutterMates(Subscriber sub) {
    flutterSubs.add(sub);
  }

  unsubscriberFlutterMates(Subscriber sub) {
    flutterSubs.remove(sub);
  }

  notifyFlutter() {
    for (final sub in flutterSubs) {
      sub.update();
    }
  }

  subscribeDartMates(Subscriber sub) {
    dartSubs.add(sub);
  }

  unsubscriberDartMates(Subscriber sub) {
    dartSubs.remove(sub);
  }

  notifyDart() {
    for (final sub in dartSubs) {
      sub.update();
    }
  }

  uploadFlutterVidoes(String videoTitle) {
    print("Uploaded: $videoTitle");
    notifyFlutter();
  }

  uploadDartVidoes(String videoTitle) {
    print("Uploaded: $videoTitle");
    notifyDart();
  }
}

abstract class Subscriber {
  update();
}

class DartSubscriber implements Subscriber {
  final String subscriberName;
  DartSubscriber(this.subscriberName);

  @override
  update() {
    print("video has been uploaded $subscriberName");
  }
}

class FlutterSubscriber implements Subscriber {
  final String subscriberName;

  FlutterSubscriber(this.subscriberName);

  @override
  update() {
    print("video has been uploaded $subscriberName");
  }
}

void main(List<String> args) {
  Subscriber sub1 = DartSubscriber("Minhaj");
  Subscriber sub2 = DartSubscriber("Islam");
  Subscriber sub3 = FlutterSubscriber("Nirob");
  Subscriber sub4 = FlutterSubscriber("Cryptic");

  Youtube channel = Youtube();
  channel.subscribeDartMates(sub1);
  channel.subscribeDartMates(sub2);
  channel.subscribeFlutterMates(sub3);
  channel.subscribeFlutterMates(sub4);

  channel.uploadDartVidoes("Lets master on dart variable and datatypes");
  print("\n");
  channel.uploadFlutterVidoes("Lets master on flutter top 10 widgets");
}
