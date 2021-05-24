import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/presentation/state/posts_cubit.dart';
import 'package:e2e_arch/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsList extends StatefulWidget {
  final List<PostModel> posts;

  const PostsList({
    this.posts,
    Key key,
  }) : super(key: key);

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) => Container(
        child: BlocListener<PostsCubit, PostsState>(
          listener: (context, state) {
            state.maybeWhen(
              postCreated: (_) => scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
              ),
              orElse: () {},
            );
          },
          child: widget.posts.isEmpty
              ? Center(
                  child: Text(
                  "No posts yet",
                  style: Theme.of(context).textTheme.headline5,
                ))
              : ListView.builder(
                  controller: scrollController,
                  itemCount: widget.posts.length,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (_, i) => PostItem(
                    widget.posts[i],
                    position: i + 1,
                  ),
                ),
        ),
      );
}
