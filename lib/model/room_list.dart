import 'package:flutter/material.dart';
import 'package:smart_home_app/model/device_list.dart';

class RoomsList {
  String roomName;
  Icon icon;
  List<Device> devices;

  RoomsList(
      {required this.roomName, required this.icon, required this.devices});
}


var roomsList = [
  RoomsList(
    roomName: 'Master Bedroom',
    icon: Icon(Icons.single_bed_outlined, size: 45, color: Color(0xffDBDBDB)),
    devices: masterBedroomDevices,
  ),
  RoomsList(
    roomName: 'Kitchen',
    icon: Icon(Icons.kitchen, size: 45, color: Color(0xffDBDBDB)),
    devices: kitchenDevices,
  ),
  RoomsList(
    roomName: 'Dining Room',
    icon:
        Icon(Icons.dinner_dining_outlined, size: 45, color: Color(0xffDBDBDB)),
    devices: diningRoomDevices,
  ),
  RoomsList(
    roomName: 'Child Bedroom',
    icon: Icon(Icons.bed, size: 45, color: Color(0xffDBDBDB)),
    devices: childBedroomDevices,
  )
];
