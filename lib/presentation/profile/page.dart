import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/design.dart';
import '../../core/di/di.dart';
import '../../core/navigation/router.gr.dart';
import '../../domain/entities.dart';
import '../../domain/usecases/logout.dart';
import '../../domain/usecases/profile.dart';

import '../components/base.dart';
import '../components/buttons.dart';
import '../components/modals.dart';
import 'bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(
        getIt<IGetProfileUseCase>(),
        getIt<ILogoutUseCase>(),
      ),
      child: BlocConsumer<ProfileBloc, ProfileBlocState>(
        listener: (context, state) {
          if (state is ErrorProfileBlocState) {
            showCupertinoDialog(
              barrierDismissible: true,
              context: context,
              builder: (_) => AppAlertDialog(
                title: 'Ошибка',
                description: state.msg,
              ),
            );
          } else if (state is LogoutProfileBlocState) {
            context.router
              ..popUntilRoot()
              ..replace(const AuthRoute());
          }
        },
        buildWhen: (previous, current) =>
            current is! ErrorProfileBlocState &&
            current is! LogoutProfileBlocState,
        builder: (context, state) => state.maybeWhen(
          data: (data) => _Data(data),
          loading: () => const AppScaffold(
            navBar: AppNavBar(title: 'Профиль'),
            body: _Loading(),
          ),
          orElse: () => const AppScaffold(
            body: _Loading(),
          ),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(),
    );
  }
}

class _Data extends StatefulWidget {
  final ProfileEntity data;

  const _Data(this.data, {super.key});

  @override
  State<_Data> createState() => _DataState();
}

class _DataState extends State<_Data> {
  static const int _bottomBarPageIndex = 3;
  static const double _avatarSize = 64;
  static const double _bottomBarItemIconSize = 18;
  static const _nameTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const _emailTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Design.subTextColor,
  );

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileBloc>();

    return AppScaffold(
      navBar: const AppNavBar(title: 'Профиль'),
      body: Column(
        children: [
          Expanded(
            child: CupertinoTabScaffold(
              resizeToAvoidBottomInset: false,
              tabBar: CupertinoTabBar(
                currentIndex: _bottomBarPageIndex,
                items: [
                  BottomNavigationBarItem(
                    label: 'Лента',
                    icon: Image.asset(
                      Assets.feed,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                    ),
                    activeIcon: Image.asset(
                      Assets.feed,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                      color: CupertinoTheme.of(context).primaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Карта',
                    icon: Image.asset(
                      Assets.map,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                    ),
                    activeIcon: Image.asset(
                      Assets.map,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                      color: CupertinoTheme.of(context).primaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Избранное',
                    icon: Image.asset(
                      Assets.favorite,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                    ),
                    activeIcon: Image.asset(
                      Assets.favorite,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                      color: CupertinoTheme.of(context).primaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.profile,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                    ),
                    activeIcon: Image.asset(
                      Assets.profile,
                      width: _bottomBarItemIconSize,
                      height: _bottomBarItemIconSize,
                      color: CupertinoTheme.of(context).primaryColor,
                    ),
                    label: 'Профиль',
                  ),
                ],
              ),
              tabBuilder: (context, index) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Image.asset(
                        Assets.profile,
                        width: _avatarSize,
                        height: _avatarSize,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.data.nickname,
                        style: _nameTextStyle,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        widget.data.email,
                        style: _emailTextStyle,
                      ),
                      const SizedBox(height: 30),
                      FullWidthButton(
                        text: 'Выйти',
                        onTap: () async {
                          final decision = await showCupertinoDialog<bool>(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) => const _LogoutDialog(),
                          );

                          if (decision ?? false) {
                            bloc.logout();
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LogoutDialog extends StatelessWidget {
  const _LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return AppDialog(
      title: 'Выйти из аккаунта',
      description: 'Вы уверены, что хотите выйти из аккаунта?',
      buttons: [
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(
            'Нет',
            style: theme.textTheme.textStyle,
          ),
        ),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(
            'Выйти',
            style: theme.textTheme.textStyle.copyWith(
              color: Design.errorColor,
            ),
          ),
        ),
      ],
    );
  }
}
