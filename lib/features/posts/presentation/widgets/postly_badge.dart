import 'package:Postly/core/platform/size_config.dart';
import 'package:flutter/material.dart';

class PostlyBadge extends StatelessWidget {
  final int points;

  const PostlyBadge(
    this.points, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);
    const circleWidth = 35.0;

    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          // height: sc.screenScaledSize(30),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.all(Radius.circular(sc.screenScaledSize(15))),
          ),
          padding: EdgeInsets.only(
            left: sc.screenScaledSize(10),
            right: sc.screenScaledSize(10),
            top: sc.screenScaledSize(1),
            bottom: sc.screenScaledSize(5),
          ),
          child: Row(
            children: [
              Text(
                "${points < 6 ? 'Beginner 🤓' : points < 10 ? 'Intermediate 😌' : points < 17 ? 'Professional 😎' : 'Legend🔥'}",
                style: sc.body1Theme.copyWith(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: sc.screenScaledSize(18)),
            ],
          ),
        ),
        Positioned(
          right: -sc.screenScaledSize(12),
          // bottom: 0,
          top: -sc.screenScaledSize(3),
          child: Container(
            width: sc.screenScaledSize(circleWidth),
            height: sc.screenScaledSize(circleWidth),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(sc.screenScaledSize(50))),
            ),
            padding: EdgeInsets.all(sc.screenScaledSize(10)),
            child: FittedBox(
              child: Text(
                "${points}",
                textAlign: TextAlign.center,
                style: sc.body1Theme.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
