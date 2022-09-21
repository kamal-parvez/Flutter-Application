import 'package:flutter/material.dart';



class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  Widget build(BuildContext context) {

   data = data.isEmpty ? ModalRoute.of(context)!.settings.arguments as Map : data;
   print(data);
   String imageFile = data['isDayTime'] ? 'day.jpg' : 'night.webp';
   Color fontColor = data['isDayTime'] ?  Colors.black : Colors.white;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$imageFile'),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, '/choose_location');

                    setState(() {
                      data = {
                        'location' : result['location'],
                        'time' : result['time'],
                        'isDayTime': result['isDayTime'],
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),

                const SizedBox(height: 10,),

                Text(
                  data['location'],
                  style: TextStyle(
                    color: fontColor,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),

                SizedBox(height: 10,),

                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 2.0,
                    color: fontColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
