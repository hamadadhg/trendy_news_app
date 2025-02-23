/*
class NewsModel {
  final String image;
  final String title;
  final String description;
  NewsModel({
    required this.image,
    required this.title,
    required this.description,
  });
  factory NewsModel.fromJson({required Map<String, dynamic> json}) {
    return NewsModel(
      image: json['image_url'] ?? '',
      title: json['title'] ?? 'There Is No Title',
      description: json['description'] ?? 'There Is No Descreption',
    );
//you determined the all attributes will take value this key, but you access value because access value in service and the value results key is List so can't assign to attributes directly, but in this file you determined from who's key will take a value
//you create NewsModelObject example in NewsView so Text(newsModel.title) just you don't need to check(..??'') in Text Widget because i check in model
  }
}
*/
