import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:microblogging/injection_container.dart';

import '../../../../core/services/auth/auth.dart';
import '../../domain/entities/entities.dart';
import '../bloc/blocs.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PostBloc>(),
      child: BlocBuilder<PostBloc, PostState>(
          buildWhen: ((previous, current) => (previous.posts != current.posts)),
          builder: (contextPost, state) {
            if (state.posts.isEmpty) {
              contextPost.read<PostBloc>().add(const PostEvent.getPosts());
            }
            if (state.status.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  WidgetsBinding.instance.addPostFrameCallback(
                      (_) => showDialogFunction(contextPost, '', null));
                },
                child: const Icon(Icons.add),
              ),
              body: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/posts_background.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RefreshIndicator(
                    onRefresh: () async => context
                        .read<PostBloc>()
                        .add(const PostEvent.getPosts()),
                    child: ListView(
                      children: state.posts.map((post) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(post.user.imageProfile),
                              title: Text(post.user.name),
                              subtitle: Text(post.message.content),
                              trailing: Text(DateFormat('dd/MM/yyyy')
                                  .format(post.message.createdAt)),
                              onLongPress: () {
                                if (post.user.email ==
                                    BlocProvider.of<AuthNotifier>(context)
                                        .state
                                        .user!
                                        .email) {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return AlertDialog(
                                          title: const Text('Atenção!'),
                                          content: const Text(
                                              'Deseja excluir a publicação?'),
                                          actions: [
                                            ElevatedButton(
                                              child: const Text('Não'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            OutlinedButton(
                                              child: const Text('Sim'),
                                              onPressed: () {
                                                contextPost
                                                    .read<PostBloc>()
                                                    .add(PostEvent.deletePost(
                                                        post));
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      });
                                }
                              },
                              onTap: () {
                                if (post.user.email ==
                                    BlocProvider.of<AuthNotifier>(context)
                                        .state
                                        .user!
                                        .email) {
                                  WidgetsBinding.instance.addPostFrameCallback(
                                      (_) => showDialogFunction(
                                            contextPost,
                                            post.message.content,
                                            post,
                                          ));
                                }
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  showDialogFunction(context, contet, Post? post) {
    _controller.text = contet;
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  autofocus: true,
                  controller: _controller,
                  maxLines: 4,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Insira sua publicação',
                  ),
                  maxLength: 280,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (post == null) {
                        BlocProvider.of<PostBloc>(context)
                            .add(PostEvent.savePost(_controller.text));
                      } else {
                        BlocProvider.of<PostBloc>(context)
                            .add(PostEvent.editPost(post, _controller.text));
                      }
                      _controller.clear();
                      Navigator.pop(context);
                    },
                    child: const Text('Salvar'))
              ],
            ),
          );
        });
  }
}
