import 'package:flutter/material.dart';
import 'package:smart_home_app/room_detail.dart';
import 'package:smart_home_app/model/room_list.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/main_screen_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color((0xffFFFAF3)),
                        radius: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/avatar.jpg'),
                          radius: 28,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: RichText(
                              text: TextSpan(
                            text: 'Good Morning,',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFFAF3)),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: ' John',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff353331)))
                            ],
                          ))),
                    ],
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Rooms',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  RoomsScroller(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class RoomsScroller extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: roomsList.length,
          itemBuilder: (context, index) {
            final RoomsList rooms = roomsList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Room(room: rooms);
                }));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                width: 140,
                decoration: BoxDecoration(
                    color: Color(0xff353331),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff353331).withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(-2, 5))
                    ]),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12.0),
                      decoration: BoxDecoration(
                          color: Color(0xff8d8985),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 8.0),
                        child: Text(
                          rooms.devices.length.toString() + ' DEVICES',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: rooms.icon,
                            ),
                            Container(
                                width: 100,
                                  child: Text(
                                    rooms.roomName,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffDBDBDB,)),
                                  textAlign: TextAlign.center,),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}