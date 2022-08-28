import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Flutter Web\nLanding Page",
            style: TextStyle(
                fontSize: 60, fontWeight: FontWeight.w800, height: 0.9),
          ),
          SizedBox(height: 30),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet mollis lorem, tristique egestas ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam sit amet nulla commodo, sodales sem ut, accumsan lectus. Quisque vel fermentum justo, in viverra sapien. Mauris nec metus id mi tempus vulputate vel porta tortor. Proin ullamcorper ante ut aliquet porttitor. Suspendisse ac ipsum lectus. Nullam auctor tortor et urna vehicula, ac auctor ligula euismod. Morbi neque enim, sodales nec ex eget, venenatis sodales sem. Pellentesque eu blandit tellus.\nIn a risus in metus lacinia vestibulum et id mauris. Quisque ut odio tempor leo interdum finibus. Praesent tincidunt congue ipsum nec interdum. Morbi feugiat est justo, sed elementum lorem efficitur in. Maecenas consectetur ante vitae est pulvinar placerat. Sed sed lacus in est molestie luctus eu eget magna. Quisque semper luctus lacus, at pulvinar arcu dapibus id. In molestie consectetur feugiat.",
            style: TextStyle(fontSize: 21, height: 1.7),
          )
        ],
      ),
    );
  }
}
