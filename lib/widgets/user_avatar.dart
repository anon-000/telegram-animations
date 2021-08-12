import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 12/08/21 at 6:20 am
///

class UserCircleAvatar extends StatelessWidget {
  final String? userId;
  final String? name;
  final String? imageUrl;
  final double? radius;

  const UserCircleAvatar(this.imageUrl, {this.userId, this.name, this.radius});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: userId ?? UniqueKey().toString(),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        fit: BoxFit.cover,
        imageBuilder: (context, provider) => CircleAvatar(
          backgroundImage: provider,
          radius: radius ?? 32,
        ),
        errorWidget: (c, s, d) => AvatarPlaceholder(
          name ?? ' ',
          backgroundColor: Color(0xffF3F3F3),
          radius: radius ?? 32,
          textColor: Colors.black,
        ),
        placeholder: (context, url) => AvatarPlaceholder(
          name ?? ' ',
          backgroundColor: Color(0xffF3F3F3),
          radius: radius ?? 32,
          textColor: Colors.black,
        ),
      ),
    );
  }
}

class AvatarPlaceholder extends StatelessWidget {
  final String? firstLetter;
  final double? radius;
  final Color? backgroundColor, textColor;

  AvatarPlaceholder(this.firstLetter,
      {this.radius, this.backgroundColor, this.textColor})
      : assert(firstLetter != null, firstLetter?.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
    );
  }
}
