import 'package:flutter/material.dart';
import 'package:portfolio_web_app/features/main/models/article_model.dart';
import 'package:portfolio_web_app/features/main/models/project_model.dart';
import 'package:portfolio_web_app/features/main/models/work_model.dart';

class User {
  late final String userName;
  late final String name;
  late final String position;
  late final String positionDescription;
  late final String gitHub;
  late final String linkedin;
  late final String telegram;
  late final String instagram;
  late final List<ArticleModel> articles;
  late final String about;
  late final String picture;
  late final List<String> frontEnd;
  late final List<String> backEnd;
  late final List<String> styles;
  late final List<String> devOps;
  late final List<WorkModel> works;
  late final DateTimeRange workExperience;
  late final List<ProjectModel> projects;

  User({
    required this.userName,
    required this.name,
    required this.position,
    required this.positionDescription,
    required this.gitHub,
    required this.linkedin,
    required this.telegram,
    required this.instagram,
    required this.articles,
    required this.about,
    required this.picture,
    required this.frontEnd,
    required this.styles,
    required this.backEnd,
    required this.devOps,
    required this.works,
    required this.workExperience,
    required this.projects,
  });
}

final User Floyd = User(
  userName: 'floyd.iii',
  name: 'Wilcox Floyd',
  position: 'Front-end Developer',
  positionDescription:
      "My goal is to write maintainable, clean\nand understandable code to process\ndevelopment was enjoyable.",
  gitHub: '',
  linkedin: '',
  telegram: '',
  instagram: '',
  articles: [],
  about:
      "Hello! I'm Floyd, I'm a full-stack developer. More than 5 years experience.",
  picture: '',
  frontEnd: ['HTML', 'CSS', 'JavaScript', 'Dart', 'Flutter'],
  styles: ['Tailwind CSS', 'Bootstrap', 'CSS'],
  backEnd: [],
  devOps: ['Git', 'GitHub', 'GitLab'],
  works: [
    WorkModel(
      startYear: '2025',
      timeRange: DateTimeRange(start: DateTime(2025), end: DateTime(2025)),
      company: 'Odyss',
      work: 'Front-end Developer',
      languages: ['Dart', 'Python'],
    ),
    WorkModel(
      startYear: '2025',
      timeRange: DateTimeRange(start: DateTime(2025), end: DateTime(2025)),
      company: 'Cozzy Connect',
      work: 'Ass. Front-end Developer',
      languages: ['Dart'],
    ),
    WorkModel(
      startYear: '2025',
      timeRange: DateTimeRange(start: DateTime(2025), end: DateTime(2025)),
      company: 'Saferoute',
      work: 'Front-end Developer',
      languages: ['Dart', 'Python'],
    ),
  ],
  workExperience: DateTimeRange(start: DateTime(2025, 01), end: DateTime.now()),
  projects: [],
);
