class Cat {
  late final String id;
  late final String name;
  late final String title;
  late final String link;
  late final int likeCount;
  late final int replyCount;
  late final DateTime created;

  Cat({
    required this.id,
    required this.name,
    required this.title,
    required this.link,
    required this.likeCount,
    required this.replyCount,
    required this.created,
  });
}
