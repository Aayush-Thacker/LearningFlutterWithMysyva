import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location; //location name for the UI
  late String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //url for the api endpoint
  late bool isDayTime; //true if it's day and false if night

  WorldTime({required this.url, required this.location, required this.flag});

  Future<void> getTime() async {
    try {
      var response = await http
          .get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      print('Response: ${response.statusCode}}');
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('there was an error: $e');
      time = 'Could not get time data.';
    }
  }
}
