import 'package:json_annotation/json_annotation.dart';
part 'latest_post.g.dart';

@JsonSerializable()
class Items {
  Owners owners;
  int score;
  int last_activity_date;
  int creation_date;
  String post_type;
  int post_id;
  String content_license;
  String link;

  Items(
      {required this.owners,
      required this.score,
      required this.last_activity_date,
      required this.creation_date,
      required this.post_type,
      required this.post_id,
      required this.content_license,
      required this.link});

//fromJson
  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

}

@JsonSerializable()
class Owners {
  int account_id;
  int reputation;
  int user_id;
  String user_type;
  String profile_image;
  String display_name;
  String link;

  Owners(
      {required this.account_id,
      required this.reputation,
      required this.user_id,
      required this.user_type,
      required this.profile_image,
      required this.display_name,
      required this.link});

  //fromJson
  factory Owners.fromJson(Map<String, dynamic> json) =>
      _$OwnersFromJson(json);
}

@JsonSerializable()
class LatestPost {
  final List<Items> latestStackOverflowPost;

  LatestPost({required this.latestStackOverflowPost});

  //fromJson
  factory LatestPost.fromJson(Map<String, dynamic> json) =>
      _$LatestPostFromJson(json);

  //toJson
  Map<String, dynamic> toJson() => _$LatestPostToJson(this);
}