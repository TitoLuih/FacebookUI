import 'package:facebook_ui/facebook_ui/widgets/publication_item.dart';
import 'package:facebook_ui/facebook_ui/widgets/quick_actions.dart';
import 'package:facebook_ui/facebook_ui/widgets/stories.dart';
import 'package:facebook_ui/facebook_ui/widgets/whatonyourmind.dart';
import 'package:facebook_ui/icons/custom_icons.dart';
import 'package:facebook_ui/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/circle_button.dart';
import 'package:faker/faker.dart' as faker_pkg;

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = faker_pkg.Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator.integer(5000);
      final reactionIndex = faker.randomGenerator.integer(
        Reaction.values.length - 1,
      );
      final publication = Publication(
        user: User(avatar: faker.image.loremPicsum(), username: faker.person.name()),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.loremPicsum(),
        commentsCount: random,
        sharedCount: random,
        currentUserReaction: Reaction.values[reactionIndex],
      );
      publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        actions: [
          CircleButton(
            color: const Color(0xffBFBFBF),
            iconData: CustomIcons.search,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: const Color(0xffFE7574),
            iconData: CustomIcons.bell,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: const Color(0xff7BBAFF),
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: const Color(0xff1C86E4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          WhatIsOnYourMind(),
          SizedBox(height: 30),
          QuickActions(),
          SizedBox(height: 30),
          Stories(),
          SizedBox(height: 30),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) =>
                PublicationItem(publication: publications[index]),
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}
