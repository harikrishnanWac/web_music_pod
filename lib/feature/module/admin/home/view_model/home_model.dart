import 'dart:convert';

SongModels songModelsFromJson(String str) =>
    SongModels.fromJson(json.decode(str));

String songModelsToJson(SongModels data) => json.encode(data.toJson());

class SongModels {
  String songTitle;
  String songId;
  String isPlaying;

  SongModels({
    required this.songTitle,
    required this.songId,
    required this.isPlaying,
  });

  factory SongModels.fromJson(Map<String, dynamic> json) => SongModels(
        songTitle: json["songTitle"],
        songId: json["songId"],
        isPlaying: json["isPlaying"],
      );

  Map<String, dynamic> toJson() => {
        "songTitle": songTitle,
        "songId": songId,
        "isPlaying": isPlaying,
      };
}
