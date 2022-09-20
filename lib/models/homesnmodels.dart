class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  //map ganru paryo (hamro id sangha json ko id, tesari nai name, desc sabai);👍

  //FirstStep maw named constructor banauni
  //👍factory variable chai jaba logic basis maw initailize garnu parey maw
  //👍factory lay choose garna ni help garcha constructor
  //👍map bata class (Obj)
  factory Item.fromMap(Map<String, dynamic> mapgareko) {
    return Item(
        id: mapgareko["id"],
        name: mapgareko["name"],
        desc: mapgareko["desc"],
        price: mapgareko["price"],
        color: mapgareko["color"],
        image: mapgareko["image"]);
  }

  //encode
//👍class to map
  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': image,
      };
}

class Model {
  static List<Item> item = [];
  // [
  // Item(
  //   id: 1,
  //   name: "Prasid",
  //   desc: "papap",
  //   price: 1111111111111,
  //   color: "red",
  //   image: "this is a image",
  // ),
  // Item(
  //   id: 2,
  //   name: "Shyam",
  //   desc: "papap",
  //   price: 1111111111111,
  //   color: "red",
  //   image: "this is a image",
  // ),
  // Item(
  //   id: 3,
  //   name: "Hari",
  //   desc: "papap",
  //   price: 1111111111111,
  //   color: "red",
  //   image: "this is a image",
  // ),
//];
}
