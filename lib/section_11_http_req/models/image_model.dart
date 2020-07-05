class ImageModel {
  int id;
  String url;
  String title;
  ImageModel(this.id, this.url, this.title);
  ImageModel.fromJason(Map<String, dynamic> parseJason) {
    id = parseJason['id'];
    url = parseJason['url'];
    title = parseJason['title'];
  }
  @override
  String toString() {
    // TODO: implement toString
    return "$id";
  }
}
