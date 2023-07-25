class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id = "",
    this.name = "",
    this.desc = "",
    this.price = 0,
    this.color = "",
    this.image = "",
  });
}

final products = [
  Item(
      id: "subh001",
      name: "POCO M2 Pro",
      desc: "Poco M2 pro 6gb 64gb variant",
      price: 15000,
      color: "blue",
      image: "https://m.media-amazon.com/images/I/81w3UsCHEtL._SY606_.jpg")
];
