import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/navigation/router.gr.dart';
import '../../domain/usecases/is_logged_in.dart';
import '../../domain/usecases/login.dart';
import '../components/base.dart';
import '../components/modals.dart';
import 'bloc.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthPageBloc>(
      create: (context) => AuthPageBloc(
        getIt<ILoginUseCase>(),
        getIt<IsLoggedInUseCase>(),
      ),
      child: BlocConsumer<AuthPageBloc, AuthPageState>(
        listener: (context, state) {
          if (state is ErrorAuthPageState) {
            showCupertinoDialog(
              barrierDismissible: true,
              context: context,
              builder: (_) => AppAlertDialog(
                title: 'Ошибка',
                description: state.msg,
              ),
            );
            return;
          }
        },
        buildWhen: (previous, current) => current is! ErrorAuthPageState,
        builder: (context, state) {
          if (state is SuccessAuthPageState) {
            context.router.replace(const ProfileRoute());
          }

          return state.maybeMap(
            login: (s) => _Login(),
            loading: (s) => const AppScaffold(
              navBar: AppNavBar(title: 'Авторизация'),
              body: _Loading(),
            ),
            orElse: () => const AppScaffold(
              body: _Loading(),
            ),
          );
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(),
    );
  }
}

class _Login extends StatefulWidget {
  @override
  State<_Login> createState() => _LoginState();
}

class _LoginState extends State<_Login> {
  static const double _topSpaceHeightFactor = 0.4;

  static const _buttonMargin = EdgeInsets.symmetric(horizontal: 16);
  static const _buttonPadding = EdgeInsets.symmetric(
    vertical: 12,
  );

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      navBar: const AppNavBar(title: 'Авторизация'),
      body: Column(
        children: [
          SizedBox(height: screenHeight * _topSpaceHeightFactor),
          Column(
            children: [
              CupertinoTextField(
                controller: _loginController,
                placeholder: 'Логин или почта',
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
              ),
              CupertinoTextField(
                obscureText: true,
                controller: _passwordController,
                placeholder: 'Пароль',
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: _buttonMargin,
                  child: CupertinoButton.filled(
                    onPressed: () {
                      context.read<AuthPageBloc>().login(
                            _loginController.text,
                            _passwordController.text,
                          );
                    },
                    child: const Padding(
                      padding: _buttonPadding,
                      child: Text('Войти'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: _buttonMargin,
                  child: CupertinoButton.filled(
                    onPressed: () {
                      // TODO: implement register
                    },
                    child: const Padding(
                      padding: _buttonPadding,
                      child: Text('Зарегистрироваться'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
