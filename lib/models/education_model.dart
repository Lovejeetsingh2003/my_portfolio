import 'package:flutter/material.dart';

class EducationModel {
  final String degree;
  final String school;
  final String from;
  final String address;
  final String to;
  final String? description;
  final Color color;
  final String? percentage;

  EducationModel({
    required this.degree,
    required this.address,
    required this.school,
    required this.from,
    required this.to,
    this.description,
    required this.color,
    this.percentage,
  });
}

List<EducationModel> education = [
  EducationModel(
    degree: "B.Tech in Computer Science",
    school: "DAV University",
    from: "Aug 2021",
    to: "Present",
    address: "Jalandhar, India",
    description: "Currently in the final year.",
    color: Colors.red,
  ),
  EducationModel(
    degree: "Senior Secondary Schooling",
    school: "MLU DAV Collegiete School",
    from: "Apr 2020",
    to: "Mar 2021",
    address: "Phagwara, India",
    description: "Some of the best years in my life.",
    color: Colors.blue,
  ),
];
