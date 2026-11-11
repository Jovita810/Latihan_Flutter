import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_flutter/models/team_model.dart';

class TeamController extends GetxController {
  var listTeam = <TeamModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() async {
    try {
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English_Premier_League",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        listTeam.value = teamListFromJson(response.body);
      } else {
        print("Gagal mengambil data: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
