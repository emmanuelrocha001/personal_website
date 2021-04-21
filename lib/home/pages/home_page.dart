import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:personal_website/text_style_templates.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:path_provider/path_provider.dart';
// widgets
import './../../configs.dart';
import '../widgets/profile_pic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyleTemplates = new TextStyleTemplates();
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            elevation: mediaQuery.size.width <
                    Configs.maxWidth + Configs.mediumtSpacing * 2
                ? 0.0
                : 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Configs.defaultRadius),
              ),
            ),
            child: Container(
              width: min(mediaQuery.size.width, Configs.maxWidth),
              margin: const EdgeInsets.all(Configs.defaultSpacing),
              padding: const EdgeInsets.all(Configs.defaultSpacing),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: Configs.profilePicSize,
                        child: Stack(
                          children: [
                            Divider(
                              color: Configs.OFF_WHITE,
                              thickness: 3.0,
                              height: Configs.profilePicSize,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ProfilePic(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(Configs.smallSpacing),
                        child: Text(
                          'EMMANUEL ROCHA',
                          style:
                              textStyleTemplates.xlargeTextStyle(Colors.black),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(Configs.smallSpacing),
                        child: Text(
                          'Software Developer @ Tyler Technologies',
                          style:
                              textStyleTemplates.mediumTextStyle(Configs.GREY),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(Configs.smallSpacing),
                        child: Text(
                          'Co-Founder @ FullBasket',
                          style:
                              textStyleTemplates.mediumTextStyle(Configs.GREY),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(Configs.smallSpacing),
                        child: Text(
                          'B.S. in Computer Science',
                          style:
                              textStyleTemplates.mediumTextStyle(Configs.GREY),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Configs.smallSpacing),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(Configs.defaultSpacing),
                            child: IconButton(
                              icon: Icon(
                                Feather.linkedin,
                                color: Configs.SALMON,
                              ),
                              onPressed: () {
                                launch(
                                    'https://www.linkedin.com/in/emmanuel-rocha-88577311a/');
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.all(Configs.defaultSpacing),
                            child: IconButton(
                              icon: Icon(
                                Feather.github,
                                color: Configs.SALMON,
                              ),
                              onPressed: () {
                                launch('https://github.com/emmanuelrocha001');
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.all(Configs.defaultSpacing),
                            child: TextButton(
                              onPressed: () async {
                                launch(
                                    "https://emmanuelrocha001.github.io/files/Resume.pdf");
                              },
                              child: Text(
                                'CV',
                                style: textStyleTemplates
                                    .defaultBoldTextStyle(Configs.SALMON),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // FittedBox(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(Configs.smallSpacing),
                    //     child: Text(
                    //       'I\'m currently a software developer at Tyler Technolgies working on Re:Search.',
                    //       style:
                    //           textStyleTemplates.defaultTextStyle(Colors.black),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
