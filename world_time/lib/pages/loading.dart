

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setUpWorldTime() async {
    WorldTime worldTime = WorldTime(continent: 'Asia', location: 'Dhaka');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : worldTime.location,
      'time' : worldTime.time,
      'isDayTime' : worldTime.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        // child: Image.asset('assets/day.jpg'),
        child: SpinKitRing(
          color: Colors.blue,
        ),
      ),
    );
  }
}
