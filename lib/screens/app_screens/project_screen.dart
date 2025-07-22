import 'package:flutter/material.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/models/projects_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  final bool isMobile;
  const ProjectScreen({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Column(
            children: [
              TopBar(title: "Projects", isMobile: isMobile),
              SizedBox(height: 20),
              Column(
                children: [
                  ...List.generate(
                    projects.length,
                    (index) => Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient:
                            colorPalette[currentState.knobSelected].gradient,
                        border: Border.all(
                          width: 3,
                          color: colorPalette[currentState.knobSelected].color,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                projects[index].projectName,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: size.width / 1.5,
                            child: Image.asset(
                              projects[index].coverPic,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Finish Date : ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                projects[index].projectFinishDate,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Technology or Languages Used : ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),

                          Row(
                            children: [
                              Text(
                                projects[index].projectTech,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Description : ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Text(
                                    projects[index].projectDesc,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,

                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Github Link : ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              TextButton(
                                onPressed: () async {
                                  final url = Uri.parse(
                                    projects[index].gitLink,
                                  );
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Could not launch ${projects[index].gitLink}',
                                        ),
                                      ),
                                    );
                                  }
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,

                                  side: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Press to visit repository",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Video Link : ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              TextButton(
                                onPressed: () async {
                                  final url = Uri.parse(
                                    projects[index].videoLink,
                                  );
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Could not launch ${projects[index].videoLink}',
                                        ),
                                      ),
                                    );
                                  }
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,

                                  side: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Press to watch video",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 5),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  projects[index].projectImagesPath.length,
                                  (index2) => Container(
                                    margin: const EdgeInsets.all(8),
                                    width: 200,
                                    height: 400,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        projects[index]
                                            .projectImagesPath[index2],
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Scroll To See All Images",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
