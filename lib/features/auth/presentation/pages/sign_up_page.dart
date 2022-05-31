import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microblogging/features/auth/presentation/bloc/sign_up_bloc.dart';
import 'package:microblogging/injection_container.dart';

import '../../../../core/services/auth/auth.dart';
import '../../domain/entities/entities.dart';
import '../widgets/widgets.dart';
import 'validations.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          const BackgroundAuthWidget(),
          Container(
            color: themeData.backgroundColor.withOpacity(0.2),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: BlocProvider(
                  create: (context) => sl<SignUpBloc>(),
                  child: BlocBuilder<SignUpBloc, SignUpState>(
                      buildWhen: (previous, current) =>
                          previous.selectedIndex != current.selectedIndex,
                      builder: (context, state) {
                        return Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Criar conta",
                                  style:
                                      themeData.textTheme.headline3!.copyWith(
                                    color: themeData.primaryColorLight,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                TextFormField(
                                  controller: _nameController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return Validations().fieldRequired(value);
                                  },
                                  autofocus: true,
                                  autocorrect: false,
                                  decoration: const InputDecoration(
                                    hintText: 'Nome',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: _emailController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return Validations().fieldRequired(value);
                                  },
                                  autofocus: true,
                                  autocorrect: false,
                                  decoration: const InputDecoration(
                                    hintText: 'E-mail',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  controller: _passwordController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return Validations().fieldRequired(value);
                                  },
                                  autocorrect: false,
                                  decoration: const InputDecoration(
                                    hintText: 'Senha',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  controller: _passwordConfirmController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if (_passwordController.text != value) {
                                      return 'As senhas não são iguais';
                                    }
                                    return Validations().fieldRequired(value);
                                  },
                                  autocorrect: false,
                                  decoration: const InputDecoration(
                                    hintText: 'Confirme a senha',
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    buildImage(context, state, 1),
                                    const SizedBox(width: 10),
                                    buildImage(context, state, 2),
                                    const SizedBox(width: 10),
                                    buildImage(context, state, 3),
                                    const SizedBox(width: 10),
                                    buildImage(context, state, 4),
                                  ],
                                ),
                                const SizedBox(height: 40),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState?.save();
                                        context.read<AuthNotifier>().add(
                                              AuthEvent.signUp(
                                                SignUp(
                                                  email: _emailController.text,
                                                  name: _nameController.text,
                                                  password:
                                                      _passwordController.text,
                                                  imageProfile:
                                                      'assets/images/user${state.selectedIndex}.jpeg',
                                                ),
                                              ),
                                            );

                                        Navigator.pop(context);
                                      }
                                    },
                                    child: const Text("Salvar"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildImage(
      BuildContext context, SignUpState state, int index) {
    return GestureDetector(
      onTap: (() =>
          context.read<SignUpBloc>().add(SignUpEvent.selectIndex(index))),
      child: Image.asset(
        'assets/images/user$index.jpeg',
        height: 100,
        color:
            state.selectedIndex == index ? Colors.white.withOpacity(0.5) : null,
        colorBlendMode: BlendMode.hardLight,
      ),
    );
  }
}
