import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microblogging/injection_container.dart';

import '../bloc/blocs.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/news_background.jpeg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        BlocProvider(
          create: (context) => sl<PostBloc>(),
          child: BlocBuilder<PostBloc, PostState>(
            buildWhen: ((previous, current) =>
                previous.news != current.news ||
                previous.status != current.status),
            builder: ((context, state) {
              if (state.news.isEmpty) {
                context.read<PostBloc>().add(const PostEvent.getNews());
              }
              if (state.status.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<PostBloc>().add(const PostEvent.getNews()),
                child: ListView(
                  children: state.news.map((news) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(news.user.name),
                          subtitle: Text(news.message.content),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
