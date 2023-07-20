import 'package:flutter/cupertino.dart';

class AppAlertDialog extends StatelessWidget {
  final String title;
  final String description;

  const AppAlertDialog({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        CupertinoButton(
          onPressed: Navigator.of(context).pop,
          child: Text(
            'Ок',
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
        ),
      ],
    );
  }
}

class AppDialog extends StatelessWidget {
  final String title;
  final String description;
  final List<CupertinoButton> buttons;

  const AppDialog({
    super.key,
    required this.title,
    required this.description,
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(description),
      actions: buttons,
    );
  }
}
