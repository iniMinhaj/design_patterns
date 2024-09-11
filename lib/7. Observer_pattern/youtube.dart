class Channel {
  List<Subscriber> sub = [];

  subscriber(Subscriber subscriber) {
    sub.add(subscriber);
  }

  unsubscriber(Subscriber subscriber) {
    sub.remove(subscriber);
  }

  upload(String title) {
    print("upload videos: $title");
    notify();
  }

  notify() {
    for (Subscriber subscriber in sub) {
      subscriber.update();
    }
  }
}

class Subscriber {
  String? name;
  Subscriber(this.name);
  Channel channel = Channel();

  update() {
    print("Video uploaded notification recieve $name");
  }
}

main() {
  Channel channel = Channel();
  Subscriber s1 = Subscriber("Minhaj");
  Subscriber s2 = Subscriber("islam");
  Subscriber s3 = Subscriber("Apu");
  Subscriber s4 = Subscriber("Sayed");

  channel.subscriber(s1);
  channel.subscriber(s2);
  channel.subscriber(s3);
  channel.subscriber(s4);

  channel.upload("How to master of programming");
  channel.unsubscriber(s1);
  channel.unsubscriber(s3);

  channel.upload("How to make money");
}
