import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';


class WorldTime {

  String location;
  String continent;
  late String time;
  String url = 'http://worldtimeapi.org/api/timezone/';
  late bool isDayTime;


  WorldTime({required this.continent, required this.location});

  Future<void> getTime()async{

    try {
      Response response = await get(Uri.parse(url + continent + '/' + location));
      Map data = jsonDecode(response.body);
      print(data);

      //Get time from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      print('datetime :    $datetime');
      print('Offset : $offset');


      //Parsing
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));
      print(now);
      time =  DateFormat.jm().format(now);
      isDayTime = now.hour >= 6 && now.hour <= 18 ? true : false;
    }
    catch(e){
      print('Error while getting time : $e');
      time = 'NA';

      //try again if failed
      await getTime();
    }
  }
}