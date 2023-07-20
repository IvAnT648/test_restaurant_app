import 'package:flutter/cupertino.dart';

class AppNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;

  const AppNavBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 5,
      ),
      border: null,
      middle: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final Color backgroundColor = CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }
}

class AppScaffold extends StatelessWidget {
  final ObstructingPreferredSizeWidget? navBar;
  final Widget body;

  const AppScaffold({super.key, this.navBar, required this.body});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: navBar,
      child: body,
    );
  }
}
