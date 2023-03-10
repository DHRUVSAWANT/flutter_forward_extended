import 'package:flutter/material.dart';
import '../constants.dart' as constants;

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: constants.dayprimary,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              top: size.height * 0.1,
              child: Text(
                '${constants.apiInstance.city}',
                style: TextStyle(

                  color: constants.textPrimary,
                  decoration: TextDecoration.none,
                  fontSize: 40,

                ),
              )),
          Positioned(
              top: size.height * 0.15,
              child: Text(

                constants.apiInstance.date,
                style: TextStyle(
                  fontSize: 25,
                  color: constants.textPrimary,
                  decoration: TextDecoration.none,
                ),
              )),
          Positioned(
            top: size.height * 0.3,
            child: SizedBox(
              width: size.width*0.6,
              height: size.height*0.23,
              child: Image.network('http://openweathermap.org/img/wn/${constants.apiInstance.icon}@2x.png',scale: 0.007,color: Colors.red,),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            child: Text(
              '${constants.apiInstance.temp}°c',
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.16,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Positioned(
            bottom: size.height*0.03,
              child: Row(
            children: [

              extraInfo(size: size,
                icon: Icons.thermostat,
                name: 'MaxTemp',
                value: '${constants.apiInstance.maxTemp}°c',),

                  extraInfo(size: size,
                    icon: Icons.air_rounded,
                    name: 'windspeed',
                    value: '${constants.apiInstance.airSpeed} m/s',),

                  extraInfo(size: size,
                    icon: Icons.percent,
                    name: 'Humidity',
                    value: '${constants.apiInstance.humidity}%',),
                ],
          )),
        ]));
  }
}

class extraInfo extends StatelessWidget {
  extraInfo({
    super.key,
    required this.size, required this.icon, required this.name, required this.value,
  });

  final Size size;
  final IconData icon;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width*0.3,
      child: Column(
        children: [
          Icon(
            icon,),
          Text(
            name,
            style: TextStyle(
              color: constants.textPrimary,
              decoration: TextDecoration.none,
              fontSize: 20,
            ),
          ),
          Text(value,
            style: TextStyle(fontSize: 25,color: constants.textPrimary,
              decoration: TextDecoration.none),),
        ],
      ),
    );
  }
}
