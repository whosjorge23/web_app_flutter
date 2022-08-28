import 'package:flutter/material.dart';

class NavigationeBar extends StatelessWidget {
  const NavigationeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.network("https://i.imgur.com/nrJepgw.png"),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(title: "Episodes"),
              SizedBox(width: 60),
              _NavBarItem(title: "About"),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20),
    );
  }
}
