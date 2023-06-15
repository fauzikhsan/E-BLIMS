class BukuPopuler {
  String namabuku;
  String creator;
  String imageAsset;
  // String description;

  BukuPopuler({
    required this.creator,
    required this.namabuku,
    required this.imageAsset,
    // required this.description
  });
}

class BukuLainnya {
  String namabuku;
  String creator;
  String imageAsset;
  String rating;
  BukuLainnya(
      {required this.namabuku, required this.creator, required this.rating, required this.imageAsset});
}
