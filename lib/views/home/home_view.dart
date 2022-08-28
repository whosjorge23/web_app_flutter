import 'package:flutter/material.dart';
import 'package:web_app/widgets/call_to_action/call_to_action.dart';
import 'package:web_app/widgets/centered_view/centered_view.dart';
import 'package:web_app/widgets/course_details/course_details.dart';
import 'package:web_app/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(children: [
          NavigationeBar(),
          Expanded(
              child: Row(
            children: [
              CourseDetails(),
              Expanded(
                  child: Center(
                child: CallToAction(title: "Enroll The Course"),
              ))
            ],
          ))
        ]),
      ),
    );
  }
}
