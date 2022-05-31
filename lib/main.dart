import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:microblogging/features/home/presentation/pages/home_page.dart';
import 'package:microblogging/injection_container.dart';
import 'core/services/auth/auth.dart';
import 'features/auth/presentation/pages/pages.dart';
import 'features/home/presentation/bloc/blocs.dart';
import 'features/microblogging/presentation/bloc/blocs.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await di.init();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<AuthNotifier>(
      create: (context) => AuthNotifier(sl()),
    ),
    BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
    ),
    BlocProvider<PostBloc>(
      create: (context) => PostBloc(sl(), sl()),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    late var accent = Colors.blue.shade900;
    late var accentSecond = Colors.blue;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              accent,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              accent,
            ),
          ),
        ),
        errorColor: Colors.redAccent,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: accent),
          filled: true,
          fillColor: Colors.blue.shade50,
          labelStyle: TextStyle(color: accent),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              color: accentSecond,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: accent),
          ),
        ),
      ),
      home: BlocBuilder<AuthNotifier, AuthState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            if (state.status.isInitial) {
              context.read<AuthNotifier>().add(
                    const AuthEvent.checkAuthentication(),
                  );
            }
            if (state.status.isUnauthenticated && state.error.isNotEmpty) {
              var snackBar = SnackBar(
                content: Text(state.error),
              );

              Future.delayed(Duration.zero, () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
            }
            // showDialog(
            //     context: context,
            //     builder: (_) {
            //       return AlertDialog(
            //         title: const Text('Atenção'),
            //         content: Text(
            //           state.error,
            //         ),
            //         actions: [
            //           ElevatedButton(
            //             onPressed: () => Navigator.pop(context),
            //             child: const Text(
            //               'Confirmar',
            //             ),
            //           )
            //         ],
            //       );
            //     });
            // }
            if (state.status.isUnauthenticated || state.status.isInitial) {
              return SignInPage();
            } else {
              return const HomePage();
            }
          }),
    );
  }
}
