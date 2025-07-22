class ProjectsModel {
  final String projectName;
  final String projectDesc;
  final String projectFinishDate;
  final String projectTech;
  final List<String> projectImagesPath;
  final String gitLink;
  final String videoLink;
  final String coverPic;
  ProjectsModel({
    required this.projectName,
    required this.projectDesc,
    required this.projectImagesPath,
    required this.projectFinishDate,
    required this.projectTech,
    required this.gitLink,
    required this.videoLink,
    required this.coverPic,
  });
}

String baseUrl = "assets/projects_screenshots/";

List<ProjectsModel> projects = [
  ProjectsModel(
    projectName: "Plantopia",
    projectDesc:
        "Plantopia is a cross-platform plant e-commerce application built using Flutter and Node.js. Designed with a clean and user-friendly interface, the app allows users to browse and purchase a wide variety of indoor and outdoor plants. It features categorized plant listings such as Top Picks, Indoor, Outdoor, and All Types, along with a fully functional cart system and secure user authentication. The backend is powered by Node.js and MongoDB, providing robust and real-time data handling through RESTful APIs. Additionally, a custom admin panel built in Flutter enables easy product management. Plantopia offers a smooth and responsive experience across mobile and web platforms.",
    projectImagesPath: [
      "${baseUrl}plantopia_1.jpg",
      "${baseUrl}plantopia_2.jpg",
      "${baseUrl}plantopia_3.jpg",
      "${baseUrl}plantopia_4.jpg",
      "${baseUrl}plantopia_5.jpg",
      "${baseUrl}plantopia_6.jpg",
      "${baseUrl}plantopia_7.jpg",
      "${baseUrl}plantopia_8.jpg",
      "${baseUrl}plantopia_9.jpg",
      "${baseUrl}plantopia_10.jpg",
    ],
    projectFinishDate: "06-11-2024",
    projectTech: "Flutter, NodeJs and Vscode",
    gitLink: "https://github.com/Lovejeetsingh2003/Plantopia",
    videoLink:
        "https://www.linkedin.com/posts/lovejeet-singh-3ba160279_plantopia-flutter-nodejs-activity-7263940422803103744-vqlE?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEPVBD4BeyH-Wqxe3CigAaWgXxUuNj-oSOM",
    coverPic: "${baseUrl}plantopia_cover.jpg",
  ),
  ProjectsModel(
    projectName: "Portfolio",
    projectDesc:
        "Developed a responsive and visually appealing personal portfolio website to showcase my mobile and web development projects. Implemented using Flutter for a smooth cross-platform experience and Github for hosting. The portfolio features a categorized project gallery, interactive UI components, and responsive design optimized for desktop and mobile devices. Integrated dynamic content rendering and ensured fast load times through asset optimization and clean UI architecture.",
    projectImagesPath: [
      "${baseUrl}portfolio_1.png",
      "${baseUrl}portfolio_2.png",
      "${baseUrl}portfolio_3.png",
      "${baseUrl}portfolio_4.png",
      "${baseUrl}portfolio_5.png",
      "${baseUrl}portfolio_6.png",
      "${baseUrl}portfolio_7.png",
    ],
    projectFinishDate: "22-07-2025",
    projectTech: "Flutter and Vscode",
    gitLink: "https://github.com/Lovejeetsingh2003/my_portfolio",
    videoLink:
        "https://www.linkedin.com/posts/lovejeet-singh-3ba160279_portfolio-flutterdeveloper-androiddevelopment-activity-7353457905985064960-nQ9h?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEPVBD4BeyH-Wqxe3CigAaWgXxUuNj-oSOM",
    coverPic: "${baseUrl}portfolio_cover.png",
  ),
];
