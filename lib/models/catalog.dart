class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "POCO M2 Pro",
        desc: "Poco M2 pro 6gb 64gb variant",
        price: 15000,
        color: "blue",
        image: "https://m.media-amazon.com/images/I/81w3UsCHEtL._SY606_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id = 0,
    this.name = "",
    this.desc = "",
    this.price = 0,
    this.color = "",
    this.image = "",
  });
}
