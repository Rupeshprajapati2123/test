class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Test 1",
        desc: "UPSC",
        points: 20,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMy7SXmFVFX2qyTV3F5c3yx9rTdDn5QeBnxWKjeppL&s"),
    Item(
        id: 2,
        name: "Test 2",
        desc: "UPSC",
        points: 20,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMy7SXmFVFX2qyTV3F5c3yx9rTdDn5QeBnxWKjeppL&s"),
    Item(
        id: 3,
        name: "Test 3",
        desc: "UPSC",
        points: 20,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMy7SXmFVFX2qyTV3F5c3yx9rTdDn5QeBnxWKjeppL&s"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num points;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.points,
      required this.color,
      required this.image});
}
