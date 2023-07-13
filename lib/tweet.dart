
class Tweet {
  late int id;
  late String author;
  late String message;

  Tweet(this.id, this.author, this.message);

  Tweet.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.author = json['author'];
    this.message = json['message'];
  }
}