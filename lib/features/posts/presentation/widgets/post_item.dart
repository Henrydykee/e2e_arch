import 'dart:math';

import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final PostModel post;
  final int position;

  const PostItem(
    this.post, {
    this.position,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    const colors = [
      Color(0xfff5edff),
      Color(0xffebfff1),
      Color(0xfffaf4e3),
      Color(0xfffae3e1),
      Color(0xffe3e7fc),
      Color(0xfffff8e1),
      Color(0xffdbfff0),
      Color(0xfffff5f0),
      Color(0xfffef0ff),
    ];

    final backgroundColor = colors[Random(position).nextInt(colors.length)];

    return Container(
      padding: EdgeInsets.all(_sc.screenScaledSize(20)),
      margin: EdgeInsets.all(_sc.screenScaledSize(20)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: backgroundColor,
            blurRadius: 15.0,
            spreadRadius: 1,
          )
        ],
        // border: Border.all(color: Theme.of(context).accentColor),
        borderRadius: BorderRadius.all(Radius.circular(_sc.screenScaledSize(15))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${position ?? ''}${position != null ? '. ' : ''}${post.title}",
            style: _sc.h5Theme.copyWith(color: darken(backgroundColor)),
          ),
          SizedBox(height: _sc.screenScaledSize(10)),
          Text(
            "${post.body}",
            style: _sc.body2Theme,
          ),
          SizedBox(height: _sc.screenScaledSize(20)),
          // const Divider(),
        ],
      ),
    );
  }

  Color darken(Color c, [int percent = 10]) => HSLColor.fromColor(c).withSaturation(0.5).withLightness(0.75).toColor();
}
