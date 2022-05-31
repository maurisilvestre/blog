import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microblogging/core/services/auth/auth.dart';
import 'package:microblogging/injection_container.dart';

import '../../../microblogging/presentation/bloc/blocs.dart';
import '../../../microblogging/presentation/pages/pages.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [const NewsPage(), PostsPage()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.selectedIndex != current.selectedIndex,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<PostBloc>(),
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniEndTop,
              floatingActionButton: FloatingActionButton(
                onPressed: (() {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text('Atenção!'),
                          content: const Text('Deseja sair do aplicativo?'),
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
                                BlocProvider.of<AuthNotifier>(context)
                                    .add(const AuthEvent.signOut());
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                }),
                child: const Icon(Icons.exit_to_app),
              ),
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(state.selectedIndex == 0 ? 'News' : 'Posts'),
              ),
              body: _pages[state.selectedIndex],
              bottomNavigationBar: BottomNavigationBar(
                onTap: ((value) =>
                    context.read<HomeBloc>().add(HomeEvent.selectIndex(value))),
                currentIndex: state.selectedIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper_outlined),
                    activeIcon: Icon(Icons.newspaper),
                    label: 'News',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: 'Posts',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
