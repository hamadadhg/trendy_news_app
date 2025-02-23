/*
class VideosModel {
  final String title; //title(short text on video)
  final String image; //image in the video(before play the video you show image)
  final String? videoId; //to play this video directly, if the video was found
  final String? channelId; //to visit the channel that upload this video
  VideosModel({
    required this.title,
    required this.image,
    required this.videoId,
    required this.channelId,
  });
  String? get displayVideoFromFullUrl =>
      videoId != null ? 'https://www.youtube.com/watch?v=$videoId' : null;
/*
this method will return String?(String or null(noting)) this method is getter(it can return, setter(not can return just receive parameters, this is oop))
displayVideoFromFullUrl this is name for get method, this is(videoId != null ? 'https://www.youtube.com/watch?v=$videoId' : null;) check and return after check
you use this shape String displayVideo(){return check...}, but the first shape is clean and professional
and you need fullUrl not just videoId(this id the video) but url take you the place make the video play,
*/
  String? get displayChannelFromFullUrl =>
      channelId != null ? 'https://www.youtube.com/channel/$channelId' : null;

  factory VideosModel.fromJson({required Map<String, dynamic> json}) {
    return VideosModel(
      title: json['snippet']['title'] ?? 'There Is No Title For This Video',
      image: json['snippet']['thumbnails']['high']['url'] ?? '',
      videoId:
          json['id']['kind'] == 'youtube#video' ? json['id']['videoId'] : null,
      channelId: json['id']['kind'] == 'youtube#channel'
          ? json['id']['channelId']
          : null,
    );
  }
}
*/
