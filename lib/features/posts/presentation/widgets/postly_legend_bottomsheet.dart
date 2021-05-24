import 'package:Postly/core/platform/size_config.dart';
import 'package:flutter/material.dart';

class PostlyLegendBottomsheet extends StatefulWidget {
  const PostlyLegendBottomsheet();

  @override
  _PostlyLegendBottomsheetState createState() => _PostlyLegendBottomsheetState();
}

class _PostlyLegendBottomsheetState extends State<PostlyLegendBottomsheet> {
  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return Container(
      height: _sc.screenHeight / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_sc.screenScaledSize(30)),
          topRight: Radius.circular(_sc.screenScaledSize(30)),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Congratulations!",
              style: _sc.h4Theme,
            ),
          ),
          const Spacer(),
          const Text(
            "🎉",
            style: TextStyle(fontSize: 50),
          ),
          Text(
            "You are a postly legend",
            style: _sc.h5Theme.copyWith(color: Colors.black45),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(_sc.screenScaledSize(30)),
              ),
              color: Theme.of(context).accentColor,
            ),
            child: FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                "Yay!",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          SizedBox(height: _sc.screenScaledSize(50)),
        ],
      ),
    );
  }
}
