import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microblogging/features/auth/domain/entities/entities.dart';

import '../../../../core/services/auth/auth.dart';
import 'pages.dart';
import '../widgets/widgets.dart';
import 'validations.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundAuthWidget(),
          Container(
            color: themeData.backgroundColor.withOpacity(0.2),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Microblogging",
                            style: themeData.textTheme.headline3!.copyWith(
                              color: themeData.primaryColorLight,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                            ],
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.3,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState?.save();
                    
                                  BlocProvider.of<AuthNotifier>(context).add(
                                    AuthEvent.signIn(
                                      SignIn(
                                        email: _emailController.text,
                                        password: _passwordController.text,
                                      ),
                                    ),
                                  );
                                }
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const HomePage()),
                                // );
                              },
                              child: const Text("Entrar"),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.3,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (c, a1, a2) => SignUpPage(),
                                    transitionsBuilder: (c, anim, a2, child) =>
                                        FadeTransition(
                                            opacity: anim, child: child),
                                    transitionDuration:
                                        const Duration(milliseconds: 500),
                                  ),
                                );
                              },
                              child: const Text("Registrar"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
