import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/project.controller.dart';

class ProjectScreen extends GetView<ProjectController> {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          surfaceTintColor: whiteColor,
          title: CustomText.h2('Project'),
          centerTitle: true,
          bottom: TabBar(
            labelColor: blackColor,
            labelStyle: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w600, // SemiBold
              letterSpacing: -0.6,
              height: 1.2,
            ),
            unselectedLabelColor: Colors.grey,
            indicatorColor: primaryColor,
            indicatorWeight: 1,
            dividerColor: borderColor,
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'Complete'),
              Tab(text: 'Failed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngoingProjects(), // Replace with actual content widget for ongoing projects
            CompleteProjects(), // Replace with actual content widget for completed projects
            FailedProjects(), // Replace with actual content widget for failed projects
          ],
        ),
      ),
    );
  }
}

// Sample widgets for each tab content
class OngoingProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/project_not_found.png'),
          SizedBox(
            height: 34,
          ),
          CustomText.h1('Project not found'),
          SizedBox(
            height: 13,
          ),
          CustomText.p('Please Apply the project first'),
        ],
      ),
    );
  }
}

class CompleteProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/project_not_found.png'),
          SizedBox(
            height: 34,
          ),
          CustomText.h1('Project not found'),
          SizedBox(
            height: 13,
          ),
          CustomText.p('Please Apply the project first'),
        ],
      ),
    );
  }
}

class FailedProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/project_not_found.png'),
          SizedBox(
            height: 34,
          ),
          CustomText.h1('Project not found'),
          SizedBox(
            height: 13,
          ),
          CustomText.p('Please Apply the project first'),
        ],
      ),
    );
  }
}
