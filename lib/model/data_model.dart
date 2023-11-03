class DataModel {
  String name;
  String img;
  int price;
  int star;
  int people;
  String description;
  String location;

  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.star,
    required this.people,
    required this.location,
    required this.description,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json['name'] as String,
      img: json['img'] as String,
      price: json['price'] as int,
      star: json['star'] as int,
      people: json['people'] as int,
      location: json['location'] as String,
      description: json['description'] as String,
    );
  }
}
