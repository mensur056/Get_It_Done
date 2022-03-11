class Item {
  final String title;
  bool isDone;

  Item({ this.title, this.isDone = false});

  void trueFalse() {
    isDone = !isDone;
  }

  Item.fromMap(Map<String, dynamic>map)
      :title=map['title'],
        isDone=map['isDone'];
  Map<String,dynamic>toMap()=>{'title':title,'isDone':isDone};
}
