import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/blocs.dart';

class PostPage extends StatelessWidget {
  PostPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
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
              BlocProvider.of<PostBloc>(context)
                  .add(PostEvent.savePost(_controller.text));

              Navigator.pop(context);
            },
            child: const Text('Salvar'))
      ],
    );
  }
}
