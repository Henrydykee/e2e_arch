import 'package:e2e_arch/core/platform/size_config.dart';
import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/presentation/state/posts_cubit.dart';
import 'package:e2e_arch/features/user/presentation/state/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  TextEditingController titleController = TextEditingController();
  FocusNode titleNode = FocusNode();
  TextEditingController bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleNode.requestFocus();
  }

  bool get canCreate =>
      titleController.text.isNotEmpty && bodyController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: canCreate
            ? Theme.of(context).primaryColor
            : Theme.of(context).disabledColor,
        onPressed: !canCreate
            ? null
            : () {
                context.read<PostsCubit>().createPost(
                      PostModel(
                        id: 0,
                        userId: context.read<UserCubit>().state.payload.user.id,
                        title: titleController.text,
                        body: bodyController.text,
                      ),
                    );
                Navigator.of(context).pop();
              },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Icon(Icons.send),
      ),
      body: Container(
        padding: EdgeInsets.all(sc.screenScaledSize(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(sc.screenScaledSize(30)),
            topRight: Radius.circular(sc.screenScaledSize(30)),
          ),
          color: Theme.of(context).accentColor,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "What's on your mind?",
                style: sc.h4Theme.copyWith(color: Colors.white),
              ),
              IconButton(
                splashColor: Theme.of(context).primaryColor,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: sc.screenScaledSize(40)),
          // const Text("Title"),
          TextFormField(
            controller: titleController,
            focusNode: titleNode,
            onChanged: (_) => setState(() {}),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            decoration: const InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: sc.screenScaledSize(50)),
          TextFormField(
            controller: bodyController,
            onChanged: (_) => setState(() {}),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            maxLines: 6,
            decoration: const InputDecoration(
              hintText: "Body",
              hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
              border: InputBorder.none,
            ),
          ),
        ]),
      ),
    );
  }
}
