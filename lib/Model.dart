class Model {
  String title;
  String cafeName;
  String cafeRating;
  String cafeLocation;
  String time;

  String get getTitle => title;
  String get getcafeName => cafeName;
  String get getcafeRating => cafeRating;
  String get getcafeLocation => cafeLocation;
  String get gettime => time;

  Model(
      this.title, this.cafeName, this.cafeRating, this.cafeLocation, this.time);
}
