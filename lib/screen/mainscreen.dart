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
                'Location',
                style: TextStyle(
                  color: constants.textPrimary,
                  decoration: TextDecoration.none,
                  fontSize: 30,
                ),
              )),
          Positioned(
              top: size.height * 0.15,
              child: Text(
                'Date',
                style: TextStyle(
                  color: constants.textPrimary,
                  decoration: TextDecoration.none,
                ),
              )),
          Positioned(
            top: size.height * 0.3,
            child: Container(
              width: size.width * 0.6,
              height: size.height * 0.23,
              color: Colors.greenAccent,
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            child: Text(
              '23',
              style: TextStyle(
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
                value: '23°c',),

                  extraInfo(size: size,
                    icon: Icons.thermostat,
                    name: 'windspeed',
                    value: '2 m/s',),

                  extraInfo(size: size,
                    icon: Icons.percent,
                    name: 'Humidity',
                    value: '23%',),
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
