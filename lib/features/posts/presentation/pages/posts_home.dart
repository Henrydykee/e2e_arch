import 'package:e2e_arch/core/platform/size_config.dart';
import 'package:e2e_arch/features/posts/presentation/state/posts_cubit.dart';
import 'package:e2e_arch/features/posts/presentation/widgets/postly_badge.dart';
import 'package:e2e_arch/features/posts/presentation/widgets/postly_legend_bottomsheet.dart';
import 'package:e2e_arch/features/posts/presentation/widgets/posts_list.dart';
import 'package:e2e_arch/features/user/presentation/state/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_post_page.dart';

class PostsHome extends StatelessWidget {
  const PostsHome({Key key}) : super(key: key);

  Future<void> _showLegendaryDialog(BuildContext context) async =>
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        builder: (_) => const PostlyLegendBottomsheet(),
      );

  Future<void> _showNewPostSheet(BuildContext context) async =>
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (_) => const CreatePostPage(),
      );

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: BlocBuilder<UserCubit, UserState>(
        builder: (_, userState) => userState.maybeWhen(
          error: (_) => const SizedBox(),
          orElse: () => FloatingActionButton.extended(
            onPressed: () => _showNewPostSheet(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            label: Row(
              children: const [
                Icon(Icons.add),
                SizedBox(width: 5),
                Text("Create post"),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<UserCubit, UserState>(
          buildWhen: (_, newState) => newState.maybeWhen(
            orElse: () => false,
            error: (_) => true,
          ),
          builder: (_, userState) => userState.maybeWhen(
            error: (_) => Center(
                child: Text(
              userState.payload.error,
              style: Theme.of(context).textTheme.headline5,
            )),
            orElse: () => BlocListener<PostsCubit, PostsState>(
              listener: (ctx, state) {
                state.maybeWhen(
                  loaded: (_) {
                    if (context.read<UserCubit>().state.payload.user.points >
                        16) {
                      _showLegendaryDialog(ctx).then(
                        (_) => context.read<UserCubit>().resetPoints(),
                      );
                    }
                  },
                  orElse: () {},
                );
              },
              child: Column(
                children: [
                  BlocBuilder<UserCubit, UserState>(
                    builder: (_, state) => state.maybeWhen(
                      loading: (_) => const CircularProgressIndicator(),
                      loaded: (payload) => Container(
                        padding: EdgeInsets.all(sc.screenScaledSize(20)),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.shade200)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: " Hello, ",
                                    style: sc.h4Theme.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(text: "${payload.user.username}!"),
                                ]),
                                style: sc.h4Theme,
                              ),
                            ),
                            PostlyBadge(payload.user.points),
                          ],
                        ),
                      ),
                      orElse: () => const SizedBox(),
                    ),
                  ),

                  // POSTS
                  Expanded(
                    child: BlocBuilder<PostsCubit, PostsState>(
                      builder: (_, state) => state.maybeWhen(
                        loading: (_) =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: (payload) => PostsList(posts: payload.posts),
                        creatingPost: (payload) =>
                            PostsList(posts: payload.posts),
                        postCreated: (payload) =>
                            PostsList(posts: payload.posts),
                        orElse: () => const SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
