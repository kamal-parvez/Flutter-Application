import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(continent: 'Asia', location: 'Dhaka'),
    WorldTime(continent: 'America', location: 'New_York'),
    WorldTime(continent: 'Africa', location: 'Cairo'),
    WorldTime(continent: 'Europe', location: 'London'),
  ];

  Future<void> updateTime(index) async {
    WorldTime obj = locations[index];
    await obj.getTime();
    Navigator.pop(context,  {
      'location' : obj.location,
      'time' : obj.time,
      'isDayTime' : obj.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build state run');
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('Choose a Location'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            onTap: (){
              updateTime(index);
            },
            title: Text(locations[index].location),
        )
      )
      ),
    );
  }
}
