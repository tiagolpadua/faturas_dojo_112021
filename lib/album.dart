class Album {
  final int id;
  final int userId;
  final String title;

  Album(this.id, this.userId, this.title);

  Album.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'];

  @override
  String toString() {
    return 'Album{id: $id, userId: $userId, title: $title}';
  }
}
