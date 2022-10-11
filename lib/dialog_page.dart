import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dialogue extends StatelessWidget {
  final String image;
  final String name;
  final String email;

  Dialogue({required this.image, required this.name, required this.email});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(email,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Divider(
              color: Colors.black,
            thickness: 2,
            indent: 10,
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.faceSmile,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                "Status",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.notifications_off_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Snooze notifications",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
            indent: 10,
            endIndent: 5,
          ),
          const SizedBox(width: 20),
          Row(
            children: [
              const Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Invitation",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.archive_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Archived",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
            indent: 10,
            endIndent: 5,
          ),
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.help_outline_sharp,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Help & feedback",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
            Text(
                "Privacy Policy * Terms of service",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
        ],
      ),
    );
  }
}