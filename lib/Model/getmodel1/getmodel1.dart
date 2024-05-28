class Getmodel1 {
  int? userId;
  int? id;
  String? title;
  String? body;

  Getmodel1({this.userId, this.id, this.title, this.body});

  factory Getmodel1.fromJson(Map<String, dynamic> json) => Getmodel1(
        userId: json['userId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };
}
