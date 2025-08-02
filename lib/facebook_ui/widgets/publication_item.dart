import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeago/timeago.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({super.key, required this.publication});
  final Publication publication;
  String _getEmojiPath(Reaction reaction) {
    switch (reaction) {
      case Reaction.like:
        return 'assets/emojis/like.svg';
      case Reaction.laughing:
        return 'assets/emojis/laughing.svg';
      case Reaction.angry:
        return 'assets/emojis/angry.svg';
      case Reaction.sad:
        return 'assets/emojis/sad.svg';
      case Reaction.shocked:
        return 'assets/emojis/shocked.svg';
      case Reaction.heart:
        return 'assets/emojis/heart.svg';
    }
  }

  String _formatCount(int value) {
    if (value <= 1000) {
      return value.toString();
    } else {
      return ("${(value / 1000).toStringAsFixed(1)}k");
    }
  }

  @override
  Widget build(BuildContext context) {
    const reactions = Reaction.values;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 4,
            color: Color(0xffEBEBEB)
          )
        )
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Avatar(size: 38, asset: publication.user.avatar),
                SizedBox(width: 10),
                Text(publication.user.username),
                Spacer(),
                Text(format(publication.createdAt, locale: 'en_short')),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedNetworkImage(
              imageUrl: publication.imageUrl,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ).copyWith(top: 15),
            child: Text(publication.title, style: TextStyle(
              fontWeight: FontWeight.w500,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...List.generate(reactions.length, (index) {
                      final reaction = reactions[index];
                      final isActive =
                          reaction == publication.currentUserReaction;
                      return Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              _getEmojiPath(reaction),
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(height: 3),
                            Icon(
                              Icons.circle,
                              color: isActive
                                  ? Colors.redAccent
                                  : Colors.transparent,
                              size: 5,
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "${_formatCount(publication.commentsCount)} Comments",
                          ),
                          SizedBox(width: 15),
                          Text(
                            "${_formatCount(publication.sharedCount)} Shares",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
