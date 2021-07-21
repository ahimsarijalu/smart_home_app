import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/model/device_list.dart';
import 'package:smart_home_app/model/room_list.dart';

class Room extends StatelessWidget {
  final RoomsList room;

  Room({required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/room_detail_background.jpg'),
          fit: BoxFit.fill,
        )),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff353331),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xff8d8985),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        room.roomName,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Devices(room: room)
            ],
          ),
        ),
      ),
    );
  }
}

class Devices extends StatelessWidget {
  final RoomsList room;

  Devices({required this.room});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: room.devices.map((device) {
          return DeviceInfo(device: device);
        }).toList(),
      ),
    );

    //
  }
}

class DeviceInfo extends StatefulWidget {
  final Device device;

  DeviceInfo({required this.device});

  @override
  _DeviceInfoState createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  bool state = true;

  var lightColor = Color(0xffDBDBDB);

  var darkColor = Color(0xff353331);

  late Device device;

  @override
  void initState() {
    super.initState();
    this.device = widget.device;
    state = device.isOn;
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          state = !state;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        height: 140,
        decoration: BoxDecoration(
            color: state ? lightColor : darkColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff353331).withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(-2, 5))
            ]),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    child: Icon(
                      IconData(widget.device.deviceIcon,
                          fontFamily: 'MaterialIcons'),
                      size: 45,
                      color: state ? darkColor : lightColor,
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.device.deviceName,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: state ? darkColor : lightColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
