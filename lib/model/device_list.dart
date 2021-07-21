class Device {
  String deviceName;
  int deviceIcon;
  bool isOn;

  Device(
      {required this.deviceName, required this.deviceIcon, required this.isOn});
}

var masterBedroomDevices = [

  Device(
      deviceName: 'Smart TV',
      deviceIcon: 59015,
      isOn: false),
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
  Device(
      deviceName: 'Bluetooth Speaker',
      deviceIcon: 58843,
      isOn: false),
  Device(
      deviceName: 'Air Conditioner',
      deviceIcon: 58159,
      isOn: false),
];

var kitchenDevices = [
  Device(
      deviceName: 'Microwave',
      deviceIcon:58342,
      isOn: false),
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
  Device(
      deviceName: 'Fridge',
      deviceIcon: 58206,
      isOn: true)
];

var diningRoomDevices = [
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true),
];

var childBedroomDevices = [
  Device(
      deviceName: 'Lamp',
      deviceIcon: 58233,
      isOn: true
  ),
  Device(
      deviceName: 'Lamp',
      isOn: true,
      deviceIcon: 58233,

  ),
  Device(
      deviceName: 'Smart TV',
      deviceIcon: 59015,
      isOn: false
  ),
];
