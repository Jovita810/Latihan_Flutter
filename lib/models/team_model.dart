
import 'dart:convert';

List<TeamModel> teamListFromJson(String str) =>
    (json.decode(str)['teams'] as List)
        .map((item) => TeamModel.fromJson(item))
        .toList();

String teamListToJson(List<TeamModel> data) =>
    json.encode(data.map((item) => item.toJson()).toList());

class TeamModel {
  String namaTeam;
  String gambarTeam;
  String deskripsiTeam;
  String namaLiga;

  TeamModel({
    required this.namaTeam,
    required this.gambarTeam,
    required this.deskripsiTeam,
    required this.namaLiga,
  });

  // ADDED: convert one JSON object into TeamModel
  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        namaTeam: json['strTeam'] ?? '',
        gambarTeam: json['strBadge'] ?? '',
        deskripsiTeam: json['strDescriptionEN'] ?? '',
        namaLiga: json['strLeague'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'strTeam': namaTeam,
        'strBadge': gambarTeam,
        'strDescriptionEN': deskripsiTeam,
        'strLeague': namaLiga,
      };
}
